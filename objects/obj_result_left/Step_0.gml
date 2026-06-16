if (mouse_check_button_pressed(mb_left)) {
    var _btn_y = 700;
    var _btn_x = 32;
    var _btn_w = 295;
    var _btn_h = 32;

    // Botão Menu
    if (mouse_x > _btn_x && mouse_x < _btn_x + _btn_w / 2 - 4
    &&  mouse_y > _btn_y && mouse_y < _btn_y + _btn_h) {
        global.infraction_log = [];
        global.success_log    = [];
        room_goto(Menu);
    }

    // Botão Reiniciar
    if (mouse_x > _btn_x + _btn_w / 2 + 4 && mouse_x < _btn_x + _btn_w
    &&  mouse_y > _btn_y && mouse_y < _btn_y + _btn_h) {
		scr_clique()
        global.infraction_log = [];
        global.success_log    = [];
        room_goto(global.fase_atual);
    }
}