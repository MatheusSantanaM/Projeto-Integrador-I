if (global.em_fase){
// Mexer direita e esquerda
	mover_horizontal = -keyboard_check(vk_left) + keyboard_check(vk_right);
	velocidade_horizontal = mover_horizontal * spd_h;

// Mexer cima e baixo
	mover_vertical = -keyboard_check(vk_up) + keyboard_check(vk_down);

	if (mover_vertical != 0) {
	    spd_v += mover_vertical * aceleracao;
	} else {
	    spd_v *= 0.96;
	}

	spd_v = clamp(spd_v, -vel_max, vel_max);

	x += velocidade_horizontal;
	y += spd_v;
}
