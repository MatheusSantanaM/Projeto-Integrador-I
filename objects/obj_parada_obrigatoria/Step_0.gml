var car = instance_place(x, y, obj_carro);

if (car != noone) {
    if (!global.contando && !liberado) {
        global.contando = true;
        alarm[0] = game_get_speed(gamespeed_fps) * 5;
    }
} else {
    if (global.contando && !liberado) {
        with (obj_carro) {
            instance_destroy();
        }
    }
}