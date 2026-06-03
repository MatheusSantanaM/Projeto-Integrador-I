var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

hover_index = -1;

for (var i = 0; i < btn_count; i++) {
    if (point_in_rectangle(mx, my, btn_x, btn_y[i], btn_x + btn_w, btn_y[i] + btn_h)) {
        hover_index = i;

        if (mouse_check_button_pressed(mb_left)) {
            switch (i) {
                case 0:
					if (instance_exists(obj_semaforo)) {
						obj_semaforo.image_speed = global.semaforo_image_speed;
					}
					instance_activate_all();
                    global.jogo_pausado = false;
                    instance_destroy();
                    break;

                case 1:
                    break;

                case 2:
					if (instance_exists(obj_semaforo)) {
						obj_semaforo.image_speed = global.semaforo_image_speed;
					}
					instance_activate_all();
                    global.jogo_pausado = false;
					instance_destroy();
                    room_goto(Menu);
                    break;
            }
        }
    }
}

// Fechar com ESC 
if (keyboard_check_pressed(vk_escape)) {
	if (instance_exists(obj_semaforo)) {
						obj_semaforo.image_speed = global.semaforo_image_speed;
					}
	instance_activate_all();
    global.jogo_pausado = false;
    instance_destroy();
}