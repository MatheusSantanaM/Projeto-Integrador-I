if (room == fase1) {
    audio_stop_sound(som_trilha_sonora);
    if (!audio_is_playing(som_fases)) {
        audio_play_sound(som_fases, 1, true);
    }
} else {
    audio_stop_sound(som_fases);
    if (!audio_is_playing(som_trilha_sonora)) {
        audio_play_sound(som_trilha_sonora, 1, true);
    }
}