<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class MahasiswasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('mahasiswas')->insert([
            'id' => 1,
            'nim' => 202210370311204,
            'nama' => 'APRIADZANDY PUTRA',
            'tempat_lahir' => 'HALTIm',
            'tanggal_lahir' => date('Y-m-d'),
            'alamat' => 'Malang',
            'id_prodi' => 1,
            'id_kelas' => 1,
            'agama' => 'Islam',
            'telp' => '0821393993',
            'email' => 'PUTRA@gmail.com',
            'jenis_kelamin' => 'L',
            'photo' => "",
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);
    }
}
