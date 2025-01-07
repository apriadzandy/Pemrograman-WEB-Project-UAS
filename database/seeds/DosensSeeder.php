<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class DosensSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('dosens')->insert([
            'id' => 1,
            'nidn' => 1102110,
            'nama' => 'Apriadzandy Putra, M.Kom',
            'tempat_lahir' => 'Kisaran',
            'tanggal_lahir' => date('Y-m-d'),
            'alamat' => 'Malang',
            'agama' => 'Islam',
            'telp' => '0821393993',
            'email' => 'Zandy@gmail.com',
            'jenis_kelamin' => 'L',
            'id_fakultas' => 1,
            'photo' => "",
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);
    }
}
