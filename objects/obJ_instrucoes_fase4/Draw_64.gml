var x_texto = 600;
var y_texto = 300;
var largura_linha = 200;
var espacamento = 20;

var titulo = "Contexto da fase:";
var corpo = "Você está indo para um evento muito importante do trabalho e precisa chegar lá no máximo 16h.\n\nAconteceu um imprevisto em casa e você está saindo às 15:50, mas o local do evento ainda está longe.";

// Fonte
draw_set_font(fnt_minecraft)

// alinhamento padrão
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// título em amarelo
draw_set_color(c_yellow);
draw_text(x_texto, y_texto, titulo);

// restante em branco
draw_set_color(c_white);
draw_text_ext(x_texto, y_texto + 32, corpo, espacamento, largura_linha);

