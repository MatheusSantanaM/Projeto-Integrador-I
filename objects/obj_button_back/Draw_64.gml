draw_set_font(-1);
draw_set_colour(c_white);
draw_set_alpha(1);

// Desenha o sprite nas coordenadas corretas
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

draw_sprite(sprite_index, image_index, x - cam_x, y - cam_y);