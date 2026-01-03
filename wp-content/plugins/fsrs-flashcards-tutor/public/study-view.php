<?php
if (!defined('ABSPATH')) exit;

global $wpdb;
$user_id = get_current_user_id();
$table = $wpdb->prefix . 'fsrs_reviews';

// SQL com margem de segurança de 1 minuto para o card sumir imediatamente
$card = $wpdb->get_row($wpdb->prepare(
    "SELECT p.ID, p.post_title, p.post_content 
     FROM {$wpdb->prefix}posts p
     LEFT JOIN {$wpdb->prefix}fsrs_reviews r ON p.ID = r.card_id AND r.user_id = %d
     WHERE p.post_type = 'flashcard' 
     AND p.post_status = 'publish' 
     AND (r.next_review <= DATE_SUB(NOW(), INTERVAL 1 MINUTE) OR r.id IS NULL)
     ORDER BY r.next_review ASC LIMIT 1", 
    $user_id
));

if (!$card): ?>
    <div class="fsrs-done">✅ Tudo revisado por hoje!</div>
<?php else: ?>
    <div id="fsrs-container" style="border: 2px solid #e2e8f0; border-radius: 8px; padding: 20px; max-width: 500px; margin: auto;">
        <div id="fsrs-front">
            <h3><?php echo esc_html($card->post_title); ?></h3>
            <button id="btn-show" onclick="showAnswer()" style="background: #3057d5; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer;">Mostrar Resposta</button>
        </div>

        <div id="fsrs-back" style="display: none; margin-top: 20px; border-top: 1px solid #eee; padding-top: 20px;">
            <div style="margin-bottom: 20px;"><?php echo wpautop($card->post_content); ?></div>
            
            <div style="display: flex; gap: 10px; justify-content: center;">
                <button onclick="submitFSRS(1)" style="background: #e53e3e; color: white; border: none; padding: 8px; border-radius: 4px;">Errei</button>
                <button onclick="submitFSRS(2)" style="background: #dd6b20; color: white; border: none; padding: 8px; border-radius: 4px;">Difícil</button>
                <button onclick="submitFSRS(3)" style="background: #38a169; color: white; border: none; padding: 8px; border-radius: 4px;">Bom</button>
                <button onclick="submitFSRS(4)" style="background: #3182ce; color: white; border: none; padding: 8px; border-radius: 4px;">Fácil</button>
            </div>
        </div>
    </div>

    <script>
    function showAnswer() {
        document.getElementById('fsrs-back').style.display = 'block';
        document.getElementById('btn-show').style.display = 'none';
    }

    function submitFSRS(rating) {
        jQuery.ajax({
            url: '<?php echo admin_url('admin-ajax.php'); ?>',
            type: 'POST',
            data: {
                action: 'fsrs_submit_review',
                card_id: <?php echo $card->ID; ?>,
                rating: rating
            },
            success: function(response) {
                if(response.success) {
                    location.reload();
                } else {
                    alert('Erro ao salvar revisão.');
                }
            }
        });
    }
    </script>
<?php endif; ?>