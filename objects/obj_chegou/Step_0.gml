if (instance_place(x, y, obj_carro) != noone) {
    chegou = true;
}

if (chegou) {
    with (obj_pedestre) {
        x -= 1;
        if (x <= 416) {
            chegou = false;
        }
    }
}