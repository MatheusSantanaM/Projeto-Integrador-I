// Não passar no sinal vermelho

//var semaforo = instance_find(obj_semaforo, 0);

//if (semaforo != noone) {
  //  var frame = floor(semaforo.image_index);
	//with obj_carro{
    //if (place_meeting(x, y, obj_faixa) && (frame == 0 || frame == 1 || frame == 4)) {
    //    scr_register_event("sinal_vermelho",{});
    //}
//}}

if (!infraction_registered) {
    var semaforo = instance_find(obj_semaforo, 0);
    if (semaforo != noone) {
        var frame = floor(semaforo.image_index);
        with (obj_carro) {
            if (place_meeting(x, y, obj_faixa) && (frame == 0 || frame == 1 || frame == 4)) {
                scr_register_event("sinal_vermelho", {});
                other.infraction_registered = true;
				global.pior_infracao = true;
            }
        }
    }
}