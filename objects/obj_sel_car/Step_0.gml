sprite_index = lista_carros[carro_atual]
event_inherited()

// Seta direita
if (keyboard_check_pressed(vk_right)) {
	scr_clique()
    carro_atual += 1;
    if (carro_atual >= array_length(lista_carros)) {
        carro_atual = 0;
    }
    global.carro_selecionado = carro_atual;
    sprite_index = lista_carros[carro_atual];
}

// Seta esquerda
if (keyboard_check_pressed(vk_left)) {
	scr_clique()
    carro_atual -= 1;
    if (carro_atual < 0) {
        carro_atual = array_length(lista_carros) - 1;
    }
    global.carro_selecionado = carro_atual;
    sprite_index = lista_carros[carro_atual];
}

// Confirma seleção e vai para a fase
if (keyboard_check_pressed(vk_enter))
{	show_debug_message("antes de ir pra fase: " + string(global.carro_selecionado));
   room_goto(menu_seletor_fases);
}

