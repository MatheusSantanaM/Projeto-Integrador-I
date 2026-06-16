if (!chegou_ja){
	with (obj_carro) {
		if (place_meeting(x,y, obj_chegou)){
			global.chegou = true
			other.chegou_ja = true
		}
	}
}

if (global.chegou) {
	x -= 1;
}

if (x = 416) {
	global.chegou = false;
    }