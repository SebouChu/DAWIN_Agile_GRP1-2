<?php
/**
 *    Kalium WordPress Theme
 *
 *    Laborator.co
 *    www.laborator.co
 */
if ( ! defined( 'ABSPATH' ) ) {
	exit; // Direct access not allowed.
}

get_header();

WP_Advanced_Search();

//get_template_part( 'tpls/search-results' );
echo do_shortcode('[advanced-search]');

get_footer();
