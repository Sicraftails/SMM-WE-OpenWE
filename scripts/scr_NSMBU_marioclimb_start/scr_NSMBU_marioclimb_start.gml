///Sets the climb_start animations
function scr_NSMBU_marioclimb_start() {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_climb_start;
	        case cs_big: return spr_NSMBU_mario_big_climb_start;
	        case cs_fire: return spr_NSMBU_mario_fire_climb_start;
	        case cs_helice: return spr_NSMBU_mario_helice_climb_start;
	        case cs_penguin: return spr_NSMBU_mario_penguin_climb_start; }


}
