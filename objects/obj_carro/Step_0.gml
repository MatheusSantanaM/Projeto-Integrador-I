// Mexer direita e esquerda
mover_horizontal = -keyboard_check(vk_left)+keyboard_check(vk_right)
velocidade_horizontal = mover_horizontal*spd
mover_vertical = -keyboard_check(vk_up) + keyboard_check(vk_down);
velocidade_vertical = mover_vertical * spd;
x += velocidade_horizontal
y += velocidade_vertical

// ?
if (room == Room1) {
    mover_horizontal = -keyboard_check(vk_left) + keyboard_check(vk_right);
    velocidade_horizontal  = mover_horizontal * spd;
}

// Não subir na calçada
if (place_meeting(x + velocidade_horizontal , y, obj_cenario_esq) || place_meeting(x + velocidade_horizontal , y, obj_cenario_dir)) 
{
    while (!place_meeting(x + sign(velocidade_horizontal ), y, obj_cenario_esq) && !place_meeting(x + sign(velocidade_horizontal ), y, obj_cenario_dir)) 
    {
        x += sign(velocidade_horizontal )
    }
    velocidade_horizontal = 0
}

// Passar só no sinal verde
var semaforo = instance_find(obj_semaforo, 0);

if (semaforo != noone) {
    var frame = floor(semaforo.image_index);

    if (place_meeting(x, y, obj_faixa1) && (frame == 0 || frame == 1 || frame == 4)) {
        room_goto(perdeu);
    }
}

