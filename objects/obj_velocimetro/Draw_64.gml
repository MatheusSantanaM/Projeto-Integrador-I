// Localização e tamanhos
var margem = 30;
var caixa_larg = 150;
var caixa_alt = 60;
var borda = 4;

// 
var x1 = margem;
var y1 = display_get_gui_height() - margem - caixa_alt;
var x2 = x1 + caixa_larg;
var y2 = y1 + caixa_alt;

// Borda
draw_set_color(c_gray);
draw_rectangle(x1 - borda, y1 - borda, x2 + borda, y2 + borda, false);
// Borda da borda
draw_set_color(c_black);
draw_rectangle(x1 - borda, y1 - borda, x2 + borda, y2 + borda, true);

// Fundo
draw_set_color(c_black);
draw_rectangle(x1, y1, x2, y2, false);

// Fonte
draw_set_font(fnt_araial);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_text((x1 + x2) / 2, (y1 + y2) / 2, string(obj_carro.velocidade_kmh) + " km/h");