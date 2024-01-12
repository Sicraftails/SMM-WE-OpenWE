///Sets the swim_hold animations
function scr_NSMBU_swim_hold() {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_swim_hold;
	        case cs_big: return spr_NSMBU_mario_big_swim_hold;
	        case cs_fire: return spr_NSMBU_mario_fire_swim_hold;
	        case cs_helice: return spr_NSMBU_mario_helice_swim_hold;
	        case cs_arcon: return spr_NSMBU_mario_arcon_swim_hold;
	        case cs_penguin: return spr_NSMBU_mario_penguin_swim_hold; }


}
