/*
if (place_meeting(x, y, obj_carro)) {
    if (!scr_infraction_committed("nao_esperou_pedestres_passarem")) {
        scr_register_sucess("parada_obrigatoria", {});
        global.quant_acertos += 1;
    }
	
	if (!scr_infraction_committed("sinal_vermelho")) {
        scr_register_sucess("sinal_verde", {});
        global.quant_acertos += 1;
    }
	
	if (!scr_infraction_committed("passou_na_faixa_junto_com_pedestres")) {
        scr_register_sucess("parada_obrigatoria", {});
        global.quant_acertos += 1;
    }
	
	if (!scr_infraction_committed("subiu_na_calcada")) {
        scr_register_sucess("nao_subiu_na_calcada", {});
        global.quant_acertos += 1;
    }
	
	if (!scr_infraction_committed("contra_mao")) {
        scr_register_sucess("curva_proibida", {});
        global.quant_acertos += 1;
    }
	if (!scr_infraction_committed("parada_obrigatoria")) {
        scr_register_sucess("respeitou_parada_obrigatoria", {});
        global.quant_acertos += 1;
    }
	if (!scr_infraction_committed("bateu_num_carro")) {
        scr_register_sucess("nao_bateu_num_carro", {});
        global.quant_acertos += 1;
    }
	if (!scr_infraction_committed("nao_cumpriu_objetivo")) {
        scr_register_sucess("cumpriu_objetivo", {});
        global.quant_acertos += 1;
    }
	if (!scr_infraction_committed("atropelou_pedestres")) {
        scr_register_sucess("nao_atropelou_pedestres", {});
        global.quant_acertos += 1;
    }
	if (!scr_infraction_committed("entrou_local_proibido")) {
        scr_register_sucess("respeitou_local_proibido", {});
        global.quant_acertos += 1;
    }
	/*if (!scr_infraction_committed("")) {
        scr_register_sucess("", {});
        global.quant_acertos += 1;
    }
    room_goto(room_resultados);
}
*/
if (place_meeting(x, y, obj_carro)) {
    for (var i = 0; i < array_length(acertos_possiveis); i++) {
        var _inf = acertos_possiveis[i];
        if (!scr_infraction_committed(_inf)) {
            var _acerto = infraction_to_success[$ _inf];
            scr_register_sucess(_acerto, {});
            global.quant_acertos += 1;
        }
    }
    room_goto(room_resultados);
}