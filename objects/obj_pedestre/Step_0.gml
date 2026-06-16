// Faz verificação de colisão com obj chegou
if (!chegou_ja){
	with (obj_carro) {
		if (place_meeting(x,y, obj_chegou)){
			global.chegou = true
			other.chegou_ja = true
		}
	}
}

// Se colidiu com chegou começa a andar
if (global.chegou) {
	x -= 1;
}

// Para no 416
if (x = 416) {
	global.chegou = false;
    }

// Carro bate nele
if (!infraction_registered) {
        if (place_meeting(x, y, obj_carro)) {
            scr_register_event("atropelou_pedestres", {});
            other.infraction_registered = true;
			global.pior_infracao = true;
		}
    }
