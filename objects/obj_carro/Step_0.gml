// Mexer direita e esquerda
mover_horizontal = -keyboard_check(vk_left)+keyboard_check(vk_right)
velocidade_horizontal = mover_horizontal*spd
mover_vertical = -keyboard_check(vk_up) + keyboard_check(vk_down);
velocidade_vertical = mover_vertical * spd;
x += velocidade_horizontal
y += velocidade_vertical