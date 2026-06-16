global.infraction_log = [];
global.success_log    = [];
global.quant_acertos = 0;
global.quant_infracoes = 0;
global.fase_atual    = room;
global.proxima_fase   = room_next(room);
infraction_to_success = {
    "sinal_vermelho":                      "sinal_verde",
    "subiu_na_calcada":                    "nao_subiu_na_calcada",
    "contra_mao":                          "curva_proibida",
    "atropelou_pedestres":                 "nao_atropelou_pedestres",
    "entrou_local_proibido":               "respeitou_local_proibido",
    "nao_esperou_pedestres_passarem":      "parada_obrigatoria",
    "nao_cumpriu_objetivo":                "cumpriu_objetivo",
    "parada_obrigatoria":                  "respeitou_parada_obrigatoria",
    "passou_na_faixa_junto_com_pedestres": "respeitou_faixa_de_pedestre",
    "bateu_num_carro":                     "nao_bateu_num_carro",
	"preferencia":						   "respeitou_preferencia"
};