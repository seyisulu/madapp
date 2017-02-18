<?php

return [

    /*
    |--------------------------------------------------------------------------
    | User config
    |--------------------------------------------------------------------------
    |
    | Here you can specify voyager user configs
    |
    */

    'user' => [
        'add_default_role_on_register' => true,
        'default_role'                 => 'user',
        'admin_permission'             => 'browse_admin',
        'namespace'                    => MadComics\Models\User::class,
        'default_avatar'               => 'users/default.png',
    ],

    /*
    |--------------------------------------------------------------------------
    | Controllers config
    |--------------------------------------------------------------------------
    |
    | Here you can specify voyager controller settings
    |
    */

    'controllers' => [
        'namespace' => 'TCG\\Voyager\\Http\\Controllers',
    ],

    /*
    |--------------------------------------------------------------------------
    | Models config
    |--------------------------------------------------------------------------
    |
    | Here you can specify default model namespace when creating BREAD.
    | Must include trailing backslashes. If not defined the default application
    | namespace will be used.
    |
    */

    'models' => [
        'namespace' => 'MadComics\\',
    ],

    /*
    |--------------------------------------------------------------------------
    | Path to the Voyager Assets
    |--------------------------------------------------------------------------
    |
    | Here you can specify the location of the voyager assets path
    |
    */

    'assets_path' => '/vendor/tcg/voyager/assets',

    /*
    |--------------------------------------------------------------------------
    | Storage Config
    |--------------------------------------------------------------------------
    |
    | Here you can specify attributes related to your application file system
    |
    */

    'storage' => [
        //'subfolder' => 'public/', // include trailing slash, like 'my_folder/'
    ],

    /*
    |--------------------------------------------------------------------------
    | Database Config
    |--------------------------------------------------------------------------
    |
    | Here you can specify voyager database settings
    |
    */

    'database' => [
        'tables' => [
            'hidden' => [], // database tables that are hidden from the admin panel
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Widgets Config
    |--------------------------------------------------------------------------
    |
    | Here you can specify voyager administration settings
    |
    */

    'widgets' => [
        [
            'name'  => 'User',
            'icon'  => 'voyager-group',
            'model' => TCG\Voyager\Models\User::class,
            'url'   => 'admin/users',
            'image' => '/images/widget-backgrounds/02.png',
        ],
        [
            'name'  => 'Issue',
            'icon'  => 'voyager-news',
            'model' => MadComics\Models\Issue::class,
            'url'   => 'admin/issues',
            'image' => '/images/widget-backgrounds/03.png',
        ],
        [
            'name'  => 'Comic',
            'icon'  => 'voyager-file-text',
            'model' => MadComics\Models\Comic::class,
            'url'   => 'admin/comics',
            'image' => '/images/widget-backgrounds/04.png',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Dashboard config
    |--------------------------------------------------------------------------
    |
    | Here you can modify some aspects of your dashboard
    |
    */

    'dashboard' => [
        // Add custom list items to navbar's dropdown
        'navbar_items' => [
            'Profile' => [
                'route'         => 'voyager.profile',
                'classes'       => 'class-full-of-rum',
                'icon_class'    => 'voyager-person',
            ],
            'Visit site' => [
                'route'         => '/home',
                'target_blank'  => true,
            ],
        ],
    ],

];
