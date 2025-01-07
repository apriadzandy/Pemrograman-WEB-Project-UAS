<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'id' => 1,
            'name' => 'Admin1',
            'username' => 'admin@gmail.com',
            'password' => Hash::make('11111111'),
            'role' => 'Administrator',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);
        DB::table('users')->insert([
            'id' => 2,
            'name' => 'APRIADZANDY PUTRA',
            'username' => '202210370311204',
            'password' => Hash::make('11111111'),
            'role' => 'Mahasiswa',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);
        DB::table('users')->insert([
            'id' => 3,
            'name' => 'Apriadzandy Putra, M.Kom',
            'username' => '1102110',
            'password' => Hash::make('11111111'),
            'role' => 'Dosen',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);
    }
}
