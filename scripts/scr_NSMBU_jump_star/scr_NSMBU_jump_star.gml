///Sets the jump_star animations
function scr_NSMBU_jump_star() {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_jump_star;
	        case cs_big: return spr_NSMBU_mario_big_jump_star;
	        case cs_fire: return spr_NSMBU_mario_fire_jump_star;
	        case cs_helice: return spr_NSMBU_mario_helice_jump_star;
	        case cs_arcon: return spr_NSMBU_mario_arcon_jump_star;
	        case cs_penguin: return spr_NSMBU_mario_penguin_jump_star; }


}
