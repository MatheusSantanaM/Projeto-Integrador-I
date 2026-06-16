// Carro bate nele
if (!infraction_registered) {
	scr_register_event("bateu_num_carro", {});
    other.infraction_registered = true;
    global.pior_infracao = true;
}