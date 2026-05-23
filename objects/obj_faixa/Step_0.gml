if (place_meeting(x, y, obj_carro) && place_meeting(x, y, obj_pedestres)) {
    with (obj_carro) {
        instance_destroy();
    }
}