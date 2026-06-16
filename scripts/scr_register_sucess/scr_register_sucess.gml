function scr_register_sucess(event_id, extra_data = {}){
var _defs = global.success_defs.acertos;

    if (!variable_struct_exists(_defs, event_id)) {
        show_debug_message("Acerto não encontrado: " + event_id);
        return;
    }

    var _def = variable_struct_get(_defs, event_id);

    array_push(global.success_log, {
        id:          event_id,
        title:       _def.title,
        description: _def.description,
        extra_data:  extra_data
    });
}
