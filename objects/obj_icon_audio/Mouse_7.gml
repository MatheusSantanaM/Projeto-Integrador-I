global.audio_ligado = !global.audio_ligado
scr_controlar_msc()

if (global.audio_ligado) {
	scr_clique()
    sprite_index = spr_audio_on;
} else {
	scr_clique()
    sprite_index = spr_audio_off;
}
