if (global.jogo_pausado) exit;

with (obj_pro_carro_andar){
	if (place_meeting(x,y,obj_carro)){
		other.pode_andar = true
}}

// Pro carro começar a andar
if (pode_andar){
	y -= velocidade;
}

