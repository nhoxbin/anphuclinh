@extends('layouts.user-new')
@section('sidebar')
    @parent
@stop
@section('content')
<style>
    .form-row{
        flex-direction: column;
        width: 100% !important;
    }
    .form-row input,select,textarea{
        background: #fff;
    }
    .shipping_address{
        display: none;
    }
</style>
<div class="body-content body-content-lg" style="background-image: url({{asset('images/bg.jpg')}})"> <!-- "body-content-lg" add this class if any cards inside this div has "section-to-header" class -->
    <div class="container">
<main id="primary" class="site-main">


<article id="post-59" class="post-59 page type-page status-publish hentry">
<header class="entry-header">
<h1 class="entry-title">Trang thanh toán</h1>	</header><!-- .entry-header -->


<div class="entry-content">
<div class="woocommerce"><div class="woocommerce-notices-wrapper">
{{-- <div class="woocommerce-message" role="alert"> --}}
{{-- <a href="https://app.anphuclinh.net/trang-gio-hang/" tabindex="1" class="button wc-forward">Xem giỏ hàng</a> &ldquo;Gói Combo 3tr&rdquo; đã được thêm vào giỏ hàng.	</div> --}}
{{-- </div> --}}
<div class="woocommerce-form-coupon-toggle">

<div class="woocommerce-info">
Bạn có mã ưu đãi? <a href="#" class="showcoupon">Ấn vào đây để nhập mã</a>	</div>
</div>

<form class="checkout_coupon woocommerce-form-coupon" method="post" style="display:none">

<p>Nếu bạn có mã giảm giá, vui lòng điền vào phía bên dưới.</p>

<p class="form-row form-row-first">
<input type="text" name="coupon_code" class="input-text" placeholder="Mã ưu đãi" id="coupon_code" value="" />
</p>

<p class="form-row form-row-last">
<button type="submit" class="button" name="apply_coupon" value="Áp dụng">Áp dụng</button>
</p>

<div class="clear"></div>
</form>
<div class="woocommerce-notices-wrapper"></div>
<form name="checkout" method="post" class="checkout woocommerce-checkout" action="https://app.anphuclinh.net/trang-thanh-toan/" enctype="multipart/form-data">



<div class="col2-set row" id="customer_details">
    <div class="col-sm-6 col-12">
        <div class="woocommerce-billing-fields">

<h3>Thông tin thanh toán</h3>




