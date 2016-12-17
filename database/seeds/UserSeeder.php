<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
	    'name' => 'Mad Admin',
	    'email' => 'admin@madcomics.ng',
	    'phone' => '08055146000',
	    'password' => Hash::make('were4Admin!'),
	    'admin' => true,
	    'optin' => true,
	    'created_at' => Carbon::now(),
	    'updated_at' => Carbon::now(),
	]);
    }
}
