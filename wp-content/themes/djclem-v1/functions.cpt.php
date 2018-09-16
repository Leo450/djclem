<?php

function djclem_cpt()
{

    register_post_type("who_am_i",
        [
            'labels' => [
                'name' => __("Who am i", "djclem"),
                'singular_name' => __("Who am i", "djclem")
            ],
            'public' => true,
            'has_archive' => false,
            'hierarchical' => false,
            'supports' => [
                "title",
                "editor"
            ],
        ]
    );

    register_post_type("what_i_do",
        [
            'labels' => [
                'name' => __("What i do", "djclem"),
                'singular_name' => __("What i do", "djclem")
            ],
            'public' => true,
            'has_archive' => false,
            'hierarchical' => false,
            'supports' => [
                "title",
                "editor"
            ],
        ]
    );

}
add_action("init", "djclem_cpt");
