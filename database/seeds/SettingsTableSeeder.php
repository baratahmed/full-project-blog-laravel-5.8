<?php

use Illuminate\Database\Seeder;

class SettingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Setting::create([
            'site_name' => "Cherished Dream",
            'contact_number' => "+8801706351202",
            'contact_email' => "wizardwireshark1023@gmail.com",
            'address' => "1 no police gate,Dampara,WASA,Chittagong"
        ]);
    }
}
