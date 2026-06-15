// Infração se o carro passar na faixa enquanto pedestres estiverem nela

// Se pedestres ta na faixa
if (instance_exists(obj_pedestres)){
	if (place_meeting(x,y, obj_pedestres)){
		pedestre_na_faixa= true;
	}
	if (!place_meeting(x,y, obj_pedestres)){
		pedestre_na_faixa= false;
	}
}

// Se carro passa na faixa enquanto pedestre ta nela
if (place_meeting(x,y, obj_carro) && pedestre_na_faixa){
	    if (!infraction_registered){
		scr_register_event("passou_na_faixa_junto_com_pedestres", {});
        infraction_registered = true;
        global.quant_infracoes += 1;
		}

}