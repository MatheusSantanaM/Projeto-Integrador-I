var sw = display_get_gui_width();
var sh = display_get_gui_height();

// --- Overlay escuro semitransparente ---
draw_set_alpha(0.55);
draw_set_color(c_black);
draw_rectangle(0, 0, sw, sh, false);
draw_set_alpha(1);

// --- Painel de fundo ---
// Sombra
draw_set_alpha(0.3);
draw_set_color(c_black);
draw_rectangle(painel_x + 6, painel_y + 6, painel_x + painel_w + 6, painel_y + painel_h + 6, false);
draw_set_alpha(1);

// Painel principal
draw_set_color(make_color_rgb(58, 32, 12)); // era (20, 20, 30)
draw_rectangle(painel_x, painel_y, painel_x + painel_w, painel_y + painel_h, false);

// Borda do painel
draw_set_color(make_color_rgb(139, 90, 43)); // era (80, 120, 200)
draw_rectangle(painel_x, painel_y, painel_x + painel_w, painel_y + painel_h, true);

// --- Título "PAUSA" ---
draw_set_font(fonte);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(make_color_rgb(255, 220, 160)); // era (200, 220, 255)
draw_text(painel_x + painel_w / 2, painel_y + 22, "PAUSA");

// --- Linha separadora ---
draw_set_color(make_color_rgb(139, 90, 43)); // era (80, 120, 200)
draw_set_alpha(0.5);
draw_line(painel_x + 20, painel_y + 62, painel_x + painel_w - 20, painel_y + 62);
draw_set_alpha(1);

// --- Botões ---
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fonte);

for (var i = 0; i < btn_count; i++) {
    var bx1 = btn_x;
    var by1 = btn_y[i];
    var bx2 = btn_x + btn_w;
    var by2 = btn_y[i] + btn_h;
    var cx  = bx1 + btn_w / 2;
    var cy  = by1 + btn_h / 2;

    // Cor do botão (hover ou normal)
    if (hover_index == i) {
        draw_set_color(make_color_rgb(120, 70, 25)); // era (60, 100, 200)
        draw_rectangle(bx1, by1, bx2, by2, false);
        draw_set_color(make_color_rgb(200, 140, 70)); // era (120, 160, 255)
        draw_rectangle(bx1, by1, bx2, by2, true);
        draw_set_color(c_white);
    } else {
       draw_set_color(make_color_rgb(80, 45, 15)); // era (35, 35, 50)
        draw_rectangle(bx1, by1, bx2, by2, false);
        draw_set_color(make_color_rgb(139, 90, 43)); // era (60, 80, 130)
        draw_rectangle(bx1, by1, bx2, by2, true);
        draw_set_color(make_color_rgb(255, 220, 160)); // era (180, 200, 240)
    }

    draw_text(cx, cy, btn_labels[i]);
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);