<?php

/**
 * Plugin Name: Dynamic Visibility for Elementor
 * Description: Elementor plugin visibility
 * Plugin URI:  https://www.dynamic.ooo/widget/dynamic-visibility/
 * Version:     1.1.0
 * Author:      Dynamic.ooo
 * Author URI:  https://www.dynamic.ooo/
 * Text Domain: dynamic-visibility-for-elementor
 */
if (!defined('ABSPATH'))
    exit; // Exit if accessed directly

define('DVE_VERSION', '1.1.0');
define('DVE_TEXTDOMAIN', 'dynamic-visibility-for-elementor');

/**
 * Load DVE
 *
 * Load the plugin after Elementor (and other plugins) are loaded.
 *
 * @since 1.0.0
 */
function dynamic_visibility_for_elementor_load() {
    // Load localization file
    load_plugin_textdomain(DVE_TEXTDOMAIN);

    // Notice if the Elementor is not active
    if (!did_action('elementor/loaded')) {
        add_action('admin_notices', 'dynamic_visibility_for_elementor_fail_load');
        return;
    }

    // Check required version
    $elementor_version_required = '1.8.0';
    if (!version_compare(ELEMENTOR_VERSION, $elementor_version_required, '>=')) {
        add_action('admin_notices', 'dynamic_visibility_for_elementor_fail_load_out_of_date');
        return;
    }

    // Require the main plugin file
    require( __DIR__ . '/plugin.php' );
}

add_action('plugins_loaded', 'dynamic_visibility_for_elementor_load');

function dynamic_visibility_for_elementor_fail_load_out_of_date() {
    if (!current_user_can('update_plugins')) {
        return;
    }

    $file_path = 'elementor/elementor.php';

    $upgrade_link = wp_nonce_url(self_admin_url('update.php?action=upgrade-plugin&plugin=') . $file_path, 'upgrade-plugin_' . $file_path);
    $message = '<p>' . __('Dynamic Visibility for Elementor is not working because you are using an old version of Elementor.', DVE_TEXTDOMAIN) . '</p>';
    $message .= '<p>' . sprintf('<a href="%s" class="button-primary">%s</a>', $upgrade_link, __('Update Elementor Now', DVE_TEXTDOMAIN)) . '</p>';

    echo '<div class="error">' . $message . '</div>';
}
