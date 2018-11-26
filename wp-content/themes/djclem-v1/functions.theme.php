<?php

// Load styles
function djclem_styles()
{

    wp_register_style("bootstrap", get_template_directory_uri() . "/lib/bootstrap/css/bootstrap.grid.css", array(), "4.1.0", "all");
    wp_enqueue_style("bootstrap");

    wp_register_style("theme", get_template_directory_uri() . "/css/style.css", array(), "1.0.0", "all");
    wp_enqueue_style("theme");

}
add_action("wp_enqueue_scripts", "djclem_styles");

// Load scripts
function djclem_scripts()
{

	wp_register_script('image-full', get_template_directory_uri() . '/js/image-full.js', array(), '1.0.0', 'all');
	wp_enqueue_script('image-full');

	wp_register_script('anim', get_template_directory_uri() . '/js/anim.js', array(), '1.0.0', 'all');
	wp_enqueue_script('anim');

}
add_action("wp_enqueue_scripts", "djclem_scripts");
