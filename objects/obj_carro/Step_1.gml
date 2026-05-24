// Se o player morrer vai pro perdeu
if (!instance_exists(obj_carro)) {
    room_goto(perdeu);
}

if (global.vidas=0){
	room_goto(perdeu)
}