var car = instance_place(x, y, obj_carro);

if (car != noone) {
    if (!global.contando && !liberado) {
        global.contando = true;
        alarm[0] = game_get_speed(gamespeed_fps) * 5;
    }
} else {
	if (!infraction_registered) {
    if (global.contando && !liberado) {
        with (obj_carro) {
            scr_register_event("nao_esperou_pedestres_passarem", {});
			other.infraction_registered = true;
			global.quant_infracoes +=1
			global.pior_infracao = true
        }
    }
}
}
