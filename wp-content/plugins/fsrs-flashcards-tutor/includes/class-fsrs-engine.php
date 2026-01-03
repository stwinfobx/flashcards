<?php

if (!defined('ABSPATH')) {
    exit;
}

class FSRS_Engine {

    /**
     * Executa o algoritmo de repetição espaçada
     *
     * @param int   $rating  Avaliação do usuário (1–4)
     * @param array $state   Estado anterior (stability, difficulty, interval)
     */
    public function schedule(int $rating, array $state = []): array
    {
        // Estado padrão
        $stability  = $state['stability']  ?? 1.0;
        $difficulty = $state['difficulty'] ?? 5.0;
        $interval   = $state['interval']   ?? 1;

        // Normaliza rating (1–4)
        $rating = max(1, min(4, $rating));

        /**
         * Regras simplificadas do FSRS
         * 1 = errou
         * 2 = difícil
         * 3 = bom
         * 4 = fácil
         */

        switch ($rating) {
            case 1: // erro
                $stability *= 0.5;
                $difficulty = min(10, $difficulty + 1);
                $interval = 1;
                break;

            case 2: // difícil
                $stability *= 0.9;
                $difficulty = min(10, $difficulty + 0.5);
                $interval = max(1, round($stability));
                break;

            case 3: // bom
                $stability *= 1.3;
                $difficulty = max(1, $difficulty - 0.3);
                $interval = round($stability);
                break;

            case 4: // fácil
                $stability *= 1.6;
                $difficulty = max(1, $difficulty - 0.6);
                $interval = round($stability * 1.2);
                break;
        }

        // Data da próxima revisão
        $next_review = date('Y-m-d', strtotime("+{$interval} days"));

        return [
            'rating'      => $rating,
            'stability'   => round($stability, 2),
            'difficulty'  => round($difficulty, 2),
            'interval'    => (int) $interval,
            'next_review' => $next_review,
        ];
    }
}

