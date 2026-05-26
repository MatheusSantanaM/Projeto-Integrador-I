draw_set_color(make_color_rgb(252, 235, 235));
draw_roundrect_ext(703, 20, 1346, 748, 8, 8, false);

// Borda da página
draw_set_color(make_color_rgb(247, 193, 193));
draw_roundrect_ext(703, 20, 1346, 748, 8, 8, true);

// Título da coluna
draw_set_font(fnt_minecraftia_16);
draw_set_color(make_color_rgb(121, 31, 31));
draw_set_halign(fa_left);
draw_text(723, 32, "Infracoes");

// Linha separadora do título
draw_set_color(make_color_rgb(247, 193, 193));
draw_line(715, 58, 1334, 58);

// Cards
var _card_x  = 715;
var _card_w  = 619;
var _card_h  = 80;
var _card_gap = 12;
var _start_y  = 68;

for (var i = 0; i < array_length(global.infraction_log); i++) {
    var _ev = global.infraction_log[i];
    var _cy = _start_y + i * (_card_h + _card_gap);

    // Fundo do card
    draw_set_color(make_color_rgb(255, 255, 255));
    draw_roundrect_ext(_card_x, _cy, _card_x + _card_w, _cy + _card_h, 6, 6, false);

    // Borda do card
    draw_set_color(make_color_rgb(247, 193, 193));
    draw_roundrect_ext(_card_x, _cy, _card_x + _card_w, _cy + _card_h, 6, 6, true);

    // Título do evento
    draw_set_font(fnt_minecraftia_14);
    draw_set_color(make_color_rgb(121, 31, 31));
    draw_set_halign(fa_left);
    draw_text(_card_x + 10, _cy + 10, _ev.title);

    // Descrição
    draw_set_font(fnt_minecraftia_12);
    draw_set_color(make_color_rgb(163, 45, 45));
    var _desc = scr_fill_description(_ev.description, _ev.extra_data);
    draw_text_ext(_card_x + 10, _cy + 34, _desc, -1, _card_w - 20);
}

// Mensagem se não houver infrações
if (array_length(global.infraction_log) == 0) {
    draw_set_font(fnt_minecraftia_12);
    draw_set_color(make_color_rgb(150, 150, 150));
    draw_set_halign(fa_center);
    draw_text(1024, 400, "Nenhuma infracao registrada.");
}