if (!infraction_registered) {
    if (place_meeting(x, y, obj_carro) && place_meeting(x, y, obj_pedestres)) {
        with (obj_carro) {
            scr_register_infraction("sinal_vermelho", {});
        }
        infraction_registered = true;
    }
}