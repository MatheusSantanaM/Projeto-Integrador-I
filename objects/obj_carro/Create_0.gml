// Movimentação
spd_h = 2;
spd_v = 0;
aceleracao = 0.05;
desaceleracao=0.5;
vel_max = 7;


// Seletor de carros
lista_carros = [spr_carro, spr_carro_leon, spr_carro_red, spr_carro_verde];
sprite_index = lista_carros[global.carro_selecionado];

//pra movimentação funcionar em todas as fases
global.em_fase=false;

show_debug_message("carro no create: " + string(global.carro_selecionado));