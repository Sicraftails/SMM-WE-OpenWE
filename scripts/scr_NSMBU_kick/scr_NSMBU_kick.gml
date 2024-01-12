///Sets the Idle animations
function scr_NSMBU_kick(argument0) {
	if (argument0 == 1) {
	    switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_swim_kick;
	        case cs_big: return spr_NSMBU_mario_big_swim_kick;
	        case cs_fire: return spr_NSMBU_mario_fire_swim_kick;
	        case cs_helice: return spr_NSMBU_mario_helice_swim_kick;
	        case cs_arcon: return spr_NSMBU_mario_arcon_kick;
	        case cs_penguin: return spr_NSMBU_mario_penguin_swim_kick; }}
	else {
	    switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_kick;
	        case cs_big: return spr_NSMBU_mario_big_kick;
	        case cs_fire: return spr_NSMBU_mario_fire_kick;
	        case cs_helice: return spr_NSMBU_mario_helice_kick;
	        case cs_arcon: return spr_NSMBU_mario_arcon_kick;
	        case cs_penguin: return spr_NSMBU_mario_penguin_kick;}}



}
