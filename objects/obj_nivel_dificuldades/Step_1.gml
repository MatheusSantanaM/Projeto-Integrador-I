// Verifica se a variável ja foi declarada
if (!variable_global_exists("global.max_infracoes")) {
	global.max_infracoes = 2
}	
// Se o player morrer vai pro perdeu
if (global.quant_infracoes >= global.max_infracoes) {
	room_goto(room_resultados)
} else if (global.pior_infracao ){
	room_goto(room_resultados)
} else if (!global.cumpriu_objetivo){
	room_goto(room_resultados)
}
