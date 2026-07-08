if (global.jogo_pausado) exit;
if (!chegou_ja){
with (obj_chegou){
	if (place_meeting(x,y,obj_carro)){
		global.chegou = true
		other.chegou_ja = true
}}}

// Pro carro começar a andar
if (global.chegou){
	x -= 1;
}

// Limite até onde vai
if (x = 384){
	global.chegou = false
}