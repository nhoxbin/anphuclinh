<?php

namespace App\Http\Controllers\Auth;

/**
 * Register Controller
 *
 * @package TokenLite
 * @author Softnio
 * @version 1.1.2
 */

use App\Helpers\CalcPoint;
use Cookie;
use Carbon\Carbon;
use App\Models\User;
use App\Models\Referral;
use App\Models\UserMeta;
use App\Helpers\ReCaptcha;
use App\Helpers\UserPanel;
use IcoHandler;
use Illuminate\Http\Request;
use App\Notifications\ConfirmEmail;
use App\Http\Controllers\Controller;
use App\Models\Province;
use App\Models\Transaction;
use Illuminate\Support\Facades\Hash;
use Illuminate\Auth\Events\Registered;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Str;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
     */

    use RegistersUsers, ReCaptcha;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     * @version 1.0.0
     */
    protected $redirectTo = '/register/success';

    /**
     * Create a new controller instance.
     *
     * @version 1.0.0
     * @return void
     */
    protected $handler;
    public function __construct(IcoHandler $handler)
    {
        $this->handler = $handler;
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

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @version 1.0.1
     * @return \Illuminate\Contracts\Validation\Validator
     */
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

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @version 1.2.1
     * @since 1.0.0
     * @return \App\Models\User
     */
    protected function create(array $data)
    {
        if (empty($data['phone_ref'])) {
            $ref = User::where('role', 'admin')->first();
        } else {
            $ref = User::where('phone', $data['phone_ref'])->first();
        }
        // $have_user = User::where('role', 'admin')->count();
        $point = CalcPoint::getPoint('refer');

        $data['lastLogin'] = date('Y-m-d H:i:s');
        $data['phone'] = preg_replace('/^\+84/', '0', $data['phone']);
        $data['password'] = Hash::make($data['password']);
        $data['email_verified_at'] = now();
        $data['point'] = $point;
        $user = User::create($data);
        if (!is_null($ref)) {
            $user->referrals()->create([
                'refer_by_id' => $ref->id,
                'bonus' => $point
            ]);
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

    /**
     * Create user in referral table.
     *
     * @param  $user, $refer
     * @version 1.0
     * @since 1.1.2
     * @return \App\Models\User
     */
    protected function create_referral_or_not($user_id, $phone_ref)
    {
        /* if($phone_ref) {
            User::where('phone', $phone_ref)->firstOrFail()->referrals()->create([
                'user_id' => $user_id,
                'ref_by_id' => $ref_id,
                'bonus' => 500
            ]);
        } */
    }
}
