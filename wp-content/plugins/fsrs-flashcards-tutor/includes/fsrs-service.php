<?php
if (!defined('ABSPATH')) exit;

require_once FSRS_PLUGIN_PATH . 'includes/class-fsrs-engine.php';

class FSRS_Service {

    /**
     * Busca o estado atual e salva a nova revisão no banco
     */
    public static function save_review(int $user_id, int $card_id, int $rating): array {
        global $wpdb;
        $table = $wpdb->prefix . 'fsrs_reviews';

        // 1. Busca o último estado (estabilidade e dificuldade)
        $last_state = $wpdb->get_row($wpdb->prepare(
            "SELECT stability, difficulty FROM $table 
             WHERE user_id = %d AND card_id = %d 
             ORDER BY review_date DESC LIMIT 1",
            $user_id, $card_id
        ), ARRAY_A);

        // 2. Prepara o estado para o motor (usa padrão se for novo)
        $state = $last_state ? $last_state : [
            'stability' => 1.0,
            'difficulty' => 5.0
        ];

        // 3. Executa o motor FSRS
        $engine = new FSRS_Engine();
        $new_data = $engine->schedule($rating, $state);

        // 4. Salva integralmente na sua tabela
        $wpdb->insert(
            $table,
            [
                'user_id'     => $user_id,
                'card_id'     => $card_id,
                'rating'      => (string)$rating,
                'review_date' => current_time('mysql'),            
                // SUBSTITUA POR ESTA:
                'next_review' => date('Y-m-d H:i:s', strtotime($new_data['next_review'] . ' +1 day')),
                'stability'   => $new_data['stability'],
                'difficulty'  => $new_data['difficulty']
            ],
            ['%d', '%d', '%s', '%s', '%s', '%f', '%f']
        );

        return $new_data;
    }

    /**
     * Atalho para apenas execução matemática (mantido como solicitado)
     */
    public static function run(int $rating, array $state = []): array {
        $engine = new FSRS_Engine();
        return $engine->schedule($rating, $state);
    }
}

/**
 * Handler AJAX para processar cliques do aluno na interface
 */
add_action('wp_ajax_fsrs_submit_review', function() {
    $card_id = isset($_POST['card_id']) ? intval($_POST['card_id']) : 0;
    $rating  = isset($_POST['rating']) ? intval($_POST['rating']) : 0;
    $user_id = get_current_user_id();

    if (!$card_id || !$rating || !$user_id) {
        wp_send_json_error('Dados inválidos ou usuário não logado.');
    }

    $result = FSRS_Service::save_review($user_id, $card_id, $rating);
    wp_send_json_success($result);
});

