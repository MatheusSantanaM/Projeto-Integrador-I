// Fase 2 - Passar a faixa quando o carro parar 
if (room=fase2){
	if (global.contando){
	movendo_faixa = true
	}
	if (movendo_faixa){
	x += velocidade
		if (x=384){
			velocidade = 0
		}
	
	}
}

// Carro bate nele
if (!infraction_registered) {
    with (obj_carro) {
        if (place_meeting(x, y, obj_pedestres)) {
            scr_register_event("atropelou_pedestres", {});
            other.infraction_registered = true;
			global.pior_infracao = true;
		}
    }
}