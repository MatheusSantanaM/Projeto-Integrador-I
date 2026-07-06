if (global.jogo_pausado) exit;
if (global.em_fase){
// Mexer direita e esquerda
	mover_horizontal = -keyboard_check(vk_left) + keyboard_check(vk_right);
	velocidade_horizontal = mover_horizontal * spd_h;



// Mexer cima e baixo
		// Desaceleração quando clica pra baixo
		if (keyboard_check(vk_down) && spd_v < 0) {
			spd_v *= 0.98;
		}

	mover_vertical = -keyboard_check(vk_up) + keyboard_check(vk_down);

	if (mover_vertical != 0) {
	    spd_v += mover_vertical * aceleracao;
	} else {
	  if (spd_v > 0) {
		    spd_v -= aceleracao;
			if (spd_v < 0) spd_v = 0;
	    }
		else if (spd_v < 0) {
			spd_v += aceleracao;
			if (spd_v > 0) spd_v = 0;
		}	
	}

	spd_v = clamp(spd_v, -vel_max, vel_max);

	x += velocidade_horizontal;
	y += spd_v;
}

// Velocidade em km/h
velocidade_kmh = round(((abs(spd_v) / vel_max) * 100) / 10) * 10;
velocidade_kmh = clamp(velocidade_kmh, 0, 100);