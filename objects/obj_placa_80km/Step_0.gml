if (obj_carro.velocidade_kmh>=90){
	if (!infraction_registered) {
	scr_register_event("limite_velocidade", {});
    other.infraction_registered = true;
    global.pior_infracao = true;
	global.quant_infracoes += 1;
}
}