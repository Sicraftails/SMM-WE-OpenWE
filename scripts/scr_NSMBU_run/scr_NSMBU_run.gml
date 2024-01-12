///Sets the Run animations
function scr_NSMBU_run() {
	/*if global.jugador = 0{*/
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_run;
	        case cs_big: return spr_NSMBU_mario_big_run;
	        case cs_fire: return spr_NSMBU_mario_fire_run;
	        case cs_helice: return spr_NSMBU_mario_helice_run;
	        case cs_arcon: return spr_NSMBU_mario_arcon_run;
	        case cs_penguin: return spr_NSMBU_mario_penguin_run; }
	/*}
	else{
	switch global.powerup {
	        case cs_small: return spr_NSMBU_toad_small_run;
	        case cs_big: return spr_NSMBU_mario_big_run;
	        case cs_fire: return spr_NSMBU_mario_fire_run;
	        case cs_helice: return spr_NSMBU_mario_helice_run;
	        case cs_arcon: return spr_NSMBU_mario_arcon_run;
	        case cs_penguin: return spr_NSMBU_mario_penguin_run; }
	}*/
}
