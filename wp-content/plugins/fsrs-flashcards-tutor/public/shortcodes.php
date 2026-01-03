<?php
if (!defined('ABSPATH')) exit;

add_shortcode('fsrs_study', function () {
    if (!is_user_logged_in()) {
        return '<p>Você precisa estar logado para estudar.</p>';
    }

    ob_start();
    include FSRS_PLUGIN_PATH . 'public/study-view.php';
    return ob_get_clean();
});
