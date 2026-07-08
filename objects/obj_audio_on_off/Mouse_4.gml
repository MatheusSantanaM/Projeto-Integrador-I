scr_clique()

if(image_index=0){
	global.audio_ligado=false
	scr_controlar_msc()
	image_index=1
	
	with(obj_icon_audio){
		sprite_index = spr_audio_off;
	}
	
	with (obj_audio_on_off){
		image_index=1
	}
	with (obj_efeitos_on_off){
		image_index=1
	}
	with(obj_trilha_on_off){
		image_index=1
	}
}else{
	global.audio_ligado=true
	scr_controlar_msc()
	image_index=0
	
	with(obj_icon_audio){
		sprite_index = spr_audio_on;
	}
	
	with (obj_audio_on_off){
		image_index=0
	}
	with (obj_efeitos_on_off){
		image_index=0
	}
	with(obj_trilha_on_off){
		image_index=0
	}

}