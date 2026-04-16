// Mexer direita e esquerda
moveh = -keyboard_check(vk_left)+keyboard_check(vk_right)
//movev = -keyboard_check(vk_up)+keyboard_check(vk_down)
hsp = moveh*spd
//vsp = movev*spd


// Não subir na calçada
if (place_meeting(x + hsp, y, obj_cenario_esq) || place_meeting(x + hsp, y, obj_cenario_dir)) 
{
    while (!place_meeting(x + sign(hsp), y, obj_cenario_esq) && !place_meeting(x + sign(hsp), y, obj_cenario_dir)) 
    {
        x += sign(hsp)
    }
    hsp = 0
}
x += hsp
//y += vsp

// Passar só no sinal verde
var semaforo = instance_find(obj_semaforo, 0);

if (semaforo != noone) {
    var frame = floor(semaforo.image_index);

    if (place_meeting(x, y, obj_faixa) && (frame == 0 || frame == 1 || frame == 4)) {
        room_goto(perdeu);
    }
}

// Pra ganhar
if (place_meeting(x, y, obj_faixa)) {
    entrou_faixa = true;
}

if (entrou_faixa && !place_meeting(x, y, obj_faixa) && !contagem_iniciada) {
    contagem_iniciada = true;
    alarm[0] = room_speed * 5;
}