sprite_index = lista_carros[carro_atual]
event_inherited()

// Seta direita
if (keyboard_check_pressed(vk_right)) {
    carro_atual += 1;
    if (carro_atual >= array_length(lista_carros)) {
        carro_atual = 0;
    }
    global.carro_selecionado = carro_atual;
    sprite_index = lista_carros[carro_atual];
}

// Seta esquerda
if (keyboard_check_pressed(vk_left)) {
    carro_atual -= 1;
    if (carro_atual < 0) {
        carro_atual = array_length(lista_carros) - 1;
    }
    global.carro_selecionado = carro_atual;
    sprite_index = lista_carros[carro_atual];
}

// Confirma seleção e vai para a fase
if (keyboard_check_pressed(vk_enter)) {
    room_goto(seletor_fases);
}