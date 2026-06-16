if (!infraction_registered) {
    with (obj_carro) {
        if (place_meeting(x, y, obj_subiu_calcada_esquerda)) {
            scr_register_event("subiu_na_calcada", {});
            other.infraction_registered = true;
			global.pior_infracao = true
			global.quant_infracoes += 1;
        }
    }
}