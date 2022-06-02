<template>
    <div class="container"><img :src="'/images/packages/' + Math.round(props.package.amount) + '.png'">
        <h4 style="padding: 10px;text-align: center;">THÔNG TIN GÓI ĐẦU TƯ</h4>
        <table id="packageTable">
            <tbody>
                <tr>
                    <td>Giá CP hiện tại</td>
                    <td>{{ number_format(props.rate) }}</td>
                </tr>
                <tr>
                    <td>Tổng CP nhận được</td>
                    <td>{{ number_format(props.package.amount / props.rate) }}</td>
                </tr>
                <tr>
                    <td>Tổng giá trị</td>
                    <td>{{ number_format(props.package.amount) }}</td>
                </tr>
            </tbody>
        </table>

        <table class="table-payment">
            <tbody>
                <tr>
                    <th colspan="2">Thông tin chuyển khoản</th>
                </tr>
                <tr>
                    <td>Chủ tài khoản</td>
                    <td><b>{{ props.bank.owner }}</b></td>
                </tr>
                <tr>
                    <td>Số tài khoản</td>
                    <td>
                        <div class="d-flex justify-space-between"><b>{{ props.bank.number }}</b> <!-- <img class="copy-btn" data-c="03529719101" src="https://app.anphuclinh.net/wp-content/plugins/tpb-mh//public/images/copy.svg" width="30px"> --></div>
                    </td>
                </tr>
                <tr>
                    <td>Ngân hàng</td>
                    <td><b>{{ props.bank.name }}</b></td>
                </tr>
                <tr>
                    <td>Số tiền</td>
                    <td><b>{{ number_format(props.package.amount) }}</b></td>
                </tr>
                <tr>
                    <td>Nội dung chuyển khoản</td>
                    <td>
                        <div class="d-flex justify-space-between"><b>APL{{ props.transaction.id }}</b> <!-- <img class="copy-btn" data-c="TPB69061" src="https://app.anphuclinh.net/wp-content/plugins/tpb-mh//public/images/copy.svg" width="30px"> --></div>
                    </td>
                </tr>
                <tr class="" style="" pading="1em;">
                    <td colspan="2" style="text-align:center;">
                        <small style="color: red;"> <b>*Lưu ý: Nhập nội dung chính xác để đơn hàng kích hoạt tự động. Thời gian xử lý giao dịch trung bình từ 30-60s, Vui lòng thanh toán trước khi bấm xác nhận!</b></small>
                    </td>
                </tr>
            </tbody>
        </table>
        <a @click="confirm()" v-if="transaction.amount == 0" type="button" class="btn btn-primary btn-lg" style="text-align: center;margin: auto;display: block;">Xác nhận đã thanh toán gói đầu tư này</a>
        <a v-else type="button" class="btn btn-primary btn-lg" style="text-align: center;margin: auto;display: block;">Bạn đã đặt sản phẩm này, Vui lòng đợi xác nhận.</a>
    </div>
</template>
<script setup>
import { inject } from 'vue'

const swal = inject('$swal')
const loading = inject('$loading')
const props = defineProps(['transaction', 'package', 'rate', 'bank'])

function number_format(val) {
    return new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'vnd' }).format(Math.round(val))
}

function confirm() {
    swal.fire({
        title: 'Xác nhận đã chuyển khoản?',
        text: 'Xác nhận bạn đã thực hiện chuyển khoản thanh toán?',
        icon: 'info',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Tôi đã thanh toán!'
    }).then(async result => {
        if (result.isConfirmed) {
            await this.confirmed()
        }
    });
}

async function confirmed() {
    let loader = loading.show({});
    await axios.post(route('user.ajax.purchases.packages.store', {
        package: props.package.id,
        transaction: props.transaction.id
    })).then(async ({data}) => {
        swal.fire(data.data.title, data.data.msg, data.type).then(async result => {
            if (result.isConfirmed) {
                location.href = '/';
            }
        })
    }).catch(error => swal.fire(error.response.title, error.response.msg, error.response.type))
    loader.hide();
}
</script>
