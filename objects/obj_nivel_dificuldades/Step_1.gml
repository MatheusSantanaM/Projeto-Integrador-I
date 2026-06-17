// Se o player morrer vai pro perdeu
if (global.quant_infracoes >= global.max_infracoes) {
	global.fase_atual = room;
	room_goto(room_resultados)
} else if (global.pior_infracao ){
	global.fase_atual = room;
	room_goto(room_resultados)
} else if (!global.cumpriu_objetivo){
	global.fase_atual = room;
	room_goto(room_resultados)
}
