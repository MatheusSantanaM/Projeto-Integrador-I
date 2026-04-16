// Se move para baixo para acompanhar a pista
if (keyboard_check(vk_up)) {
    global.vel_mov += 0.01;
}
else if (keyboard_check(vk_down)) {
    global.vel_mov -= 0.01;
}
else {
    global.vel_mov -= 0.01;
}

global.vel_mov = clamp(global.vel_mov, 0, 1);

y += global.vel_mov * 10;

// Se mova para a esquerda para atravessar a faixa

var semaforo = instance_find(obj_semaforo, 0);

if (semaforo != noone) {
    var frame = floor(semaforo.image_index);
    var sinal_vermelho = (frame == 0 || frame == 1);

    if (sinal_vermelho && y >= 88.5) {
        x = max(x - 2, 400);
    }
}