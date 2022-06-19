<template lang="">
    <form onsubmit="return false;" method="post" class="checkout woocommerce-checkout" action="#" ref="purchaseForm">
        <div class="col2-set row" id="customer_details">
            <div class="col-sm-6 col-12">
                <div class="woocommerce-billing-fields">
                    <h3>Thông tin thanh toán</h3>
                    <div class="woocommerce-billing-fields__field-wrapper">
                        <p class="form-row form-row-first thwcfd-field-wrapper thwcfd-field-text validate-required"
                            id="billing_first_name_field" data-priority="10">
                            <label for="billing_first_name" class="">Tên&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label>
                            <span class="woocommerce-input-wrapper">
                                <input type="text"
                                    class="form-control" name="name"
                                    id="billing_first_name" placeholder="" v-model="order_info.name"
                                    autocomplete="given-name" />
                            </span>
                        </p>
                        <p class="form-row form-row-wide thwcfd-field-wrapper thwcfd-field-tel validate-required validate-phone"
                            id="billing_phone_field" data-priority="30">
                            <label for="billing_phone" class="">Số điện thoại&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label>
                            <span class="woocommerce-input-wrapper">
                                <input type="tel"
                                    class="form-control" name="phone"
                                    id="billing_phone" placeholder="" v-model="order_info.phone"
                                    autocomplete="tel" />
                            </span>
                        </p>
                        <div v-if="!use_old_address">
                            <p class="form-row validate-required" id="billing_svw_province_field"
                                data-priority="90">
                                <label for="billing_svw_province" class="">Tỉnh/Thành Phố&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label>
                                <span class="woocommerce-input-wrapper">
                                    <select id="billing_svw_province"
                                        class="select wc-enhanced-select svw-select-province"
                                        data-placeholder=""
                                        v-model="selectedProvince"
                                        @change="onChange($event, 'p', 'selectedProvince', 'districts')">
                                        <option v-for="province in provinces" :value="province.code">{{ province.name }}</option>
                                    </select>
                                </span>
                            </p>
                            <p class="form-row form-row-wide validate-required"
                                id="billing_svw_district_field" data-priority="90">
                                <label for="billing_svw_district" class="">Quận/Huyện&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label>
                                <span class="woocommerce-input-wrapper">
                                    <select id="billing_svw_district"
                                        class="select wc-enhanced-select svw-select-district"
                                        data-allow_clear="true" data-placeholder="Chọn Quận/ Huyện"
                                        v-model="selectedDistrict"
                                        @change="onChange($event, 'd', 'selectedDistricts', 'wards')">
                                        <option v-for="district in districts" :value="district.code">{{ district.name }}</option>
                                    </select>
                                </span>
                            </p>
                            <p class="form-row form-row-wide update_totals_on_change validate-required"
                                id="billing_svw_ward_field" data-priority="100">
                                <label for="billing_svw_ward" class="">Phường/Xã&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label>
                                <span class="woocommerce-input-wrapper">
                                    <select id="billing_svw_ward"
                                        class="select wc-enhanced-select svw-select-ward"
                                        v-model="selectedWard"
                                        data-allow_clear="true" data-placeholder="Chọn Phường/ Xã">
                                        <option v-for="ward in wards" :value="ward.code">{{ ward.name }}</option>
                                    </select>
                                </span>
                            </p>
                            <p class="form-row form-row-wide address-field thwcfd-field-wrapper thwcfd-field-text validate-required"
                                id="billing_address_1_field" data-priority="1000">
                                <label for="billing_address_1" class="">Địa chỉ&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label>
                                <span class="woocommerce-input-wrapper">
                                    <input type="text"
                                        class="form-control" name="address_1"
                                        id="billing_address_1" placeholder="Địa chỉ"
                                        v-model="order_info.address"
                                        autocomplete="address-line1" />
                                </span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-12">
                <div class="woocommerce-additional-fields">
                    <div class="woocommerce-additional-fields__field-wrapper">
                        <p class="form-row notes thwcfd-field-wrapper thwcfd-field-textarea"
                            id="order_comments_field" data-priority="">
                            <label for="order_comments" class="">Ghi chú đơn hàng&nbsp;<span class="optional">(tuỳ chọn)</span></label>
                            <span
                                class="woocommerce-input-wrapper">
                                <textarea v-model="order_info.notes" class="form-control" id="order_comments"
                                    placeholder="Ghi chú về đơn hàng, ví dụ: thời gian hay chỉ dẫn địa điểm giao hàng chi tiết hơn."
                                    rows="2" cols="5"></textarea>
                            </span>
                        </p>
                        <div class="form-check" style="font-size: 20px;" v-if="Object.keys(this.meta).length > 0">
                            <input class="form-check-input" type="checkbox" v-model="use_old_address" v-bind:value="true" id="addressCheckChecked" checked>
                            <label class="form-check-label" for="addressCheckChecked">
                                Sử dụng địa chỉ đã đặt hàng trước đó: {{ meta.address }}
                            </label>
                        </div>
                        <div class="form-check" style="font-size: 20px;">
                            <input class="form-check-input" type="checkbox" v-model="order_info.is_uses_point" v-bind:value="true" id="usePointCheckChecked" checked>
                            <label class="form-check-label" for="usePointCheckChecked">
                                Sử dụng điểm để thanh khoản
                            </label>
                        </div>
                    </div>
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
                            {{ product.name }}
                            <strong class="product-quantity">&times; <input type="number" class="qty" style="background-color: white; width: 5rem;" v-model="order_info.qty"></strong>
                        </td>
                        <td class="product-total">
                            <span class="woocommerce-Price-amount amount">
                                <bdi v-if="user.has_combo">{{ format_currency(product.combo_price * order_info.qty) }}</bdi>
                                <bdi v-else>{{ format_currency(product.price * order_info.qty) }}</bdi>
                            </span>
                        </td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr class="fee" v-if="product.is_combo == 0">
                        <th>Thuế VAT 10%</th>
                        <td>
                            <span class="woocommerce-Price-amount amount">
                                <bdi>{{ format_currency(calculated_product.vat) }}</bdi>
                            </span>
                        </td>
                    </tr>
                    <tr class="fee" v-if="product.is_combo == 0">
                        <th v-if="!user.has_combo">Số điểm có thể thanh toán tối đa 38% đơn hàng là {{ calculated_product.max_point_discount }} điểm (Chưa mua combo)</th>
                        <th v-else>Số điểm có thể thanh toán tối đa 50% đơn hàng là {{ calculated_product.max_point_discount }} điểm (Đã mua combo)</th>
                        <td>
                            <span class="woocommerce-Price-amount amount">
                                <bdi>{{ format_currency(calculated_product.max_price_discount) }}</bdi>
                            </span>
                        </td>
                    </tr>
                    <tr class="order-total">
                        <th>Tổng</th>
                        <td>
                            <strong>
                                <span class="woocommerce-Price-amount amount">
                                    <bdi>{{ format_currency(calculated_product.price) }}</bdi>
                                </span>
                            </strong>
                        </td>
                    </tr>
                </tfoot>
            </table>

            <div id="payment" class="woocommerce-checkout-payment">
                <ul class="wc_payment_methods payment_methods methods">
                    <li class="wc_payment_method payment_method_tpb-gateway-mh">
                        <input id="payment_method_tpb-gateway-mh" type="radio"
                            class="input-radio" name="payment_method" value="tpb-gateway-mh"
                            checked='checked' data-order_button_text="" />

                        <label for="payment_method_tpb-gateway-mh">
                            Thanh toán ACB Bank
                        </label>
                        <div class="payment_box payment_method_tpb-gateway-mh">
                            <div> Thanh toán online bằng ACB Bank ngay tức thì</div>
                            <p>
                                Hiện tại bạn đang có <strong>{{ calculated_product.point }} điểm APL </strong><br/>
                                Số tiền còn lại cần thanh toán là <strong>{{ format_currency(calculated_product.price) }}</strong>
                            </p>
                            <div class="woo-apl">
                                <p>Thông tin chuyển khoản: </p>
                                <p class="woo-apl-detail">Tên ngân hàng: <strong>{{ bank.name }}</strong></p>
                                <p class="woo-apl-detail">CHỦ TÀI KHOẢN: <strong> {{ bank.owner }}</strong></p>
                                <p>SỐ TÀI KHOẢN: <strong>{{ bank.number }}</strong></p>
                                <p>NỘI DUNG: <strong>apl{{ transaction.id }}</strong></p>
                                <p>LƯU Ý: <strong>Nếu số tiền trong tài khoản đủ với giao dịch, hệ thống sẽ tự động trừ vào ví chính, bạn không cần chuyển khoản!</strong></p>
                            </div>
                        </div>
                    </li>
                </ul>

                <div class="form-row place-order">
                    <noscript>
                        Trình duyệt của bạn không hỗ trợ JavaScript, hoặc nó bị vô hiệu hóa, hãy
                        đảm bảo bạn nhấp vào <em>Cập nhật giỏ hàng</em> trước khi bạn thanh
                        toán. Bạn có thể phải trả nhiều hơn số tiền đã nói ở trên, nếu bạn không
                        làm như vậy. <br /><button type="submit" class="button alt"
                            name="woocommerce_checkout_update_totals" value="Cập nhật tổng">Cập
                            nhật tổng</button>
                    </noscript>

                    <div class="woocommerce-terms-and-conditions-wrapper">
                        <div class="woocommerce-privacy-policy-text"></div>
                    </div>

                    <button type="submit" class="button alt"
                            name="woocommerce_checkout_place_order" id="place_order"
                            value="Đặt hàng" data-value="Đặt hàng"
                            @click="orderSubmit($event)"
                            v-if="transaction.amount == 0">Đặt hàng</button>
                    <button type="button" class="button alt"
                            name="woocommerce_checkout_place_order" id="place_order"
                            value="Bạn đã đặt sản phẩm này, Vui lòng đợi xác nhận." data-value="Bạn đã đặt sản phẩm này, Vui lòng đợi xác nhận."
                            v-else>Bạn đã đặt sản phẩm này, Vui lòng đợi xác nhận.</button>&nbsp;
                    <span>Tên/Số điện thoại tuyến trên: {{ user.ref_by.name + '/' + (user.ref_by.phone || '') }}</span>
                </div>
            </div>
        </div>
    </form>
