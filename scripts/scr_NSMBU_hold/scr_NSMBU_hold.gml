///Sets the hold animations
function scr_NSMBU_hold() {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_hold;
	        case cs_big: return spr_NSMBU_mario_big_hold;
	        case cs_fire: return spr_NSMBU_mario_fire_hold;
	        case cs_helice: return spr_NSMBU_mario_helice_hold;
	        case cs_arcon: return spr_NSMBU_mario_arcon_hold;
	        case cs_penguin: return spr_NSMBU_mario_penguin_hold; }


}
