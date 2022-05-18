<?php

namespace Database\Seeders;

use App\Models\Bank;
use Illuminate\Database\Seeder;

class BankSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $banks = [
            ['name' => 'NGAN HANG TMCP NGOAI THUONG VIET NAM (VIETCOMBANK)'],
            ['name' => 'NGAN HANG NONG NGHIEP VA PHAT TRIEN NONG THON (AGRIBANK)'],
            ['name' => 'NGAN HANG TMCP TIEN PHONG (TPBANK)'],
            ['name' => 'NGAN HANG TMCP PHAT TRIEN TP.HCM (HDB)'],
            ['name' => 'NGAN HANG TMCP VIET NAM THINH VUONG (VPBANK)'],
            ['name' => 'NGAN HANG TMCP DAU KHI TOAN CAU (GPB)'],
            ['name' => 'NGAN HANG TMCP QUAN DOI (MBBANK)'],
            ['name' => 'NGAN HANG TMCP DAI DUONG (OCEANBANK)'],
            ['name' => 'NGAN HANG TNHH MTV HONGLEONG VIET NAM'],
            ['name' => 'NGAN HANG TMCP BAO VIET (BVB)'],
            ['name' => 'NGAN HANG TMCP DAU TU VA PHAT TRIEN VIET NAM (BIDV)'],
            ['name' => 'NGAN HANG TMCP SAI GON THUONG TIN (SACOMBANK)'],
            ['name' => 'NGAN HANG TMCP BUU DIEN LIEN VIET (LPB)'],
            ['name' => 'NGAN HANG TNHH INDOVINA'],
            ['name' => 'NGAN HANG TMCP A CHAU (ACB)'],
            ['name' => 'NGAN HANG TMCP AN BINH (ABBANK)'],
            ['name' => 'NGAN HANG TMCP QUOC DAN (NCB)'],
            ['name' => 'NGAN HANG CONG NGHIEP HAN QUOC (IBK)'],
            ['name' => 'NGAN HANG TNHH MTV CIMB (CIMB)'],
            ['name' => 'NGAN HANG TMCP XUAT NHAP KHAU VIET NAM (EXIMBANK)'],
            ['name' => 'NGAN HANG TMCP DONG NAM A (SEABANK)'],
            ['name' => 'NGAN HANG TMCP SAI GON (SCB)'],
            ['name' => 'NGAN HANG TMCP DONG A (DONGABANK)'],
            ['name' => 'NGAN HANG TMCP VIET A (VAB)'],
            ['name' => 'NGAN HANG TMCP SAI GON CONG THUONG (SAIGONBANK)'],
            ['name' => 'NGAN HANG TMCP XANG DAU PETROLIMEX (PG BANK)'],
            ['name' => 'NGAN HANG TMCP DAI CHUNG VIET NAM (PVCOMBANK)'],
            ['name' => 'NGAN HANG TMCP KIEN LONG (KIENLONGBANK)'],
            ['name' => 'NGAN HANG TMCP BAN VIET (VIETCAPITAL BANK)'],
            ['name' => 'NGAN HANG TNHH MTV PUBLIC VIET NAM (PBVN)'],
            ['name' => 'NGAN HANG TMCP CONG THUONG VIET NAM (VIETINBANK)'],
            ['name' => 'NGAN HANG TMCP PHUONG DONG (OCB)'],
            ['name' => 'NGAN HANG TMCP HANG HAI VIET NAM (MSB)'],
            ['name' => 'NGAN HANG TMCP SAI GON - HA NOI (SHB)'],
            ['name' => 'NGAN HANG TMCP VIET NAM THUONG TIN (VIETBANK)'],
            ['name' => 'NGAN HANG LIEN DOANH VIET - NGA (VRB)'],
            ['name' => 'NGAN HANG TMCP NAM A (NAMABANK)'],
            ['name' => 'NGAN HANG TNHH MTV SHINHAN VIET NAM (SHBVN)'],
            ['name' => 'NGAN HANG TMCP QUOC TE VIB'],
            ['name' => 'Ngân hàng TMCP Kỹ thương Việt Nam (TECHCOMBANK)'],
            ['name' => 'Ví Điện tử'],
        ];
        Bank::insert($banks);
    }
}
