global.audio_ligado = !global.audio_ligado
scr_controlar_msc()

if (global.audio_ligado) {
    sprite_index = spr_audio_on;
} else {
    sprite_index = spr_audio_off;
}