</template>
<script>
import axios from 'axios'

export default {
    props: ['meta', 'provinces', 'product', 'user', 'bank', 'transaction'],
    data() {
        return {
            endpoint: 'https://provinces.open-api.vn/api/',
            order_info: {
                name: '',
                phone: '',
                address: '',
                qty: 1,
                notes: '',
                is_uses_point : this.user.is_uses_point
            },
            districts: [],
            wards: [],
            selectedProvince: 1,
            selectedDistrict: 1,
            selectedWard: null,
            use_old_address: false,
            calculated_product: {},
        }
    },
    watch: {
        'order_info.qty': function(val) {
            this.updateQty(val);
        },
        'order_info.is_uses_point': async function(val) {
            let loader = this.$loading.show({})
            await axios.post(route('user.ajax.account.update'), {
                action_type: 'is_uses_point',
                is_uses_point: val
            }).then(({data}) => {
                loader.hide();
                this.$swal.fire((data.msg == 'success' ? 'Thành công' : 'Lỗi!'), data.message, data.msg).then(result => {
                    if (result.isConfirmed && data.msg != 'success') {
                        location.reload();
                    }
                })
            })
            .catch(({response}) => console.log(response.data))
            await this.updateQty(this.order_info.qty);
        },
    },
    mounted() {
        if (Object.keys(this.meta).length) {
            this.order_info.name = this.meta.name;
            this.order_info.phone = this.meta.phone;
            this.use_old_address = true;
        }
        this.getProvinces('p', 'selectedProvince', 'districts');
        this.updateQty(1);
    },
    methods: {
        async updateQty(val) {
            await axios.post(route('user.ajax.product.calc', {
                'product': this.product.id
            }), {
                'amount': val
            }).then(({data}) => {
                this.calculated_product = data;
            })
        },
        format_currency(val) {
            return (new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(val))
        },
        onChange(e, path, selected, getProp) {
            this[selected] = e.target.value;
            this.getProvinces(path, selected, getProp)
        },
        getProvinces(path, selected, getProp) {
            var path = path + '/' + this[selected];
            axios.post(route('ajax.provinces.get'), {
                endpoint: this.endpoint + path + '?depth=2',
            }).then(({data}) => {
                this[getProp] = data[getProp];
            })
        },
        orderSubmit(e) {
            e.preventDefault();
            this.$swal.fire({
                title: 'Xác nhận đã chuyển khoản?',
                text: "Xác nhận bạn đã thực hiện chuyển khoản thanh toán!",
                icon: 'info',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Tôi đã thanh toán!'
            }).then(async (result) => {
                if (result.isConfirmed) {
                    await this.order()
                }
            });
        },
        async order() {
            let loader = this.$loading.show({});

            var province = this.provinces.filter(p => p.code == this.selectedProvince)
            var district = this.districts.filter(d => d.code == this.selectedDistrict)
            var ward = this.wards.filter(w => w.code == this.selectedWard)

            if (this.use_old_address || (province.length && district.length && ward.length)) {
                if (this.use_old_address) {
                    this.order_info.address = this.meta.address;
                } else {
                    var addresses = [this.order_info.address, ward[0].name, district[0].name, province[0].name];
                    this.order_info.address = addresses.join(', ');
                }

                await axios.post(route('user.ajax.purchases.products.store', {
                    product: this.product.id,
                    transaction: this.transaction.id
                }), this.order_info).then(({data}) => {
                    this.$swal.fire(data.data.title, data.data.msg, data.type).then(async (result) => {
                        if (result.isConfirmed) {
                            location.href = '/';
                        }
                    });
                }).catch(error => this.$swal.fire(error.response.title, error.response.msg, error.response.type))
            } else {
                this.$swal.fire('Lỗi!', 'Vui lòng điền đầy đủ thông tin.', 'error')
            }
            loader.hide();
        },
    },
}
</script>
