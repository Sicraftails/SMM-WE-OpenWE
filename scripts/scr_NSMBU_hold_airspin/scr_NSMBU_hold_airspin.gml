///Sets the hold_airspin animations
function scr_NSMBU_hold_airspin() {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_hold_airspin;
	        case cs_big: return spr_NSMBU_mario_big_hold_airspin;
	        case cs_fire: return spr_NSMBU_mario_fire_hold_airspin;
	        case cs_helice: return spr_NSMBU_mario_helice_hold_airspin;
	        case cs_arcon: return spr_NSMBU_mario_arcon_hold_airspin;
	        case cs_penguin: return spr_NSMBU_mario_penguin_hold_airspin; }


}
