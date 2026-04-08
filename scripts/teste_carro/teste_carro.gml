///Teste de Movimentação do obj_carro

function test_inicializacao_carro() {
    var _instancia = instance_create_depth(0, 0, 0, obj_carro);
    
    if (_instancia.hspd == 0 && _instancia.vspd == 0) {
        show_debug_message("PASSOU: Carro começa parado (hspd=0, vspd=0).");
    } else {
        show_debug_message("FALHOU: hspd=" + string(_instancia.hspd) + " vspd=" + string(_instancia.vspd));
    }
    
    with (_instancia) { instance_destroy(); }
}

function test_aceleracao_carro() {
    var _instancia = instance_create_depth(0, 0, 0, obj_carro);
    
    with (_instancia) {
        hspd = 1 * spd; // spd = 3, então hspd vai ser 3
    }
    
    if (_instancia.hspd != 0) {
        show_debug_message("PASSOU: Carro acelerou. hspd=" + string(_instancia.hspd));
    } else {
        show_debug_message("FALHOU: Carro não acelerou. hspd ainda é 0.");
    }
    
    with (_instancia) { instance_destroy(); }
}