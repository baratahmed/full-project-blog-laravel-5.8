<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = App\User::create([
            'name' => 'Cherished Dream',
            'email' => 'cherished@dream.com',
            'password' => bcrypt('password'),
            'admin' => 1,
        ]);

        App\Profile::create([
            'user_id' => $user->id,
            'avatar' => 'uploads/avatars/1.jpg',
            'about' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. In cum corporis accusantium iusto quae voluptatibus autem cumque iste consequatur aspernatur quam suscipit dolore quaerat illo omnis, sint doloremque, velit veritatis?',
            'facebook' => 'http://www.facebook.com',
            'youtube' => 'http://www.youtube.com',
        ]);
        
    }
}
