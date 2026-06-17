var cor_anterior = draw_get_colour();
var font_anterior = draw_get_font();

draw_set_font(fonte_pixel);
draw_set_colour(c_white);

var texto = texto_sobre;

var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

var gx = x - cam_x;
var gy = y - cam_y;

var margem_x = 65;
var margem_y = 30;
var separacao_linhas = string_height("A");

draw_sprite(sprite_index, image_index, gx, gy);

gpu_set_scissor(
    gx + margem_x,
    gy + offset_texto_y,
    sprite_width - (margem_x * 2),
    sprite_height - (margem_y + offset_texto_y)
);

draw_text_ext(
    gx + margem_x,
    gy + offset_texto_y - scroll_y,
    texto,
    separacao_linhas,
    sprite_width - (margem_x * 2)
);
draw_set_colour(cor_anterior);
draw_set_font(font_anterior);
gpu_set_scissor(0, 0, display_get_gui_width(), display_get_gui_height());
draw_set_halign(fa_left);
draw_set_valign(fa_top);