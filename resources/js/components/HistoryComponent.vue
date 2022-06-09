<template>
    <div class="container-page">
        <!-- Page-header -->
        <div class="page-header">
            <div class="page-header-title page-header-item">
                <h3  style="color: #fff;">Lịch sử giao dịch</h3>
            </div>
        </div>
        <!-- Page-header -->
        <div class="tab-selector">
            <!-- Tab-selector-list -->
            <ul class="tab-selector-list mb-3">
                <li class="active" data-tab-list="1">
                    <button style="background: url({{asset('images/btn.png')}}) 3px 5px no-repeat;
                    background-position: center;
                    background-size: cover;
                    border: none;
                    width:max-content;
                    margin:0 auto;
                    padding: 2px 10px;">Mua hàng</button>
                </li>
                <li data-tab-list="3" class="">
                    <button style="background: url({{asset('images/btn.png')}}) 3px 5px no-repeat;
                    background-position: center;
                    background-size: cover;
                    border: none;
                    width:max-content;
                    margin:0 auto;
                    padding: 2px 10px;">Rút tiền</button>
                </li>
                <li data-tab-list="5" class="">
                    <button style="background: url({{asset('images/btn.png')}}) 3px 5px no-repeat;
                    background-position: center;
                    background-size: cover;
                    border: none;
                    width:max-content;
                    margin:0 auto;
                    padding: 2px 10px;">Nhận điểm</button>
                </li>
            </ul>
            <!-- Tab-selector-list -->

            <!-- Tab-selector-details -->
            <div class="tab-selector-details">
                <div class="tab-selector-details-item active" data-tab-details="1">
                    <p>Chưa có lịch sử mua hàng !</p>
                </div>
                <div class="tab-selector-details-item" data-tab-details="3">
                    <p>Chưa có lịch sử rút tiền !</p>
                </div>
                <div class="tab-selector-details-item" data-tab-details="5">
                    <p>Chưa có lịch sử nhận điểm !</p>
                </div>
            </div>
        </div>
            <!-- Tab-selector-details -->
    </div>
</template>
<script setup>
    import { reactive } from 'vue'

    const state = reactive({

    })
</script>
