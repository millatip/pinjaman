<?php

class UserTableSeeder extends Seeder{
    public function run(){
        DB::table('User')->truncate();
    }
}