<?php

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\Post;

class PostsTableSeeder extends Seeder
{
    /**
     * Auto generated seed file.
     *
     * @return void
     */
    public function run()
    {
        $post = Post::firstOrNew([
            'slug' => 'welcome-to-mad-comics',
        ]);
        if (!$post->exists) {
            $post->fill([
                'title'            => 'Welcome to Mad Comics',
                'author_id'        => 0,
                'seo_title'        => null,
                'excerpt'          => 'Welcome to Mad Comics; we hope you like the new site...',
                'body'             => '<p>Welcome to <strong>Mad Comics</strong>; we hope you like the new site...</p>',
                'image'            => 'posts/7uelXHi85YOfZKsoS6Tq.jpg',
                'slug'             => 'welcome-to-mad-comics',
                'meta_description' => 'Welcome post to Mad Comics',
                'meta_keywords'    => 'Mad, Comics, Nigeria',
                'status'           => 'PUBLISHED',
                'featured'         => 0,
            ])->save();
        }

        $post = Post::firstOrNew([
            'slug'             => 'latest-post',
        ]);
        if (!$post->exists) {
            $post->fill([
                'title'            => 'Latest Post',
                'author_id'        => 0,
                'seo_title'        => null,
                'excerpt'          => 'This is the excerpt for the latest post',
                'body'             => '<p>This is the body for the latest post</p>',
                'image'            => 'posts/9txUSY6wb7LTBSbDPrD9.jpg',
                'slug'             => 'latest-post',
                'meta_description' => 'This is the meta description',
                'meta_keywords'    => 'keyword1, keyword2, keyword3',
                'status'           => 'PUBLISHED',
                'featured'         => 0,
            ])->save();
        }        
    }
}
