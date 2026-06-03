if (!variable_global_exists("carro_selecionado")) {
    global.carro_selecionado = 0;
}
lista_carros = [spr_carro, spr_carro_leon, spr_carro_red, spr_carro_verde];
carro_atual = global.carro_selecionado;
sprite_index = lista_carros[carro_atual];
event_inherited();