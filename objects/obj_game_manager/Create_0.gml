global.infraction_log = [];
global.success_log    = [];
global.infraction_defs = undefined;
global.success_defs    = undefined;
global.jogo_pausado = false;

// Carrega infrações
var _buf = buffer_load("infracoes.json");
if (_buf != -1) {
    var _str = buffer_read(_buf, buffer_text);
    global.infraction_defs = json_parse(_str);
    buffer_delete(_buf);
}

// Carrega acertos
_buf = buffer_load("acertos.json");
if (_buf != -1) {
    var _str = buffer_read(_buf, buffer_text);
    global.success_defs = json_parse(_str);
    buffer_delete(_buf);
}