<div class="woocommerce-billing-fields__field-wrapper">
<p class="form-row form-row-first thwcfd-field-wrapper thwcfd-field-text validate-required" id="billing_first_name_field" data-priority="10"><label for="billing_first_name" class="">Tên&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><input type="text" class="input-text " name="billing_first_name" id="billing_first_name" placeholder=""  value="" autocomplete="given-name" /></span></p><p class="form-row form-row-wide thwcfd-field-wrapper thwcfd-field-tel validate-required validate-phone" id="billing_phone_field" data-priority="30"><label for="billing_phone" class="">Số điện thoại&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><input type="tel" class="input-text " name="billing_phone" id="billing_phone" placeholder=""  value="" autocomplete="tel" /></span></p><p class="form-row form-row-wide thwcfd-field-wrapper thwcfd-field-email validate-required validate-email" id="billing_email_field" data-priority="40"><label for="billing_email" class="">Địa chỉ email&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><input type="email" class="input-text " name="billing_email" id="billing_email" placeholder=""  value="0793617910@anphuclinh.net" autocomplete="email username" /></span></p><p class="form-row form-row-wide address-field update_totals_on_change thwcfd-field-wrapper thwcfd-field-country validate-required" id="billing_country_field" data-priority="50"><label for="billing_country" class="">Quốc gia/Khu vực&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><select name="billing_country" id="billing_country" class="country_to_state country_select " autocomplete="country" data-placeholder="Chọn Quốc gia/Khu vực&hellip;"><option value="">Chọn Quốc gia/Khu vực&hellip;</option><option value="SA" >Ả Rập Saudi</option><option value="AF" >Afghanistan</option><option value="EG" >Ai Cập</option><option value="AX" >Åland Islands</option><option value="AL" >Albania</option><option value="DZ" >Algeria</option><option value="AS" >American Samoa</option><option value="AD" >Andorra</option><option value="AO" >Angola</option><option value="AI" >Anguilla</option><option value="GB" >Anh (UK)</option><option value="AQ" >Antarctica</option><option value="AG" >Antigua và Barbuda</option><option value="AT" >Áo</option><option value="AR" >Argentina</option><option value="AM" >Armenia</option><option value="AW" >Aruba</option><option value="AZ" >Azerbaijan</option><option value="IN" >Ấn Độ</option><option value="BS" >Bahamas</option><option value="BH" >Bahrain</option><option value="BD" >Bangladesh</option><option value="BB" >Barbados</option><option value="BY" >Belarus</option><option value="PW" >Belau</option><option value="BZ" >Belize</option><option value="BJ" >Benin</option><option value="BM" >Bermuda</option><option value="BT" >Bhutan</option><option value="BE" >Bỉ</option><option value="BO" >Bolivia</option><option value="BQ" >Bonaire, Saint Eustatius và Saba</option><option value="BA" >Bosnia và Herzegovina</option><option value="BW" >Botswana</option><option value="PT" >Bồ Đào Nha</option><option value="CI" >Bờ biển Ngà</option><option value="BR" >Brazil</option><option value="BN" >Brunei</option><option value="BG" >Bulgaria</option><option value="BF" >Burkina Faso</option><option value="BI" >Burundi</option><option value="UM" >Các Tiểu đảo xa của Hoa Kỳ (US)</option><option value="AE" >Các tiểu vương quốc Ả Rập</option><option value="CM" >Cameroon</option><option value="KH" >Campuchia</option><option value="CA" >Canada</option><option value="CV" >Cape Verde</option><option value="TD" >Chad</option><option value="CL" >Chile</option><option value="CX" >Christmas Island</option><option value="CO" >Colombia</option><option value="KM" >Comoros</option><option value="CG" >Congo (Brazzaville)</option><option value="CD" >Congo (Kinshasa)</option><option value="CR" >Costa Rica</option><option value="DO" >Cộng hòa Dominica</option><option value="CZ" >Cộng hòa Séc</option><option value="CF" >Cộng hòa Trung Phi</option><option value="HR" >Croatia</option><option value="CU" >Cuba</option><option value="CW" >Cura&Ccedil;ao</option><option value="CY" >Cyprus</option><option value="DJ" >Djibouti</option><option value="DM" >Dominica</option><option value="TW" >Đài Loan</option><option value="DK" >Đan Mạch</option><option value="BV" >Đảo Bouvet</option><option value="HM" >Đảo Heard và quần đảo McDonald</option><option value="IM" >Đảo Man</option><option value="WS" >Đảo Samoa</option><option value="TL" >Đông Timo</option><option value="DE" >Đức</option><option value="EC" >Ecuador</option><option value="SV" >El Salvador</option><option value="ER" >Eritrea</option><option value="EE" >Estonia</option><option value="ET" >Ethiopia</option><option value="FJ" >Fiji</option><option value="GA" >Gabon</option><option value="GM" >Gambia</option><option value="GE" >Georgia</option><option value="GH" >Ghana</option><option value="GI" >Gibraltar</option><option value="GL" >Greenland</option><option value="GD" >Grenada</option><option value="GP" >Guadeloupe</option><option value="GU" >Guam</option><option value="GT" >Guatemala</option><option value="GG" >Guernsey</option><option value="GN" >Guinea</option><option value="GQ" >Guinea Xích đạo</option><option value="GW" >Guinea-Bissau</option><option value="GY" >Guyana</option><option value="GF" >Guyane thuộc Pháp</option><option value="NL" >Hà Lan</option><option value="HT" >Haiti</option><option value="KR" >Hàn Quốc</option><option value="HN" >Honduras</option><option value="HK" >Hồng Kông</option><option value="HU" >Hungary</option><option value="GR" >Hy Lạp</option><option value="IS" >Iceland</option><option value="ID" >Indonesia</option><option value="IR" >Iran</option><option value="IQ" >Iraq</option><option value="IE" >Ireland</option><option value="IL" >Israel</option><option value="JM" >Jamaica</option><option value="JE" >Jersey</option><option value="JO" >Jordan</option><option value="KZ" >Kazakhstan</option><option value="KE" >Kenya</option><option value="KI" >Kiribati</option><option value="KW" >Kuwait</option><option value="KG" >Kyrgyzstan</option><option value="IO" >Lãnh thổ Ấn Độ Dương thuộc Anh</option><option value="TF" >Lãnh thổ miền Nam nước Pháp</option><option value="LA" >Lào</option><option value="LV" >Latvia</option><option value="LB" >Lebanon</option><option value="LS" >Lesotho</option><option value="LR" >Liberia</option><option value="LY" >Libya</option><option value="LI" >Liechtenstein</option><option value="LT" >Lithuania</option><option value="LU" >Luxembourg</option><option value="MO" >Ma Cao</option><option value="MG" >Madagascar</option><option value="MW" >Malawi</option><option value="MY" >Malaysia</option><option value="MV" >Maldives</option><option value="ML" >Mali</option><option value="MT" >Malta</option><option value="MQ" >Martinique</option><option value="MR" >Mauritania</option><option value="MU" >Mauritius</option><option value="YT" >Mayotte</option><option value="MX" >Mexico</option><option value="FM" >Micronesia</option><option value="MD" >Moldova</option><option value="MC" >Monaco</option><option value="ME" >Montenegro</option><option value="MS" >Montserrat</option><option value="MA" >Morocco</option><option value="MZ" >Mozambique</option><option value="MN" >Mông Cổ</option><option value="US" >Mỹ (US)</option><option value="MM" >Myanmar</option><option value="NO" >Na Uy</option><option value="GS" >Nam Georgia và Quần đảo Nam Sandwich</option><option value="ZA" >Nam Phi</option><option value="SS" >Nam Sudan</option><option value="NA" >Namibia</option><option value="NR" >Nauru</option><option value="NP" >Nepal</option><option value="NC" >New Caledonia</option><option value="NZ" >New Zealand</option><option value="RU" >Nga</option><option value="JP" >Nhật Bản</option><option value="NI" >Nicaragua</option><option value="NE" >Niger</option><option value="NG" >Nigeria</option><option value="NU" >Niue</option><option value="NF" >Norfolk Island</option><option value="MK" >North Macedonia</option><option value="OM" >Oman</option><option value="PK" >Pakistan</option><option value="PS" >Palestinian Territory</option><option value="PA" >Panama</option><option value="PG" >Papua New Guinea</option><option value="PY" >Paraguay</option><option value="PE" >Peru</option><option value="FR" >Pháp</option><option value="FI" >Phần Lan</option><option value="PL" >Phần Lan</option><option value="PH" >Philippines</option><option value="PN" >Pitcairn</option><option value="PF" >Polynesia thuộc Pháp</option><option value="PR" >Puerto Rico</option><option value="QA" >Qatar</option><option value="MP" >Quần đảo Bắc Mariana</option><option value="KY" >Quần đảo Cayman</option><option value="CC" >Quần đảo Cocos (Keeling)</option><option value="CK" >Quần đảo Cook</option><option value="FK" >Quần đảo Falkland</option><option value="FO" >Quần đảo Faroe</option><option value="MH" >Quần đảo Marshall</option><option value="SB" >Quần đảo Solomon</option><option value="RE" >Reunion</option><option value="RO" >Romania</option><option value="RW" >Rwanda</option><option value="ST" >S&atilde;o Tom&eacute; và Pr&iacute;ncipe</option><option value="BL" >Saint Barth&eacute;lemy</option><option value="SH" >Saint Helena</option><option value="KN" >Saint Kitts và Nevis</option><option value="LC" >Saint Lucia</option><option value="SX" >Saint Martin (thuộc Hà Lan)</option><option value="PM" >Saint Pierre và Miquelon</option><option value="VC" >Saint Vincent và Grenadines</option><option value="MF" >Saint-Martin (thuộc Pháp)</option><option value="SM" >San Marino</option><option value="SN" >Senegal</option><option value="RS" >Serbia</option><option value="SC" >Seychelles</option><option value="SL" >Sierra Leone</option><option value="SG" >Singapore</option><option value="SK" >Slovakia</option><option value="SI" >Slovenia</option><option value="SO" >Somalia</option><option value="LK" >Sri Lanka</option><option value="SD" >Sudan</option><option value="SR" >Suriname</option><option value="SJ" >Svalbard và Jan Mayen</option><option value="SZ" >Swaziland</option><option value="SY" >Syria</option><option value="TJ" >Tajikistan</option><option value="TZ" >Tanzania</option><option value="ES" >Tây Ban Nha</option><option value="TH" >Thái Lan</option><option value="TR" >Thổ Nhĩ Kỳ</option><option value="SE" >Thụy Điển</option><option value="CH" >Thụy Sĩ</option><option value="TG" >Togo</option><option value="TK" >Tokelau</option><option value="TO" >Tonga</option><option value="KP" >Triều Tiên</option><option value="TT" >Trinidad và Tobago</option><option value="CN" >Trung Quốc</option><option value="TN" >Tunisia</option><option value="TM" >Turkmenistan</option><option value="TC" >Turks và quần đảo Caicos</option><option value="TV" >Tuvalu</option><option value="AU" >Úc</option><option value="UG" >Uganda</option><option value="UA" >Ukraine</option><option value="UY" >Uruguay</option><option value="UZ" >Uzbekistan</option><option value="VU" >Vanuatu</option><option value="VA" >Vatican</option><option value="VE" >Venezuela</option><option value="VN"  selected='selected'>Việt Nam</option><option value="VG" >Virgin Islands (British)</option><option value="VI" >Virgin Islands (Mỹ)</option><option value="WF" >Wallis và Futuna</option><option value="EH" >Western Sahara</option><option value="IT" >Ý</option><option value="YE" >Yemen</option><option value="ZM" >Zambia</option><option value="ZW" >Zimbabwe</option></select><noscript><button type="submit" name="woocommerce_checkout_update_totals" value="Cập nhật Quốc gia/Khu vực">Cập nhật Quốc gia/Khu vực</button></noscript></span></p><p class="form-row validate-required" id="billing_svw_province_field" data-priority="90"><label for="billing_svw_province" class="">Tỉnh/ Thành Phố&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><select name="billing_svw_province" id="billing_svw_province" class="select wc-enhanced-select svw-select-province"  data-placeholder="">
                    <option value="0" >Chọn Tỉnh/ Thành Phố</option><option value="201" >Hà Nội</option><option value="202" >Hồ Chí Minh</option><option value="203" >Đà Nẵng</option><option value="204" >Đồng Nai</option><option value="205" >Bình Dương</option><option value="206" >Bà Rịa - Vũng Tàu</option><option value="207" >Gia Lai</option><option value="208" >Khánh Hòa</option><option value="209" >Lâm Đồng</option><option value="210" >Đắk Lắk</option><option value="211" >Long An</option><option value="212" >Tiền Giang</option><option value="213" >Bến Tre</option><option value="214" >Trà Vinh</option><option value="215" >Vĩnh Long</option><option value="216" >Đồng Tháp</option><option value="217" >An Giang</option><option value="218" >Sóc Trăng</option><option value="219" >Kiên Giang</option><option value="220" >Cần Thơ</option><option value="221" >Vĩnh Phúc</option><option value="223" >Thừa Thiên - Huế</option><option value="224" >Hải Phòng</option><option value="225" >Hải Dương</option><option value="226" >Thái Bình</option><option value="227" >Hà Giang</option><option value="228" >Tuyên Quang</option><option value="229" >Phú Thọ</option><option value="230" >Quảng Ninh</option><option value="231" >Nam Định</option><option value="232" >Hà Nam</option><option value="233" >Ninh Bình</option><option value="234" >Thanh Hóa</option><option value="235" >Nghệ An</option><option value="236" >Hà Tĩnh</option><option value="237" >Quảng Bình</option><option value="238" >Quảng Trị</option><option value="239" >Bình Phước</option><option value="240" >Tây Ninh</option><option value="241" >Đắk Nông</option><option value="242" >Quảng Ngãi</option><option value="243" >Quảng Nam</option><option value="244" >Thái Nguyên</option><option value="245" >Bắc Kạn</option><option value="246" >Cao Bằng</option><option value="247" >Lạng Sơn</option><option value="248" >Bắc Giang</option><option value="249" >Bắc Ninh</option><option value="250" >Hậu Giang</option><option value="252" >Cà Mau</option><option value="253" >Bạc Liêu</option><option value="258" >Bình Thuận</option><option value="259" >Kon Tum</option><option value="260" >Phú Yên</option><option value="261" >Ninh Thuận</option><option value="262" >Bình Định</option><option value="263" >Yên Bái</option><option value="264" >Lai Châu</option><option value="265" >Điện Biên</option><option value="266" >Sơn La</option><option value="267" >Hòa Bình</option><option value="268" >Hưng Yên</option><option value="269" >Lào Cai</option>
                </select></span></p><p class="form-row form-row-wide validate-required" id="billing_svw_district_field" data-priority="90"><label for="billing_svw_district" class="">Quận/ Huyện&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><select name="billing_svw_district" id="billing_svw_district" class="select wc-enhanced-select svw-select-district" data-allow_clear="true" data-placeholder="Chọn Quận/ Huyện">
                    <option value=""  selected='selected'>Chọn Quận/ Huyện</option>
                </select></span></p><p class="form-row form-row-wide update_totals_on_change validate-required" id="billing_svw_ward_field" data-priority="100"><label for="billing_svw_ward" class="">Phường/ Xã&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><select name="billing_svw_ward" id="billing_svw_ward" class="select wc-enhanced-select svw-select-ward" data-allow_clear="true" data-placeholder="Chọn Phường/ Xã">
                    <option value=""  selected='selected'>Chọn Phường/ Xã</option>
                </select></span></p><p class="form-row form-row-wide address-field thwcfd-field-wrapper thwcfd-field-text validate-required" id="billing_address_1_field" data-priority="1000"><label for="billing_address_1" class="">Địa chỉ&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><input type="text" class="input-text " name="billing_address_1" id="billing_address_1" placeholder="Địa chỉ"  value="" autocomplete="address-line1" /></span></p>	</div>

