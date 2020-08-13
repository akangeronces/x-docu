<?php

use Illuminate\Database\Seeder;
use App\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $users = [['Deddy Hendra', '197505042006041002']];

        foreach ($users as $user) {
            $newUser = new User();
            $newUser->name = $user[0];
            $newUser->username = $user[1];
            $newUser->password = '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'; //password

            $newUser->save();
        }
    }
}
