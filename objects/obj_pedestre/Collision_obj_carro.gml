// Carro bate nele
if (!infraction_registered) {
	scr_register_event("atropelou_pedestres", {});
    other.infraction_registered = true;
	scr_erro()
    global.pior_infracao = true;
	global.quant_infracoes += 1;
}