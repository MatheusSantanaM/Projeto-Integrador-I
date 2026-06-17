if (!infraction_registered) {
    with (obj_carro) {
        if (place_meeting(x, y, obj_entrada_proibida)) {
            scr_register_event("entrou_local_proibido", {});
			scr_erro()
			other.infraction_registered = true;
			global.quant_infracoes +=1
        }
    }
}