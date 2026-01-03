<?php
if (!defined('ABSPATH')) exit; // Segurança padrão

add_action('rest_api_init', function () {
    register_rest_route('fsrs/v1', '/dashboard', [
        'methods' => 'GET',
        'callback' => 'fsrs_get_api_dashboard',
        'permission_callback' => '__return_true', 
    ]);
});

function fsrs_get_api_dashboard() {
    global $wpdb; // Necessário para a contagem de cards

    $courses = get_posts([
        'post_type'   => 'courses', // Busca os cursos do Tutor LMS
        'post_status' => 'publish',
        'numberposts' => -1,
    ]);

    $response = [];

    foreach ($courses as $course) {
        // Busca os decks vinculados ao curso atual
        $decks = get_posts([
            'post_type'  => 'fsrs_deck',
            'meta_query' => [[
                'key'   => '_fsrs_tutor_course_id',
                'value' => $course->ID
            ]],
            'numberposts' => -1
        ]);

        $decks_data = [];
        foreach ($decks as $deck) {
            // Conta os flashcards vinculados a este deck
            $cards_count = $wpdb->get_var($wpdb->prepare(
                "SELECT COUNT(*) FROM $wpdb->posts WHERE post_type = 'flashcard' AND post_parent = %d",
                $deck->ID
            ));

            $decks_data[] = [
                'deck_id' => $deck->ID,
                'title' => $deck->post_title,
                'total_cards' => (int)$cards_count
            ];
        }

        $response[] = [
            'course_id' => $course->ID,
            'course_title' => $course->post_title,
            'decks' => $decks_data,
            'total_decks' => count($decks_data)
        ];
    }

    return rest_ensure_response($response);
}