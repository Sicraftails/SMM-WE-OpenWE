/// Sets Walkpipes Animation
function scr_NSMBU_walkpipes() {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_walkpipes;
	        case cs_big: return spr_NSMBU_mario_big_walkpipes;
	        case cs_fire: return spr_NSMBU_mario_fire_walkpipes;
	        case cs_helice: return spr_NSMBU_mario_helice_walkpipes;
	        case cs_arcon: return spr_NSMBU_mario_arcon_walkpipes;
	        case cs_penguin: return spr_NSMBU_mario_penguin_walkpipes; }


}
