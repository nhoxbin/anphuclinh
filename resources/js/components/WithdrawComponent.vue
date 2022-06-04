<template>
    <div class="modal fade" id="ruttien" tabindex="-1" aria-labelledby="ruttien" aria-hidden="true">
        <div class="modal-dialog modal-dialog-animatezoom">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Rút tiền vào tài khoản</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="form-bank" class="form-horizontal">
                        <div class="form-group row">
                            <label class="col-sm-4 control-label text-sm-right">Ngân hàng nhận tiền </label>
                            <div class="col-md-6 col-sm-8">
                                <select class="form-control" name="bank_id" @change="infoBank($event)">
                                    <option value="0" class="" selected="selected">Chọn ngân hàng
                                    </option>
                                    <option v-for="ubank in state.ubanks" :key="ubank.id" :value="ubank.id">{{ ubank.alias }}</option>
                                </select>

                                <span>Chủ tài khoản: <b>{{ state.ubank.host }}</b></span><br />
                                <span>Số tài khoản: <b>{{ state.ubank.number }}</b></span><br />
                                <span>Chi Nhánh: <b>{{ state.ubank.branch }}</b></span>
                            </div>
                        </div>

                        <div class="form-group row mb-2">
                            <label class="col-sm-4 control-label text-sm-right">Số tiền yêu cầu rút <code>*</code>
                            </label>
                            <div class="col-md-6 col-sm-8">
                                <input type="number" class="form-control" id="wd_money" name="amount"
                                    maxlength="10" placeholder="Nhập số tiền yêu cầu rút">
                            </div>
                        </div>
                        <!--<div class="form-group row mb-2">
                            <label class="control-label text-sm-right">Mã OTP <code>*</code> </label>
                            <div class="" style="position: relative;">
                                <input type="text" class="form-control" style="padding-right: 115px;" name="otp" placeholder="Nhập mã OTP">
                                <button class="btn btn-buy1 btn-outline-secondary send_otp" style="width: 115px;position: absolute;right: 13px;height: 100%;top: 0;border: 0;    line-height: 100%;background: #0dcaf0  ;color: #fff;" type="button">Nhận OTP</button>
                            </div>
                        </div>-->
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                    <button type="button" class="btn btn-primary" @click="withdraw()">Yêu cầu rút</button>
                </div>
            </div>
        </div>
    </div>
</template>
<script setup>
    import { reactive } from 'vue'

    const state = reactive({
        ubanks: null,
        ubank: {
            host: '',
            number: '',
            branch: '',
        }
    })

    getUserBanks()

    function getUserBanks() {
        axios.get(route('user.ajax.ubanks.index')).then(({data}) => state.ubanks = data.data)
    }

    function infoBank(e) {
        const rawObject = JSON.parse(JSON.stringify(state.ubanks));
        var bank = rawObject.filter(bank => bank.id == e.target.value)
        state.ubank = bank[0]
    }

    function withdraw() {
        axios.post(route('user.ajax.withdraw')).then(({data}) => {
            this.$swal.fire(data.data.title, data.data.msg, data.type)
        }).catch(({response}) => console.log(response.errors))
    }
</script>
