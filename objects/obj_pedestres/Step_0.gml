// condições para o pedestre mexer na fase 1
if (global.jogo_pausado) exit;
if (instance_exists(obj_semaforo)){
if (floor(obj_semaforo.image_index) == 0 || floor(obj_semaforo.image_index) == 1) {
        semaforo_vermelho = true;
    }
if (floor(obj_semaforo.image_index) == 2 || floor(obj_semaforo.image_index) == 3 || floor(obj_semaforo.image_index) == 3=4) {
        semaforo_vermelho = false;
    }

if (global.carro_ta_aqui && semaforo_vermelho){
	movendo_faixa = true
	}
}

// Fase 1
if (room=fase1){
	if (movendo_faixa){
	x += velocidade
		if (x=384){
			velocidade = 0
			movendo_faixa = false
		}
	
	}
}

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
            scr_erro()
			other.infraction_registered = true;
			global.pior_infracao = true;
			global.quant_infracoes += 1;
		}
    }
}