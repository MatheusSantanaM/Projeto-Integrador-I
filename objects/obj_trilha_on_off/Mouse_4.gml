scr_clique()

if (image_index == 0) {
	// trilha estava ON, vai desligar
	global.trilha_sonora = false
	image_index = 1
	
	with (obj_trilha_on_off) {
		image_index = 1
	}
	
	// se a trilha desligou, o audio geral continua ligado
	global.audio_ligado = true
	scr_controlar_msc()
	
	with (obj_icon_audio) {
		sprite_index = spr_audio_on;
	}
	
	with (obj_audio_on_off) {
		image_index = 0
	}
	
} else {
	// trilha estava OFF, vai ligar
	global.trilha_sonora = true
	image_index = 0
	
	with (obj_trilha_on_off) {
		image_index = 0
	}
	
	// ligando trilha, o audio geral também precisa ficar ligado
	global.audio_ligado = true
	scr_controlar_msc()
	
	with (obj_icon_audio) {
		sprite_index = spr_audio_on;
	}
	
	with (obj_audio_on_off) {
		image_index = 0
	}
}