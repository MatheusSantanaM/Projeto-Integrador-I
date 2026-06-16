global.jogo_pausado = true;

// Dimensões da janela
var sw = display_get_gui_width();
var sh = display_get_gui_height();
fonte = font_add("Minecraftia-Regular.ttf", 15, true, true, 32, 128)
// Painel central
painel_w = 320;
painel_h = 340;
painel_x = (sw - painel_w) / 2;
painel_y = (sh - painel_h) / 2;

// Botões
btn_count = 3;
btn_labels[0] = "Retomar";
btn_labels[1] = "Opções";
btn_labels[2] = "Voltar ao Menu";

btn_h = 54;
btn_gap = 16;
btn_w = painel_w - 60;
btn_x = painel_x + 30;

// Calcula posição Y dos botões (centralizados no painel)
var total_h = btn_count * btn_h + (btn_count - 1) * btn_gap;
var start_y = painel_y + (painel_h - total_h) / 2 + 30; // +30 por causa do título

for (var i = 0; i < btn_count; i++) {
    btn_y[i] = start_y + i * (btn_h + btn_gap);
}

hover_index = -1; // qual botão está com hover

instance_deactivate_all(true);
instance_activate_object(obj_carro);
instance_activate_object(obj_camera);
instance_activate_object(obj_agrupa_cenario);
if (instance_exists(obj_agrupa_cenario)) {
    obj_agrupa_cenario.image_speed = 0;
}
global.cenario_image_speed= 1;