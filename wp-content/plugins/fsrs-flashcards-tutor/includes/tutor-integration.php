<?php
if (!defined('ABSPATH')) exit;

// 1. Criar a aba na interface do aluno
add_filter('tutor_lesson_tabs', function($tabs) {
    $tabs['fsrs_tab'] = [
        'name'     => __('Flashcards', 'tutor'),
        'callback' => 'fsrs_render_tutor_tab',
        'icon'     => 'tutor-icon-save-line',
    ];
    return $tabs;
});

// 2. Renderizar o conteúdo da aba
function fsrs_render_tutor_tab() {
    $lesson_id = get_the_ID();
    echo '<div class="tutor-fsrs-wrapper" style="padding: 20px;">';
    echo '<h4>Revise esta lição</h4>';
    // O shortcode agora recebe o ID da lição atual para filtrar
    echo do_shortcode("[fsrs_study lesson_id='$lesson_id']");
    echo '</div>';
}

/**
 * Verifica se o Tutor LMS está ativo para o plugin não travar
 */
function fsrs_tutor_is_active() {
    return function_exists('tutor_utils');
}

/**
 * Busca a lista de cursos do Tutor LMS para vincular aos Decks
 */
function fsrs_get_tutor_courses() {
    return get_posts([
        'post_type'   => 'courses', // Nome padrão do CPT do Tutor LMS
        'post_status' => 'publish',
        'numberposts' => -1,
        'orderby'     => 'title',
        'order'       => 'ASC'
    ]);
}