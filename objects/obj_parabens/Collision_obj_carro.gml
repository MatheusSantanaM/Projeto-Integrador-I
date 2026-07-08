scr_som_sucess()
for (var i = 0; i < array_length(acertos_possiveis); i++) {
    var _inf = acertos_possiveis[i];
    if (!scr_infraction_committed(_inf)) {
        var _acerto = infraction_to_success[$ _inf];
        scr_register_sucess(_acerto, {});
        global.quant_acertos += 1;
    }
}

room_goto(room_resultados)