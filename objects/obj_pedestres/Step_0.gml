
// Se mova para a esquerda para atravessar a faixa

var semaforo = instance_find(obj_semaforo, 0);

if (semaforo != noone) {
    var frame = floor(semaforo.image_index);
    var sinal_vermelho = (frame == 0 || frame == 1);

    if (sinal_vermelho && y >= 88.5) {
        x = max(x - 2, 400);
    }
}

// Passar a faixa quando o carro parar 
if (room=fase2){
	if (global.contando){
	x += velocidade
		if (x=384){
			velocidade = 0
		}
	
	}
}