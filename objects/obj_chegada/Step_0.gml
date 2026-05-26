if (place_meeting(x, y, obj_carro)) {
    global.fase_atual    = room;
    global.proxima_fase   = room_next(room);
    room_goto(room_resultados);
}