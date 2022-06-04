<template>
    <div class="container">
        <div class="boxbody_tbl ng-scope" ng-app="App" ng-controller="List">
            <div class="boxbody_top">
                <span>
                    <h1 class="uppercase">Danh sách ngân hàng</h1>
                </span>
            </div>
            <div class="boxbody_body">
                <button @click="resetFields()" type="button pull-right" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modifyBankModal" style="margin-bottom:10px;">
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
                                <td>{{ banks[banks.findIndex(b => b.id == ubank.bank_id)]['name'] }}</td>
                                <td>{{ ubank.host }}</td>
                                <td>{{ ubank.number }}</td>
                                <td>{{ ubank.branch }}</td>
                                <td>
                                    <div class="btn-group btn-group-sm">
                                        <button class="btn btn-info" @click="getEditUBank(ubank)">Sửa</button>
                                        <button class="btn btn-danger" @click="deleteUBank($event, ubank.id)">Xóa</button>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div id="modifyBankModal" class="modal fade" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                                    <input class="form-control" id="ub_name" v-model="ubankForm.alias"
                                        placeholder="Tên" type="text" required>
                                    <span class="field-validation-valid text-danger" data-valmsg-for="ub_name"
                                        data-valmsg-replace="true" v-if="errors.alias && errors.alias.length">{{ errors.alias.join(', ') }}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-form-label col-sm-3" for="ub_bankname">Tên ngân hàng</label>
                                <div class="col-sm-9">
                                    <select class="form-control" id="ub_bankname" v-model="ubankForm.bank_id" tabindex="-1"
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
                                    <input class="form-control" id="ub_ownname" v-model="ubankForm.host" placeholder="Chủ tài khoản" type="text" required>
                                    <span class="field-validation-valid text-danger"
                                        data-valmsg-for="ub_ownname" data-valmsg-replace="true" v-if="errors.host && errors.host.length">{{ errors.host.join(', ') }}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-form-label col-sm-3" for="ub_number">Số tài khoản</label>
                                <div class="col-sm-9">
                                    <input class="form-control" data-val="true" id="ub_number" v-model="ubankForm.number" placeholder="Số tài khoản" type="text" required>
                                    <span class="field-validation-valid text-danger" data-valmsg-for="ub_number"
                                        data-valmsg-replace="true" v-if="errors.number && errors.number.length">{{ errors.number.join(', ') }}</span>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-form-label col-sm-3" for="ub_branch">Chi nhánh</label>
                                <div class="col-sm-9">
                                    <input class="form-control" data-val="true"
                                        id="ub_branch" v-model="ubankForm.branch" placeholder="Chi nhánh" type="text" required>
                                    <span class="field-validation-valid text-danger" data-valmsg-for="ub_branch"
                                        data-valmsg-replace="true" v-if="errors.branch && errors.branch.length">{{ errors.branch.join(', ') }}</span>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                        <button type="button" class="btn btn-primary" @click="modifyBank()">Lưu</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    props: ['banks'],
    data() {
        return {
            ubanks: {},
            ubankForm: {
                alias: '',
                bank_id: 0,
                host: '',
                number: '',
                branch: '',
            },
            isEdit: false,
            ubank_id: null,
            errors: {}
        }
    },
    mounted() {
        this.getUserBanks();
    },
    methods: {
        resetFields() {
            this.isEdit = false;
            this.errors = {};
            this.ubankForm = {
                alias: '',
                bank_id: 0,
                host: '',
                number: '',
                branch: '',
            };
        },
        getUserBanks() {
            axios.get(route('user.ajax.ubanks.index')).then(({data}) => this.ubanks = data.data)
        },
        async modifyBank() {
            var loader = this.$loading.show({})
            var url = !this.isEdit ? route('user.ajax.ubanks.store') : route('user.ajax.ubanks.edit', this.ubank_id);
            await axios.post(url, this.ubankForm).then(({data}) => {
                this.ubanks.push(data.data.ubank)
                this.$swal.fire(data.data.title, data.data.msg, data.type)
                $('#modifyBankModal').modal('hide');

                // reset to the original value
                this.resetFields();
            }).catch(({response}) => {
                if (response.data && response.data.errors) this.errors = response.data.errors
            })
            loader.hide();
        },
        getEditUBank(ubank) {
            this.isEdit = true;
            this.ubankForm = ubank;
            this.ubank_id = ubank.id;
            $('#modifyBankModal').modal('show');
        },
        deleteUBank(e, ubank_id) {
            e.preventDefault();
            this.$swal.fire({
                title: 'Xóa',
                text: 'Bạn chắc chắn muốn xóa liên kết ngân hàng?',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Xác nhận'
            }).then(async (result) => {
                if (result.isConfirmed) {
                    await this.confirmDelete(ubank_id)
                }
            });
        },
        async confirmDelete(ubank_id) {
            var loader = this.$loading.show({})
            await axios.delete(route('user.ajax.ubanks.destroy', ubank_id)).then(({data}) => {
                this.ubanks.splice(this.ubanks.findIndex(ub => ub.id == ubank_id), 1)
                this.$swal.fire(data.data.title, data.data.msg, data.type)
            })
            loader.hide();
        }
    },
}
</script>