</div>

    </div>

    <div class="col-sm-6 col-12">
        <div class="woocommerce-shipping-fields">

<h3 id="ship-to-different-address" style="margin-bottom:-3px">
    <label class="woocommerce-form__label woocommerce-form__label-for-checkbox checkbox" style="display:flex">
        <input id="ship-to-different-address-checkbox" style="opacity: 1;width: 12px;height: 12px;opacity: 1;position: unset;margin-top: 12px;margin-right: 8px;" class="woocommerce-form__input woocommerce-form__input-checkbox input-checkbox"  type="checkbox" name="ship_to_different_address" value="1" /> <span style="color: #000">Giao hàng tới địa chỉ khác?</span>
    </label>
</h3>

<div class="shipping_address">

    
    <div class="woocommerce-shipping-fields__field-wrapper">
        <p class="form-row form-row-first thwcfd-field-wrapper thwcfd-field-text validate-required" id="shipping_first_name_field" data-priority="10"><label for="shipping_first_name" class="">Tên&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><input type="text" class="input-text " name="shipping_first_name" id="shipping_first_name" placeholder=""  value="" autocomplete="given-name" /></span></p><p class="form-row " id="shipping_phone_field" data-priority="30"><span class="woocommerce-input-wrapper"><input type="text" class="input-text " name="shipping_phone" id="shipping_phone" placeholder=""  value=""  /></span></p><p class="form-row " id="shipping_email_field" data-priority="40"><span class="woocommerce-input-wrapper"><input type="text" class="input-text " name="shipping_email" id="shipping_email" placeholder=""  value=""  /></span></p><p class="form-row form-row-wide address-field update_totals_on_change thwcfd-field-wrapper thwcfd-field-country validate-required" id="shipping_country_field" data-priority="50"><label for="shipping_country" class="">Quốc gia/Khu vực&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><select name="shipping_country" id="shipping_country" class="country_to_state country_select " autocomplete="country" data-placeholder="Chọn Quốc gia/Khu vực&hellip;"><option value="">Chọn Quốc gia/Khu vực&hellip;</option><option value="SA" >Ả Rập Saudi</option><option value="AF" >Afghanistan</option><option value="EG" >Ai Cập</option><option value="AX" >Åland Islands</option><option value="AL" >Albania</option><option value="DZ" >Algeria</option><option value="AS" >American Samoa</option><option value="AD" >Andorra</option><option value="AO" >Angola</option><option value="AI" >Anguilla</option><option value="GB" >Anh (UK)</option><option value="AQ" >Antarctica</option><option value="AG" >Antigua và Barbuda</option><option value="AT" >Áo</option><option value="AR" >Argentina</option><option value="AM" >Armenia</option><option value="AW" >Aruba</option><option value="AZ" >Azerbaijan</option><option value="IN" >Ấn Độ</option><option value="BS" >Bahamas</option><option value="BH" >Bahrain</option><option value="BD" >Bangladesh</option><option value="BB" >Barbados</option><option value="BY" >Belarus</option><option value="PW" >Belau</option><option value="BZ" >Belize</option><option value="BJ" >Benin</option><option value="BM" >Bermuda</option><option value="BT" >Bhutan</option><option value="BE" >Bỉ</option><option value="BO" >Bolivia</option><option value="BQ" >Bonaire, Saint Eustatius và Saba</option><option value="BA" >Bosnia và Herzegovina</option><option value="BW" >Botswana</option><option value="PT" >Bồ Đào Nha</option><option value="CI" >Bờ biển Ngà</option><option value="BR" >Brazil</option><option value="BN" >Brunei</option><option value="BG" >Bulgaria</option><option value="BF" >Burkina Faso</option><option value="BI" >Burundi</option><option value="UM" >Các Tiểu đảo xa của Hoa Kỳ (US)</option><option value="AE" >Các tiểu vương quốc Ả Rập</option><option value="CM" >Cameroon</option><option value="KH" >Campuchia</option><option value="CA" >Canada</option><option value="CV" >Cape Verde</option><option value="TD" >Chad</option><option value="CL" >Chile</option><option value="CX" >Christmas Island</option><option value="CO" >Colombia</option><option value="KM" >Comoros</option><option value="CG" >Congo (Brazzaville)</option><option value="CD" >Congo (Kinshasa)</option><option value="CR" >Costa Rica</option><option value="DO" >Cộng hòa Dominica</option><option value="CZ" >Cộng hòa Séc</option><option value="CF" >Cộng hòa Trung Phi</option><option value="HR" >Croatia</option><option value="CU" >Cuba</option><option value="CW" >Cura&Ccedil;ao</option><option value="CY" >Cyprus</option><option value="DJ" >Djibouti</option><option value="DM" >Dominica</option><option value="TW" >Đài Loan</option><option value="DK" >Đan Mạch</option><option value="BV" >Đảo Bouvet</option><option value="HM" >Đảo Heard và quần đảo McDonald</option><option value="IM" >Đảo Man</option><option value="WS" >Đảo Samoa</option><option value="TL" >Đông Timo</option><option value="DE" >Đức</option><option value="EC" >Ecuador</option><option value="SV" >El Salvador</option><option value="ER" >Eritrea</option><option value="EE" >Estonia</option><option value="ET" >Ethiopia</option><option value="FJ" >Fiji</option><option value="GA" >Gabon</option><option value="GM" >Gambia</option><option value="GE" >Georgia</option><option value="GH" >Ghana</option><option value="GI" >Gibraltar</option><option value="GL" >Greenland</option><option value="GD" >Grenada</option><option value="GP" >Guadeloupe</option><option value="GU" >Guam</option><option value="GT" >Guatemala</option><option value="GG" >Guernsey</option><option value="GN" >Guinea</option><option value="GQ" >Guinea Xích đạo</option><option value="GW" >Guinea-Bissau</option><option value="GY" >Guyana</option><option value="GF" >Guyane thuộc Pháp</option><option value="NL" >Hà Lan</option><option value="HT" >Haiti</option><option value="KR" >Hàn Quốc</option><option value="HN" >Honduras</option><option value="HK" >Hồng Kông</option><option value="HU" >Hungary</option><option value="GR" >Hy Lạp</option><option value="IS" >Iceland</option><option value="ID" >Indonesia</option><option value="IR" >Iran</option><option value="IQ" >Iraq</option><option value="IE" >Ireland</option><option value="IL" >Israel</option><option value="JM" >Jamaica</option><option value="JE" >Jersey</option><option value="JO" >Jordan</option><option value="KZ" >Kazakhstan</option><option value="KE" >Kenya</option><option value="KI" >Kiribati</option><option value="KW" >Kuwait</option><option value="KG" >Kyrgyzstan</option><option value="IO" >Lãnh thổ Ấn Độ Dương thuộc Anh</option><option value="TF" >Lãnh thổ miền Nam nước Pháp</option><option value="LA" >Lào</option><option value="LV" >Latvia</option><option value="LB" >Lebanon</option><option value="LS" >Lesotho</option><option value="LR" >Liberia</option><option value="LY" >Libya</option><option value="LI" >Liechtenstein</option><option value="LT" >Lithuania</option><option value="LU" >Luxembourg</option><option value="MO" >Ma Cao</option><option value="MG" >Madagascar</option><option value="MW" >Malawi</option><option value="MY" >Malaysia</option><option value="MV" >Maldives</option><option value="ML" >Mali</option><option value="MT" >Malta</option><option value="MQ" >Martinique</option><option value="MR" >Mauritania</option><option value="MU" >Mauritius</option><option value="YT" >Mayotte</option><option value="MX" >Mexico</option><option value="FM" >Micronesia</option><option value="MD" >Moldova</option><option value="MC" >Monaco</option><option value="ME" >Montenegro</option><option value="MS" >Montserrat</option><option value="MA" >Morocco</option><option value="MZ" >Mozambique</option><option value="MN" >Mông Cổ</option><option value="US" >Mỹ (US)</option><option value="MM" >Myanmar</option><option value="NO" >Na Uy</option><option value="GS" >Nam Georgia và Quần đảo Nam Sandwich</option><option value="ZA" >Nam Phi</option><option value="SS" >Nam Sudan</option><option value="NA" >Namibia</option><option value="NR" >Nauru</option><option value="NP" >Nepal</option><option value="NC" >New Caledonia</option><option value="NZ" >New Zealand</option><option value="RU" >Nga</option><option value="JP" >Nhật Bản</option><option value="NI" >Nicaragua</option><option value="NE" >Niger</option><option value="NG" >Nigeria</option><option value="NU" >Niue</option><option value="NF" >Norfolk Island</option><option value="MK" >North Macedonia</option><option value="OM" >Oman</option><option value="PK" >Pakistan</option><option value="PS" >Palestinian Territory</option><option value="PA" >Panama</option><option value="PG" >Papua New Guinea</option><option value="PY" >Paraguay</option><option value="PE" >Peru</option><option value="FR" >Pháp</option><option value="FI" >Phần Lan</option><option value="PL" >Phần Lan</option><option value="PH" >Philippines</option><option value="PN" >Pitcairn</option><option value="PF" >Polynesia thuộc Pháp</option><option value="PR" >Puerto Rico</option><option value="QA" >Qatar</option><option value="MP" >Quần đảo Bắc Mariana</option><option value="KY" >Quần đảo Cayman</option><option value="CC" >Quần đảo Cocos (Keeling)</option><option value="CK" >Quần đảo Cook</option><option value="FK" >Quần đảo Falkland</option><option value="FO" >Quần đảo Faroe</option><option value="MH" >Quần đảo Marshall</option><option value="SB" >Quần đảo Solomon</option><option value="RE" >Reunion</option><option value="RO" >Romania</option><option value="RW" >Rwanda</option><option value="ST" >S&atilde;o Tom&eacute; và Pr&iacute;ncipe</option><option value="BL" >Saint Barth&eacute;lemy</option><option value="SH" >Saint Helena</option><option value="KN" >Saint Kitts và Nevis</option><option value="LC" >Saint Lucia</option><option value="SX" >Saint Martin (thuộc Hà Lan)</option><option value="PM" >Saint Pierre và Miquelon</option><option value="VC" >Saint Vincent và Grenadines</option><option value="MF" >Saint-Martin (thuộc Pháp)</option><option value="SM" >San Marino</option><option value="SN" >Senegal</option><option value="RS" >Serbia</option><option value="SC" >Seychelles</option><option value="SL" >Sierra Leone</option><option value="SG" >Singapore</option><option value="SK" >Slovakia</option><option value="SI" >Slovenia</option><option value="SO" >Somalia</option><option value="LK" >Sri Lanka</option><option value="SD" >Sudan</option><option value="SR" >Suriname</option><option value="SJ" >Svalbard và Jan Mayen</option><option value="SZ" >Swaziland</option><option value="SY" >Syria</option><option value="TJ" >Tajikistan</option><option value="TZ" >Tanzania</option><option value="ES" >Tây Ban Nha</option><option value="TH" >Thái Lan</option><option value="TR" >Thổ Nhĩ Kỳ</option><option value="SE" >Thụy Điển</option><option value="CH" >Thụy Sĩ</option><option value="TG" >Togo</option><option value="TK" >Tokelau</option><option value="TO" >Tonga</option><option value="KP" >Triều Tiên</option><option value="TT" >Trinidad và Tobago</option><option value="CN" >Trung Quốc</option><option value="TN" >Tunisia</option><option value="TM" >Turkmenistan</option><option value="TC" >Turks và quần đảo Caicos</option><option value="TV" >Tuvalu</option><option value="AU" >Úc</option><option value="UG" >Uganda</option><option value="UA" >Ukraine</option><option value="UY" >Uruguay</option><option value="UZ" >Uzbekistan</option><option value="VU" >Vanuatu</option><option value="VA" >Vatican</option><option value="VE" >Venezuela</option><option value="VN"  selected='selected'>Việt Nam</option><option value="VG" >Virgin Islands (British)</option><option value="VI" >Virgin Islands (Mỹ)</option><option value="WF" >Wallis và Futuna</option><option value="EH" >Western Sahara</option><option value="IT" >Ý</option><option value="YE" >Yemen</option><option value="ZM" >Zambia</option><option value="ZW" >Zimbabwe</option></select><noscript><button type="submit" name="woocommerce_checkout_update_totals" value="Cập nhật Quốc gia/Khu vực">Cập nhật Quốc gia/Khu vực</button></noscript></span></p><p class="form-row validate-required" id="shipping_svw_province_field" data-priority="90"><label for="shipping_svw_province" class="">Tỉnh/ Thành Phố&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><select name="shipping_svw_province" id="shipping_svw_province" class="select wc-enhanced-select svw-select-province"  data-placeholder="">
                    <option value="0" >Chọn Tỉnh/ Thành Phố</option><option value="201" >Hà Nội</option><option value="202" >Hồ Chí Minh</option><option value="203" >Đà Nẵng</option><option value="204" >Đồng Nai</option><option value="205" >Bình Dương</option><option value="206" >Bà Rịa - Vũng Tàu</option><option value="207" >Gia Lai</option><option value="208" >Khánh Hòa</option><option value="209" >Lâm Đồng</option><option value="210" >Đắk Lắk</option><option value="211" >Long An</option><option value="212" >Tiền Giang</option><option value="213" >Bến Tre</option><option value="214" >Trà Vinh</option><option value="215" >Vĩnh Long</option><option value="216" >Đồng Tháp</option><option value="217" >An Giang</option><option value="218" >Sóc Trăng</option><option value="219" >Kiên Giang</option><option value="220" >Cần Thơ</option><option value="221" >Vĩnh Phúc</option><option value="223" >Thừa Thiên - Huế</option><option value="224" >Hải Phòng</option><option value="225" >Hải Dương</option><option value="226" >Thái Bình</option><option value="227" >Hà Giang</option><option value="228" >Tuyên Quang</option><option value="229" >Phú Thọ</option><option value="230" >Quảng Ninh</option><option value="231" >Nam Định</option><option value="232" >Hà Nam</option><option value="233" >Ninh Bình</option><option value="234" >Thanh Hóa</option><option value="235" >Nghệ An</option><option value="236" >Hà Tĩnh</option><option value="237" >Quảng Bình</option><option value="238" >Quảng Trị</option><option value="239" >Bình Phước</option><option value="240" >Tây Ninh</option><option value="241" >Đắk Nông</option><option value="242" >Quảng Ngãi</option><option value="243" >Quảng Nam</option><option value="244" >Thái Nguyên</option><option value="245" >Bắc Kạn</option><option value="246" >Cao Bằng</option><option value="247" >Lạng Sơn</option><option value="248" >Bắc Giang</option><option value="249" >Bắc Ninh</option><option value="250" >Hậu Giang</option><option value="252" >Cà Mau</option><option value="253" >Bạc Liêu</option><option value="258" >Bình Thuận</option><option value="259" >Kon Tum</option><option value="260" >Phú Yên</option><option value="261" >Ninh Thuận</option><option value="262" >Bình Định</option><option value="263" >Yên Bái</option><option value="264" >Lai Châu</option><option value="265" >Điện Biên</option><option value="266" >Sơn La</option><option value="267" >Hòa Bình</option><option value="268" >Hưng Yên</option><option value="269" >Lào Cai</option>
                </select></span></p><p class="form-row form-row-wide validate-required" id="shipping_svw_district_field" data-priority="90"><label for="shipping_svw_district" class="">Quận/ Huyện&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><select name="shipping_svw_district" id="shipping_svw_district" class="select wc-enhanced-select svw-select-district" data-allow_clear="true" data-placeholder="Chọn Quận/ Huyện">
                    <option value=""  selected='selected'>Chọn Quận/ Huyện</option>
                </select></span></p><p class="form-row form-row-wide update_totals_on_change validate-required" id="shipping_svw_ward_field" data-priority="100"><label for="shipping_svw_ward" class="">Phường/ Xã&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><select name="shipping_svw_ward" id="shipping_svw_ward" class="select wc-enhanced-select svw-select-ward" data-allow_clear="true" data-placeholder="Chọn Phường/ Xã">
                    <option value=""  selected='selected'>Chọn Phường/ Xã</option>
                </select></span></p><p class="form-row form-row-wide address-field thwcfd-field-wrapper thwcfd-field-text validate-required" id="shipping_address_1_field" data-priority="1000"><label for="shipping_address_1" class="">Địa chỉ&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><input type="text" class="input-text " name="shipping_address_1" id="shipping_address_1" placeholder="Địa chỉ"  value="" autocomplete="address-line1" /></span></p>			</div>

    
