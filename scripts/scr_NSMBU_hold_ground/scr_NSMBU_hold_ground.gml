///Sets the hold_ground animations
function scr_NSMBU_hold_ground() {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_hold_ground;
	        case cs_big: return spr_NSMBU_mario_big_hold_ground;
	        case cs_fire: return spr_NSMBU_mario_fire_hold_ground;
	        case cs_helice: return spr_NSMBU_mario_helice_hold_ground;
	        case cs_arcon: return spr_NSMBU_mario_arcon_hold_ground;
	        case cs_penguin: return spr_NSMBU_mario_penguin_hold_ground; }


}
