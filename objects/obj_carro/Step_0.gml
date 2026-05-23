// Mexer direita e esquerda
moveh = -keyboard_check(vk_left)+keyboard_check(vk_right)
hsp = moveh*spd
movev = -keyboard_check(vk_up) + keyboard_check(vk_down);
vsp = movev * spd;
x += hsp
y += vsp

// Não subir na calçada
if (place_meeting(x + hsp, y, obj_cenario_esq) || place_meeting(x + hsp, y, obj_cenario_dir)) 
{
    while (!place_meeting(x + sign(hsp), y, obj_cenario_esq) && !place_meeting(x + sign(hsp), y, obj_cenario_dir)) 
    {
        x += sign(hsp)
    }
    hsp = 0
}

// Passar só no sinal verde
var semaforo = instance_find(obj_semaforo, 0);

if (semaforo != noone) {
    var frame = floor(semaforo.image_index);

    if (place_meeting(x, y, obj_faixa1) && (frame == 0 || frame == 1 || frame == 4)) {
        room_goto(perdeu);
    }
}

