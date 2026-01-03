<?php
if (!defined('WP_UNINSTALL_PLUGIN')) {
    exit;
}

global $wpdb;

// Remover tabelas próprias
$tables = [
    $wpdb->prefix . 'fsrs_reviews',
];

foreach ($tables as $table) {
    $wpdb->query("DROP TABLE IF EXISTS {$table}");
}

// Remover CPTs (opcional – só se quiser limpar tudo)
$wpdb->query("
    DELETE FROM {$wpdb->posts}
    WHERE post_type IN ('fsrs_deck', 'fsrs_card')
");

$wpdb->query("
    DELETE FROM {$wpdb->postmeta}
    WHERE post_id NOT IN (SELECT id FROM {$wpdb->posts})
");