</div>

</div>
<div class="woocommerce-additional-fields">



<div class="woocommerce-additional-fields__field-wrapper">
                    <p class="form-row notes thwcfd-field-wrapper thwcfd-field-textarea" id="order_comments_field" data-priority=""><label for="order_comments" class="">Ghi chú đơn hàng&nbsp;<span class="optional">(tuỳ chọn)</span></label><span class="woocommerce-input-wrapper"><textarea name="order_comments" class="input-text " id="order_comments" placeholder="Ghi chú về đơn hàng, ví dụ: thời gian hay chỉ dẫn địa điểm giao hàng chi tiết hơn."  rows="2" cols="5"></textarea></span></p>					</div>


</div>
    </div>
</div>




<h3 id="order_review_heading">Đơn hàng của bạn</h3>


<div id="order_review" class="woocommerce-checkout-review-order">
<table class="shop_table woocommerce-checkout-review-order-table">
<thead>
<tr>
    <th class="product-name">Sản phẩm</th>
    <th class="product-total">Tạm tính</th>
</tr>
</thead>
<tbody>
                <tr class="cart_item">
            <td class="product-name">
                Gói Combo 3tr&nbsp;						 <strong class="product-quantity">&times;&nbsp;3</strong>											</td>
            <td class="product-total">
                <span class="woocommerce-Price-amount amount"><bdi>9,000,000&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span>					</td>
        </tr>
                        <tr class="cart_item">
            <td class="product-name">
                Sữa non Special New Crown +&nbsp;						 <strong class="product-quantity">&times;&nbsp;1</strong>											</td>
            <td class="product-total">
                <span class="woocommerce-Price-amount amount"><bdi>486,000&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span>					</td>
        </tr>
            </tbody>
