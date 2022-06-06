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
use Illuminate\Support\Facades\Hash;
use Illuminate\Auth\Events\Registered;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

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
            'phone' => ['required', 'numeric', 'digits:10', 'regex:/^0\d+/i', 'unique:users'],
            'password' => ['required', 'string', 'min:6', 'confirmed'],
            'phone_ref' => ['nullable', 'exists:users,phone'],
            'province_code' => ['required', 'exists:provinces,code'],
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
        $data['lastLogin'] = date('Y-m-d H:i:s');
        $data['phone'] = preg_replace('/^\+84/', '0', $data['phone']);
        $data['password'] = Hash::make($data['password']);
        $data['email_verified_at'] = now();

        // has observer
        $user = User::create($data);
        $user->assignRole('member');

        if (Cookie::has('apl_ref_by')) {
            $ref_phone = Cookie::get('apl_ref_by');
            $ref_user = User::where('phone', $ref_phone)->first();
            if ($ref_user) {
                Referral::create(['user_id' => $user->id, 'refer_by' => $ref_user->id]);
                Cookie::queue(Cookie::forget('apl_ref_by'));
            }
        } else {
            if (empty($data['phone_ref'])) {
                $ref_user = User::whereRelation('roles', 'name', '=', 'super_admin')->first();
            } else {
                $ref_user = User::where('phone', $data['phone_ref'])->first();
            }
        }
        $user->addPoints(PointCalc::getPoint('refer'), __('Refer Bonus'), ['type' => 'bonus', 'refer_by' => $ref_user->id]);
        Referral::create(['user_id' => $user->id, 'refer_by' => $ref_user->id]);

        return $user;
    }
}
