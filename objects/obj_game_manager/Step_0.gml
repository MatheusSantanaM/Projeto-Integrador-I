if (keyboard_check_pressed(vk_escape)) {
    if (!global.jogo_pausado) {
        instance_create_depth(0, 0, -9999, obj_menu_pause);
    }
}