<tfoot>

<tr class="cart-subtotal">
    <th>Tạm tính</th>
    <td><span class="woocommerce-Price-amount amount"><bdi>9,486,000&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></td>
</tr>



    
    <tr class="woocommerce-shipping-totals shipping">
<th>Giao hàng</th>
<td data-title="Giao hàng">
            <ul id="shipping_method" class="woocommerce-shipping-methods">
                            <li>
                <input type="hidden" name="shipping_method[0]" data-index="0" id="shipping_method_0_flat_rate1" value="flat_rate:1" class="shipping_method" /><label for="shipping_method_0_flat_rate1">Đồng giá</label>					</li>
                    </ul>
                

    </td>
</tr>

    

            <tr class="fee">
        <th>Thuế VAT 10%</th>
        <td><span class="woocommerce-Price-amount amount"><bdi>48,600&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></td>
    </tr>

                                                

<tr class="order-total">
    <th>Tổng</th>
    <td><strong><span class="woocommerce-Price-amount amount"><bdi>9,534,600&nbsp;<span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></strong> </td>
</tr>


</tfoot>
</table>
<script type="text/javascript">
(function($){
    $( 'form.checkout' ).on( 'change', 'input[name^="payment_method"]', function() {
        $('body').trigger('update_checkout');
    });
})(jQuery);
</script>
<div id="payment" class="woocommerce-checkout-payment">
    <ul class="wc_payment_methods payment_methods methods">
    <li class="wc_payment_method payment_method_tpb-gateway-mh">
