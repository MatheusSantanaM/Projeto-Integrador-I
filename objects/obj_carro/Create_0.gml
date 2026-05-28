// Movimentação
spd_h = 2;
spd_v = 0;
aceleracao = 0.05;
desaceleracao=0.5;
vel_max = 6;

// Vidas e difculdade
global.quant_infracoes = 0
global.max_infracoes = 5
global.pode_tomar_dano = true

// Seletor de carros
lista_carros = [spr_carro, spr_chao, spr_carro_leon];
sprite_index = lista_carros[global.carro_selecionado];

//pra movimentação funcionar em todas as fases
global.em_fase=false;