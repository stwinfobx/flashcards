<?php
/**
 * Plugin Name: FSRS Flashcards for Tutor LMS
 * Description: Sistema avançado de flashcards com repetição espaçada (FSRS) integrado ao Tutor LMS.
 * Version: 0.1.0
 * Author: Seu Nome
 */

if (!defined('ABSPATH')) {
    exit;
}

define('FSRS_PLUGIN_PATH', plugin_dir_path(__FILE__));
define('FSRS_PLUGIN_URL', plugin_dir_url(__FILE__));
define('FSRS_PLUGIN_VERSION', '0.1.0');

// Includes
require_once FSRS_PLUGIN_PATH . 'includes/activator.php';
require_once FSRS_PLUGIN_PATH . 'includes/db-schema.php';
require_once FSRS_PLUGIN_PATH . 'includes/cpt-deck.php';
require_once FSRS_PLUGIN_PATH . 'includes/cpt-card.php';
require_once FSRS_PLUGIN_PATH . 'includes/tutor-integration.php';
require_once FSRS_PLUGIN_PATH . 'includes/class-fsrs-engine.php';
require_once FSRS_PLUGIN_PATH . 'includes/fsrs-service.php';

require_once FSRS_PLUGIN_PATH . 'includes/api-dashboard.php';



if (is_admin()) {
    require_once FSRS_PLUGIN_PATH . 'admin/menu.php';
}

require_once FSRS_PLUGIN_PATH . 'public/shortcodes.php';

// Hooks
register_activation_hook(__FILE__, 'fsrs_activate_plugin');
register_uninstall_hook(__FILE__, 'fsrs_uninstall_plugin');


add_action('init', function() {
    header("Access-Control-Allow-Origin: https://flashcardsapp.online");
    header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
    header("Access-Control-Allow-Headers: Content-Type, Authorization, X-WP-Nonce");

    // Resolve a pré-verificação (Preflight) do navegador
    if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
        status_header(200);
        exit;
    }
});