<input id="payment_method_tpb-gateway-mh" type="radio" class="input-radio" name="payment_method" value="tpb-gateway-mh"  checked='checked' data-order_button_text="" />

<label for="payment_method_tpb-gateway-mh">
Thanh toán Tiên Phong Bank <img src="https://app.anphuclinh.net/wp-content/plugins/tpb-mh/public/images/TPB.png" alt="Thanh toán Tiên Phong Bank" />	</label>
    <div class="payment_box payment_method_tpb-gateway-mh" >
    <div> Thanh toán online bằng TiềnPhong Bank ngay tức thì</div><p>Hiện tại bạn đang có  <strong>180 điểm APL </strong></br>Số điểm có thể thanh toán tối đa<strong> 38% đơn hàng</strong></br>Số tiền còn lại cần thanh toán là <strong>9,534,600đ</strong></p>			 
    <div class="woo-apl d-none"><p>Thông tin chuyển khoản: </p><p class="woo-apl-detail"><strong>Ngân hàng thương mại cổ phần Quân đội (MB BANK)</strong></p><p class="woo-apl-detail">CHỦ TÀI KHOẢN:<strong> ĐỖ VĂN HÀ</strong></p><p>SỐ TÀI KHOẢN: <strong>8655555678888</strong></p><p>NỘI DUNG: Thanh toan san pham apl <strong>0793617910</strong></p></div>		</div>
