if instance_exists(obj_sel_car){
obj_sel_car.carro_atual -= 1
if obj_sel_car.carro_atual <= 0{
	obj_sel_car.carro_atual = array_last(obj_sel_car.carro_atual)}
}