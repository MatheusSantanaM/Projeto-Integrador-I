draw_set_font(fonte_pixel)
draw_set_colour(c_black)
draw_self()
/*var largura_maxima = 300; // Largura da caixa de texto
var separacao_linhas = -1; // -1 significa que o GM define automaticamente

var margem = 20; 
var largura_texto = sprite_width - (margem * 2);
var sep = string_height("A"); // Usa a altura de uma letra como base de separação
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_ext(x, y, "Sem Auto-Escola, é um jogo simulador de trânsito, onde o usuário pode tomar decisões no trânsito baseadas em situações/sinalizações, e receber feedbacks sobre essas decisões.", sep, largura_texto);
*/
var margem = 20; 
var largura_max = sprite_width - (margem * 2);
var separacao_linhas = string_height("A"); // Ajuste conforme o tamanho da sua fonte

// 4. O texto (pode ser uma variável global ou do objeto)
var texto = "Sem Auto-Escola, é um jogo simulador de trânsito, onde o usuário pode tomar decisões baseadas em situações/sinalizações, e receber feedbacks.";

// 5. Desenha o texto EXATAMENTE na posição do objeto
draw_text_ext(x, y, texto, separacao_linhas, largura_max);

// 6. Reseta o alinhamento (Boa prática para não quebrar outros textos do jogo)
draw_set_halign(fa_left);
draw_set_valign(fa_top);