</li>
</ul>
<div class="form-row place-order">
<noscript>
    Trình duyệt của bạn không hỗ trợ JavaScript, hoặc nó bị vô hiệu hóa, hãy đảm bảo bạn nhấp vào <em>Cập nhật giỏ hàng</em> trước khi bạn thanh toán. Bạn có thể phải trả nhiều hơn số tiền đã nói ở trên, nếu bạn không làm như vậy.			<br/><button type="submit" class="button alt" name="woocommerce_checkout_update_totals" value="Cập nhật tổng">Cập nhật tổng</button>
</noscript>

    <div class="woocommerce-terms-and-conditions-wrapper">
<div class="woocommerce-privacy-policy-text"></div>
    </div>


<button type="submit" class="button alt" name="woocommerce_checkout_place_order" id="place_order" value="Đặt hàng" data-value="Đặt hàng">Đặt hàng</button>

<input type="hidden" id="woocommerce-process-checkout-nonce" name="woocommerce-process-checkout-nonce" value="f4a51a956c" /><input type="hidden" name="_wp_http_referer" value="/trang-thanh-toan/" />	</div>
</div>
</div>


</form>

</div>
</div><!-- .entry-content -->

</article><!-- #post-59 -->

</main><!-- #main -->

<!-- Navbar -->
<div class="app-navbar">
    <div class="container" style="padding: 0 10px;">
        <div class="navbar-content ">
            <div class="navbar-content-item">
                <a href="https://app.anphuclinh.net" class="active">
                    <i class="flaticon-house"></i>
                    Trang Chủ
                </a>
            </div>
            <div class="navbar-content-item">
                <a href="https://app.anphuclinh.net/lich-su">
                    <i class="flaticon-invoice"></i>
                    Lịch Sử
                </a>
            </div>
            <div class="navbar-content-item" data-bs-toggle="modal" data-bs-target="#addBalance">
                <a href="javscript:;">
                    <i class="flaticon-menu-1"></i>
                    Rút Tiền
                </a>
            </div>
            <div class="appbar-item appbar-options navbar-content-item">
                    <div class="appbar-option-item appbar-option-notification">
                        <a href="https://app.anphuclinh.net/log-thong-bao"><i class="flaticon-bell"></i>Thông báo</a>
                                                                                        <span class="option-badge">31</span>
                                                    </div>
            </div>
            <!--
            <div class="navbar-content-item">
                <a href="https://app.anphuclinh.net/qrcode-scan">
                    <i class="flaticon-credit-card"></i>
                    Quét Mã
                </a>
            </div> -->
            <div class="navbar-content-item">
                <a href="https://app.anphuclinh.net/settings">
                    <i class="flaticon-settings"></i>
                    Thiết Lập
                </a>
            </div>
        </div>
    </div>
</div>
<!-- Navbar -->
</div>
</div>
<!-- Body-content -->
@endsection