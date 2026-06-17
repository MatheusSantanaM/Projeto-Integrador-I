if (global.quant_infracoes < global.max_infracoes &&
    global.pior_infracao  == false &&
    global.cumpriu_objetivo == true) {
    if (mouse_check_button_pressed(mb_left)) {
        var _btn_y = 700;
        var _btn_x = 1051;
        var _btn_w = 295;
        var _btn_h = 32;
        if (mouse_x > _btn_x && mouse_x < _btn_x + _btn_w
        &&  mouse_y > _btn_y && mouse_y < _btn_y + _btn_h) {
            scr_clique();
            global.infraction_log = [];
            global.success_log    = [];
            room_goto(global.proxima_fase);
        }
    }
}