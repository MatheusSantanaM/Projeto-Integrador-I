function scr_register_event(event_id, extra_data = {}){
	var _defs = global.infraction_defs.infracoes;

    if (!variable_struct_exists(_defs, event_id)) {
        show_debug_message("Infração não encontrada: " + event_id);
        return;
}
	var _def = variable_struct_get(_defs, event_id);

    array_push(global.infraction_log, {
        id:          event_id,
        title:       _def.title,
        description: _def.description,
        extra_data:  extra_data
    });
}