<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $this->call(UserSeeder::class);
        $this->call(ComicSeeder::class);
        $this->call(VolumeSeeder::class);
        $this->call(IssueSeeder::class);
        $this->call(PageSeeder::class);
    }
}
