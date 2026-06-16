function scr_movimento(obj_marca_inicio_mov, velocidade) {
    // Ativa só uma vez
    if (!ativou_uma_vez) {
        if (place_meeting(x, y, obj_marca_inicio_mov)) {
            comecou_andar = true;
            ativou_uma_vez = true;
        }
    }

    // Continua andando
    if (comecou_andar) {
        x += velocidade;
    }

    // Para no ponto final
    if (x >= 416) {
        x = 416;
        comecou_andar = false;
    }
}