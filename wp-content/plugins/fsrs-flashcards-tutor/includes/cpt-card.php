<?php
if (!defined('ABSPATH')) exit;

function fsrs_register_card_cpt() {
    register_post_type('flashcard', [
        'labels'      => ['name' => 'Flashcards', 'singular_name' => 'Flashcard'],
        'public'      => true,
        'hierarchical' => true, // OBRIGATÓRIO para usar post_parent
        'menu_icon'   => 'dashicons-cards',
        'supports'    => ['title', 'editor', 'page-attributes'], // page-attributes é necessário
        'show_in_rest' => true,
    ]);
}
add_action('init', 'fsrs_register_card_cpt');

// Adiciona uma caixa de seleção no painel lateral do Flashcard para escolher o Curso
add_action('add_meta_boxes', function() {
    add_meta_box('fsrs_card_parent', 'Vincular ao Curso/Lição', 'fsrs_card_meta_box', 'flashcard', 'side');
});

function fsrs_card_meta_box($post) {
    $current_parent = $post->post_parent;
    // Buscamos os DECKS criados, pois o Card pertence ao Deck
    $decks = get_posts(['post_type' => 'fsrs_deck', 'numberposts' => -1]); 
    
    echo '<select name="post_parent" style="width:100%">';
    echo '<option value="0">Selecionar Deck (Categoria)</option>';
    foreach ($decks as $deck) {
        echo '<option value="'.$deck->ID.'" '.selected($current_parent, $deck->ID, false).'>'.$deck->post_title.'</option>';
    }
    echo '</select>';
    echo '<p class="description">Vincule este card a um Deck (Ex: Inglês - Vocabulário).</p>';
}