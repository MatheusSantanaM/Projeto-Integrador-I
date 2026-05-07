draw_set_font(fonte_pixel);

var margem_x = 65;
var margem_y = 30;
var largura_max = sprite_width - (margem_x * 2);
var area_visivel = sprite_height - (margem_y * 2);
var separacao_linhas = string_height("A");

var texto_altura_total = string_height_ext(texto_sobre, separacao_linhas, largura_max);

if (keyboard_check(vk_down) || mouse_wheel_down()) scroll_y += scroll_speed;
if (keyboard_check(vk_up)   || mouse_wheel_up())   scroll_y -= scroll_speed;

var scroll_max = max(0, texto_altura_total - area_visivel);
scroll_y = clamp(scroll_y, 0, scroll_max);