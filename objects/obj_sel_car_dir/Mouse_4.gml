if instance_exists(obj_sel_car){
obj_sel_car.carro_atual += 1
if obj_sel_car.carro_atual >= array_length(obj_sel_car.lista_carros){
	obj_sel_car.carro_atual = 0}
}