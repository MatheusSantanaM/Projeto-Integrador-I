// Pro carro começar a andar
if (global.pro_carro_andar){
	pode_andar = true
}
if (pode_andar){
	x -= velocidade
}

// Limite até onde vai
if (x = -224){
	pode_andar = false
}
