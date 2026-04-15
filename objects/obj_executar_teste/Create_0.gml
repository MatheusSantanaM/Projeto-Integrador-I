//quando quiser fazer teste é só trocar para True
global.modo_teste = true;  

if (global.modo_teste) {
    test_inicializacao_carro();
    test_aceleracao_carro();
} else {
    room_goto(Room1);
}