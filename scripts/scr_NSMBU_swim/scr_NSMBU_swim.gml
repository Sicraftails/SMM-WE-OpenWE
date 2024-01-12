///Sets the swim animations
function scr_NSMBU_swim() {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_swim;
	        case cs_big: return spr_NSMBU_mario_big_swim;
	        case cs_fire: return spr_NSMBU_mario_fire_swim;
	        case cs_helice: return spr_NSMBU_mario_helice_swim;
	        case cs_arcon: return spr_NSMBU_mario_arcon_swim; }



}
