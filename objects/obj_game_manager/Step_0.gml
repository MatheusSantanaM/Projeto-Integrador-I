if (keyboard_check_pressed(vk_escape)) {
    if (!global.jogo_pausado && room != spr_explecacao_niveis && room != menu_sobre && room != menu_configs && room != seletor_fases && room != room_resultados) {
        instance_create_depth(0, 0, -9999, obj_menu_pause);
    }
}