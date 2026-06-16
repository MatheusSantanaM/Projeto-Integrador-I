// Carro bate nele
if (!infraction_registered) {
	scr_register_event("atropelou_pedestres", {});
    other.infraction_registered = true;
    global.pior_infracao = true;
	global.quant_infracoes += 1;
}