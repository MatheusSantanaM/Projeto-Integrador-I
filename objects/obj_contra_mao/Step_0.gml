var colidindo = false;

with (obj_carro) {
    if (place_meeting(x, y, obj_contra_mao)) {
        colidindo = true;
    }
}

if (colidindo) {
    if (!infraction_registered) {
        scr_register_event("contra_mao", {});
        infraction_registered = true;
        global.quant_infracoes += 1;
    }

    if (!tempo_ativo) {
        alarm[0] = 240; // 4 segundos
        tempo_ativo = true;
    }
} else {
    infraction_registered = false;
    tempo_ativo = false;
    alarm[0] = -1; // cancela o alarm
}