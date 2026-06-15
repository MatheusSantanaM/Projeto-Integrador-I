if (place_meeting(x,y,obj_carro)){
	global.carro_ta_aqui = true
}
if(!place_meeting(x,y,obj_carro)){
	global.carro_ta_aqui = false
}