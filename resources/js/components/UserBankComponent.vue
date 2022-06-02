<template>
    <div class="container">
        <div class="boxbody_tbl ng-scope" ng-app="App" ng-controller="List">
            <div class="boxbody_top">
                <span>
                    <h1 class="uppercase">Danh sách ngân hàng</h1>
                </span>
            </div>
            <div class="boxbody_body">
                <button @click="resetFields()" type="button pull-right" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modifyBank" style="margin-bottom:10px;">
                    <i class="fa fa-plus"></i>
                    Thêm mới
                </button>
                <div class="clear"></div>
                <div class="table-responsive">
                    <div class="clear"></div>
                    <table id="example"
                        class="table table-hover table-bordered dt-responsive nowrap dataTable no-footer dtr-inline"
                        style="width: 100%;" role="grid">
                        <thead>
                            <tr role="row">
                                <th>Tên</th>
                                <th>Tên ngân hàng</th>
                                <th>Chủ tài khoản</th>
                                <th>Số tài khoản</th>
                                <th>Chi nhánh</th>
                                <th>Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="ubank in ubanks" :key="ubank.id">
                                <td>{{ ubank.alias }}</td>
                                <td>{{ ubank.bank_id }}</td>
                                <td>{{ ubank.host }}</td>
                                <td>{{ ubank.number }}</td>
                                <td>{{ ubank.branch }}</td>
                                <td>
                                    <div class="btn-group btn-group-sm">
                                        <button class="btn btn-info" @click="getEditUBank(ubank)">Sửa</button>
                                        <button class="btn btn-danger" @click="deleteUBank(ubank)">Xóa</button>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div id="modifyBank" class="modal fade" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Thêm ngân hàng</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="#" id="addBankForm" class="form-inline" method="post" onsubmit="return false;">
                            <div class="row mb-3">
                                <label class="col-form-label col-sm-3" for="UB_Name">Tên</label>
                                <div class="col-sm-9">
                                    <input class="form-control" id="ub_name" v-model="ubank.alias"
                                        placeholder="Tên" type="text" required>
                                    <span class="field-validation-valid text-danger" data-valmsg-for="ub_name"
                                        data-valmsg-replace="true" v-if="errors.alias && errors.alias.length">{{ errors.alias.join(', ') }}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-form-label col-sm-3" for="ub_bankname">Tên ngân hàng</label>
                                <div class="col-sm-9">
                                    <select class="form-control" id="ub_bankname" v-model="ubank.bank_id" tabindex="-1"
                                        aria-hidden="true" required>
                                        <option value="0">Chọn ngân hàng</option>
                                        <option v-for="bank in banks" :key="bank.id" :value="bank.id">{{ bank.name }}</option>
                                    </select>
                                    <span class="field-validation-valid text-danger"
                                        data-valmsg-for="ub_bankname" data-valmsg-replace="true" v-if="errors.alias && errors.alias.length">{{ errors.alias.join(', ') }}</span>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label class="col-form-label col-sm-3" for="ub_bankownname">Chủ tài khoản</label>
                                <div class="col-sm-9">
                                    <input class="form-control" id="ub_ownname" v-model="ubank.host" placeholder="Chủ tài khoản" type="text" required>
                                    <span class="field-validation-valid text-danger"
                                        data-valmsg-for="ub_ownname" data-valmsg-replace="true" v-if="errors.host && errors.host.length">{{ errors.host.join(', ') }}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-form-label col-sm-3" for="ub_number">Số tài khoản</label>
                                <div class="col-sm-9">
                                    <input class="form-control" data-val="true" id="ub_number" v-model="ubank.number" placeholder="Số tài khoản" type="text" required>
                                    <span class="field-validation-valid text-danger" data-valmsg-for="ub_number"
                                        data-valmsg-replace="true" v-if="errors.number && errors.number.length">{{ errors.number.join(', ') }}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-form-label col-sm-3" for="ub_branch">Chi nhánh</label>
                                <div class="col-sm-9">
                                    <input class="form-control" data-val="true"
                                        id="ub_branch" v-model="ubank.branch" placeholder="Chi nhánh" type="text" required>
                                    <span class="field-validation-valid text-danger" data-valmsg-for="ub_branch"
                                        data-valmsg-replace="true" v-if="errors.branch && errors.branch.length">{{ errors.branch.join(', ') }}</span>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                        <button type="button" class="btn btn-primary" @click="modifyBank">Lưu</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            ubanks: {},
            ubank: {
                alias: '',
                bank_id: 0,
                host: '',
                number: '',
                branch: '',
            },
            isEdit: false,
            banks: {},
            errors: {}
        }
    },
    mounted() {
        this.getBanks();
        this.getUserBanks();
    },
    methods: {
        resetFields() {
            this.isEdit = false;
            this.errors = {};
            this.ubank = {
                alias: '',
                bank_id: 0,
                host: '',
                number: '',
                branch: '',
            };
        },
        getUserBanks() {
            axios.get(route('user.ajax.banks.index')).then(({data}) => this.ubanks = data.data)
        },
        getBanks() {
            axios.get(route('ajax.banks.get')).then(({data}) => this.banks = data)
        },
        modifyBank(ubank_id) {
            var route = this.isEdit ? route('user.banks.store') : route('user.banks.edit', ubank_id);
            axios.post(route, this.ubank).then(({data}) => {
                // reset to the original value
                this.resetFields();
                this.$swal.fire(data.data.title, data.data.msg, data.type)
                $('#modifyBank').modal('hide');
            }).catch(({response}) => {
                if (response.data && response.data.errors) {
                    this.errors = response.data.errors
                }
            })
        },
        getEditUBank(ubank) {
            this.isEdit = true;
            this.ubank = ubank;
            $('#modifyBank').modal('show');
        },
        deleteUBank(ubank) {
            this.$swal.fire('Xóa', 'Bạn chắc chắn muốn xóa liên kết ngân hàng?', 'warning')
            // axios.delete(route('user.banks.destroy', ubank.id)).then(({data}) => {})
        }
    },
}
</script>
