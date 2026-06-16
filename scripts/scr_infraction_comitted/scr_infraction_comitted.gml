function scr_infraction_committed(event_id) {
    for (var i = 0; i < array_length(global.infraction_log); i++) {
        if (global.infraction_log[i].id == event_id) return true;
    }
    return false;
}