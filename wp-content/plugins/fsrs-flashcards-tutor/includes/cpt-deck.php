<?php
if (!defined('ABSPATH')) exit;

add_action('init', function () {
    register_post_type('fsrs_deck', [
        'label' => 'Decks',
        'public' => false,
        'show_ui' => true,
        'menu_icon' => 'dashicons-index-card',
        'supports' => ['title', 'editor']
    ]);
});

add_action('add_meta_boxes', function () {
    add_meta_box(
        'fsrs_deck_course',
        'Curso Tutor LMS',
        'fsrs_render_deck_course_metabox',
        'fsrs_deck',
        'side'
    );
});

add_action('save_post_fsrs_deck', function ($post_id) {

    if (!isset($_POST['fsrs_deck_course_nonce']) ||
        !wp_verify_nonce($_POST['fsrs_deck_course_nonce'], 'fsrs_save_deck_course')) {
        return;
    }

    if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
        return;
    }

    if (!current_user_can('manage_options')) {
        return;
    }

    if (isset($_POST['fsrs_tutor_course_id'])) {
        update_post_meta(
            $post_id,
            '_fsrs_tutor_course_id',
            intval($_POST['fsrs_tutor_course_id'])
        );
    }
});


function fsrs_render_deck_course_metabox($post) {

    wp_nonce_field('fsrs_save_deck_course', 'fsrs_deck_course_nonce');

    $selected_course = get_post_meta($post->ID, '_fsrs_tutor_course_id', true);

    if (!fsrs_tutor_is_active()) {
        echo '<p><strong>Tutor LMS não está ativo.</strong></p>';
        return;
    }

    $courses = fsrs_get_tutor_courses();

    if (empty($courses)) {
        echo '<p>Nenhum curso encontrado.</p>';
        return;
    }

    echo '<select name="fsrs_tutor_course_id" style="width:100%;">';
    echo '<option value="">— Selecione um curso —</option>';

    foreach ($courses as $course) {
        printf(
            '<option value="%d" %s>%s</option>',
            $course->ID,
            selected($selected_course, $course->ID, false),
            esc_html($course->post_title)
        );
    }

    echo '</select>';
}

