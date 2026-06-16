if (!chegou_ja){
with (obj_pro_carro_andar){
	if (place_meeting(x,y,obj_carro)){
		global.chegou_preferencia = true
		other.chegou_ja = true
}}}

// Pro carro começar a andar
if (global.chegou_preferencia){
	x -= 3;
}

// Limite até onde vai
if (x = -224){
	global.chegou_preferencia = false
}