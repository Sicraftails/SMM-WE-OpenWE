/// Sets the Runmax Animations
function scr_NSMBU_runmax() {
	/* global.jugador = 0{*/
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_runmax;
	        case cs_big: return spr_NSMBU_mario_big_runmax;
	        case cs_fire: return spr_NSMBU_mario_fire_runmax;
	        case cs_helice: return spr_NSMBU_mario_helice_runmax;
	        case cs_arcon: return spr_NSMBU_mario_arcon_runmax;
	        case cs_penguin: return spr_NSMBU_mario_penguin_runmax; }
	/*}
	else{
	switch global.powerup {
	        case cs_small: return spr_NSMBU_toad_small_runmax;
	        case cs_big: return spr_NSMBU_mario_big_runmax;
	        case cs_fire: return spr_NSMBU_mario_fire_runmax;
	        case cs_helice: return spr_NSMBU_mario_helice_runmax;
	        case cs_arcon: return spr_NSMBU_mario_arcon_runmax;
	        case cs_penguin: return spr_NSMBU_mario_penguin_runmax; }
	}*/
}
