// Vidas e difculdade
global.quant_infracoes = 0
global.pior_infracao = false
global.cumpriu_objetivo = true

// Verifica se a variável ja foi declarada
if (!variable_global_exists("max_infracoes")) {
	global.max_infracoes = 2
}

show_debug_message(global.max_infracoes);