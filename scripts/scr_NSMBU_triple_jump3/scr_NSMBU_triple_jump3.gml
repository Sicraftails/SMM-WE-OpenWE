///Sets the triple_jump3 animations
function scr_NSMBU_triple_jump3() {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_triple_jump3;
	        case cs_big: return spr_NSMBU_mario_big_triple_jump3;
	        case cs_fire: return spr_NSMBU_mario_fire_triple_jump3;
	        case cs_helice: return spr_NSMBU_mario_helice_triple_jump3;
	        case cs_arcon: return spr_NSMBU_mario_arcon_triple_jump3;
	        case cs_penguin: return spr_NSMBU_mario_penguin_triple_jump3; }


}
