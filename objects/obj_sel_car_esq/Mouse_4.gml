/*
if instance_exists(obj_sel_car){
obj_sel_car.carro_atual -= 1
if obj_sel_car.carro_atual <= 0{
	obj_sel_car.carro_atual = array_last(obj_sel_car.carro_atual)}
global.carro_selecionado = carro_atual
}
*/
scr_clique()

with(obj_sel_car) {
    carro_atual -= 1;
    
    if carro_atual <= 0{
        carro_atual = 0;
    }
    
    // Atualiza o global para o resto do jogo saber a escolha
    global.carro_selecionado = carro_atual;
}