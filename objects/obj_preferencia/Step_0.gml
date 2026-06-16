var car = instance_place(x, y, obj_carro);

if (car != noone) {
    if (!contando && !liberado) {
        contando = true;
        alarm[0] = game_get_speed(gamespeed_fps) * 4;
    }
} else {
	if (!infraction_registered) {
    if (contando && !liberado) {
        with (obj_carro) {
            scr_register_event("preferencia", {});
			other.infraction_registered = true;
			global.quant_infracoes +=1
			global.pior_infracao = true
        }
    }
}
}
