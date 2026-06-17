var colidindo = false;

with (obj_carro) {
    if (place_meeting(x, y, obj_subiu_calcada_direita)) {
        colidindo = true;
    }
}

if (colidindo) {
    if (!infraction_registered) {
        scr_register_event("subiu_na_calcada", {});
        scr_erro()
		infraction_registered = true;
        global.quant_infracoes += 1;
    }

    if (!tempo_calcada_ativo) {
        alarm[0] = 240; // 4 segundos
        tempo_calcada_ativo = true;
    }
} else {
    infraction_registered = false;
    tempo_calcada_ativo = false;
    alarm[0] = -1; // cancela o alarm
}