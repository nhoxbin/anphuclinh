<?php

namespace App\Http\Controllers\Auth;

/**
 * Register Controller
 *
 * @package TokenLite
 * @author Softnio
 * @version 1.1.2
 */

use App\Helpers\PointCalc;
use Cookie;
use Carbon\Carbon;
use App\Models\User;
use App\Models\Referral;
use App\Models\UserMeta;
use App\Helpers\ReCaptcha;
use App\Helpers\UserPanel;
use Illuminate\Http\Request;
use App\Notifications\ConfirmEmail;
use App\Http\Controllers\Controller;
use App\Models\Province;
use App\Models\Role;
use App\Models\Transaction;
use Illuminate\Support\Facades\Hash;
use Illuminate\Auth\Events\Registered;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Str;

class RegisterController extends Controller
{
    use RegistersUsers, ReCaptcha;

    protected $redirectTo = '/register/success';

    public function __construct()
    {
        $this->middleware('guest');
    }

    public function showRegistrationForm()
    {
        $provinces = Province::all();
        return view('auth.register', compact('provinces'));
    }

    /**
     * Handle a registration request for the application.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        if (recaptcha()) {
            $this->checkReCaptcha($request->recaptcha);
        }

        $this->validator($request->all())->validate();

        event(new Registered($user = $this->create($request->all())));

        $this->guard()->login($user);

        return $this->registered($request, $user) ?: redirect($this->redirectPath());
    }

    protected function validator(array $data)
    {
        $term = get_page('terms', 'status') == 'active' ? 'required' : 'nullable';
        return Validator::make($data, [
            'name' => ['required', 'string', 'min:3', 'max:255'],
            'phone' => ['required', 'numeric', 'digits_between:10,12', 'regex:/^[0+84]\d+/i', 'unique:users'],
            'password' => ['required', 'string', 'min:6', 'confirmed'],
            'phone_ref' => ['nullable', 'exists:users,phone'],
            'province_id' => ['required', 'exists:provinces,id'],
            'terms' => [$term],
        ], [
            'phone_ref.exists' => 'Số điện thoại không tồn tại',
            'terms.required' => __('messages.agree'),
            '*.required' => 'Vui lòng nhập :attribute',
            'phone.unique' => 'Số điện thoại đã tồn tại. Bạn đã quên <a href="' . route('password.request') . '">mật khẩu?</a>?',
        ]);
    }

    protected function create(array $data)
    {
        if (empty($data['phone_ref'])) {
            $ref = User::whereRelation('roles', 'name', '=', 'super_admin')->first();
        } else {
            $ref = User::where('phone', $data['phone_ref'])->first();
        }
        // $have_user = User::where('role', 'admin')->count();
        $point = PointCalc::getPoint('refer');

        $data['lastLogin'] = date('Y-m-d H:i:s');
        $data['phone'] = preg_replace('/^\+84/', '0', $data['phone']);
        $data['password'] = Hash::make($data['password']);
        $data['email_verified_at'] = now();

        $user = User::create($data);
        if (!is_null($ref)) {
            $data = ['refer_by' => $ref->id];
            $user->ref()->create($data);
            $user->addPoints($point, __('Refer Bonus'), $data);
        }

        /* if ($user) {
            if ($have_user <= 0) {
                save_gmeta('site_super_admin', 1, $user->id);
            } */

            // $this->create_referral_or_not($user->id,$data['phone-ref']);
            // $refer_blank = true;
            /* if (is_active_referral_system()) {
                if (Cookie::has('ico_nio_ref_by')) {
                    $ref_id = (int) Cookie::get('ico_nio_ref_by');
                    $ref_user = User::where('id', $ref_id)->where('email_verified_at', '!=', null)->first();
                    if ($ref_user) {
                        $user->referral = $ref_user->id;
                        $user->referralInfo = json_encode([
                            'user' => $ref_user->id,
                            'name' => $ref_user->name,
                            'time' => now(),
                        ]);
                        $refer_blank = false;
                        $this->create_referral_or_not($user->id, $ref_user->id);
                        Cookie::queue(Cookie::forget('ico_nio_ref_by'));
                    }
                }
            } */
            /* if ($user->role == 'user' && $refer_blank == true) {
                $this->create_referral_or_not($user->id);
            } */
        // }
        return $user;
    }
}
