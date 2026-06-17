var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

hover_index = -1;

for (var i = 0; i < btn_count; i++) {
    if (point_in_rectangle(mx, my, btn_x, btn_y[i], btn_x + btn_w, btn_y[i] + btn_h)) {
        hover_index = i;

        if (mouse_check_button_pressed(mb_left)) {
            switch (i) {
                case 0:
					scr_clique()
					if (instance_exists(obj_agrupa_cenario)) {
						obj_agrupa_cenario.image_speed = global.cenario_image_speed;
					}
					instance_activate_all();
                    global.jogo_pausado = false;
                    instance_destroy();
                    break;

                case 1:
				scr_clique()
                    break;

                case 2:
					scr_clique()
					if (instance_exists(obj_agrupa_cenario)) {
						obj_agrupa_cenario.image_speed = global.cenario_image_speed;
					}
					instance_activate_all();
                    global.jogo_pausado = false;
					instance_destroy();
                    room_goto(menu);
                    break;
            }
        }
    }
}

// Fechar com ESC 
if (keyboard_check_pressed(vk_escape)) {
	if (instance_exists(obj_agrupa_cenario)) {
						obj_agrupa_cenario.image_speed = global.cenario_image_speed;
					}
	instance_activate_all();
    global.jogo_pausado = false;
    instance_destroy();
}