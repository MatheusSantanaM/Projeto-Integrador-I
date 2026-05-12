function scr_controlar_msc() {
    if (!global.audio_ligado) {
		audio_stop_all();
		return
    }else if(global.audio_ligado){
	    if (room == fase1) {
			audio_stop_all()
		    audio_play_sound(som_fases, 10, true);
		} else {
			if (!audio_is_playing(som_trilha_sonora)){
				audio_stop_all()
				audio_play_sound(som_trilha_sonora, 10, true);
		
	    }
		}
	}
}