<?php
if (!defined('ABSPATH')) {
    exit;
}

add_action('admin_menu', 'fsrs_register_admin_menu');

function fsrs_register_admin_menu() {

    // Menu principal
    add_menu_page(
        'FSRS Flashcards',
        'FSRS Flashcards',
        'manage_options',
        'fsrs-flashcards',
        'fsrs_render_dashboard_page',
        'dashicons-index-card',
        26
    );

    // Submenu: Dashboard
    add_submenu_page(
        'fsrs-flashcards',
        'Dashboard',
        'Dashboard',
        'manage_options',
        'fsrs-flashcards',
        'fsrs_render_dashboard_page'
    );

    // Submenu: Decks (CPT)
    add_submenu_page(
        'fsrs-flashcards',
        'Decks',
        'Decks',
        'manage_options',
        'edit.php?post_type=fsrs_deck'
    );

    // Submenu: Flashcards (CPT)
    add_submenu_page(
        'fsrs-flashcards',
        'Flashcards',
        'Flashcards',
        'manage_options',
        'edit.php?post_type=fsrs_card'
    );
}

function fsrs_render_dashboard_page() {
    require FSRS_PLUGIN_PATH . 'admin/pages/dashboard.php';
}
