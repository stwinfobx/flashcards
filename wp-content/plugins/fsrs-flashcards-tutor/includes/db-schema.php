<?php
if (!defined('ABSPATH')) exit;

function fsrs_create_tables() {
    global $wpdb;

    $charset_collate = $wpdb->get_charset_collate();

    $reviews_table = $wpdb->prefix . 'fsrs_reviews';

    $sql = "CREATE TABLE $reviews_table (
        id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
        user_id BIGINT UNSIGNED NOT NULL,
        card_id BIGINT UNSIGNED NOT NULL,
        rating VARCHAR(10) NOT NULL,
        review_date DATETIME NOT NULL,
        next_review DATETIME NOT NULL,
        stability FLOAT NOT NULL,
        difficulty FLOAT NOT NULL,
        PRIMARY KEY (id),
        KEY user_card (user_id, card_id)
    ) $charset_collate;";

    require_once ABSPATH . 'wp-admin/includes/upgrade.php';
    dbDelta($sql);
}

function fsrs_uninstall_plugin() {
    global $wpdb;
    $wpdb->query("DROP TABLE IF EXISTS {$wpdb->prefix}fsrs_reviews");
}
