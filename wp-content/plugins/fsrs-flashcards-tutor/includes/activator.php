<?php
if (!defined('ABSPATH')) exit;

function fsrs_activate_plugin() {
    require_once FSRS_PLUGIN_PATH . 'includes/db-schema.php';
    fsrs_create_tables();
}
