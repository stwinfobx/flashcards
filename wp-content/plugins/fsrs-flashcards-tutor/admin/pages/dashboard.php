<?php
if (!defined('ABSPATH')) {
    exit;
}

global $wpdb; // <--- ADICIONE ESTA LINHA AQUI

echo '<h2>Cursos</h2>';

$courses = get_posts([
    'post_type'   => 'courses',
    'post_status' => 'publish',
    'numberposts' => -1,
]);

if (empty($courses)) {
    echo '<p>Nenhum curso encontrado.</p>';
    return;
}

echo '<ul>';
foreach ($courses as $course) {
    echo '<li>' . esc_html($course->post_title) . ' (ID: ' . $course->ID . ')</li>';
}
echo '</ul>';

echo '<hr>';

$course_id = 11;

echo '<h2>Aulas do Curso (ID ' . $course_id . ')</h2>';

if (!function_exists('tutor_utils')) {
    echo '<p>Tutor LMS não está ativo.</p>';
    return;
}

$contents = tutor_utils()->get_course_contents_by_id($course_id);

if (empty($contents)) {
    echo '<p>Nenhuma aula encontrada.</p>';
    return;
}

foreach ($courses as $course) {
    echo '<div style="background: #fff; padding: 15px; margin-bottom: 20px; border: 1px solid #ccd0d4; border-left: 5px solid #0073aa; box-shadow: 0 1px 1px rgba(0,0,0,.04);">';
    echo '<h2 style="margin-top:0;">Curso: ' . esc_html($course->post_title) . ' <span style="color:#666; font-size: 0.8em;">(ID: ' . $course->ID . ')</span></h2>';

    // 1. Buscar Decks vinculados a este curso
    $decks = get_posts([
        'post_type'  => 'fsrs_deck',
        'meta_query' => [[
            'key'   => '_fsrs_tutor_course_id',
            'value' => $course->ID
        ]],
        'numberposts' => -1
    ]);

    if (empty($decks)) {
        echo '<p style="color: #d63638;">⚠️ Nenhum Deck FSRS vinculado a este curso.</p>';
    } else {
        foreach ($decks as $deck) {
            // 2. Contar Flashcards dentro de cada Deck
            $cards_count = $wpdb->get_var($wpdb->prepare(
                "SELECT COUNT(*) FROM $wpdb->posts WHERE post_type = 'flashcard' AND post_parent = %d",
                $deck->ID
            ));

            echo '<div style="background: #f0f6fb; padding: 10px; margin: 10px 0; border-radius: 4px;">';
            echo '<strong>🗂️ Deck: ' . esc_html($deck->post_title) . '</strong>';
            echo ' — <span class="badge" style="background:#0073aa; color:#fff; padding:2px 8px; border-radius:10px; font-size:12px;">' . $cards_count . ' Cards</span>';
            echo '</div>';
        }
    }

    // 3. Listar Aulas do Tutor LMS (Estrutura Original)
    $contents = tutor_utils()->get_course_contents_by_id($course->ID);
    if (!empty($contents)) {
        echo '<details style="cursor:pointer; margin-top:10px;"><summary>Ver aulas deste curso</summary><ul style="margin-top:10px;">';
        foreach ($contents as $content) {
            if ($content->post_type === 'lesson') {
                echo '<li style="color:#555;">📄 ' . esc_html($content->post_title) . ' <small>(ID: ' . $content->ID . ')</small></li>';
            }
        }
        echo '</ul></details>';
    }

    echo '</div>';
}