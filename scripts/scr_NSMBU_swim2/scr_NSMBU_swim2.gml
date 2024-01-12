///Sets the swim_float animations
function scr_NSMBU_swim2() {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_swim_float;
	        case cs_big: return spr_NSMBU_mario_big_swim_float;
	        case cs_fire: return spr_NSMBU_mario_fire_swim_float;
	        case cs_helice: return spr_NSMBU_mario_helice_swim_float;
	        case cs_arcon: return spr_NSMBU_mario_arcon_swim_float; }


}
