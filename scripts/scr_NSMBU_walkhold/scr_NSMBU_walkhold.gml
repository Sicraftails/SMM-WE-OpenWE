///Sets the walkhold animations
function scr_NSMBU_walkhold() {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_walkhold;
	        case cs_big: return spr_NSMBU_mario_big_walkhold;
	        case cs_fire: return spr_NSMBU_mario_fire_walkhold;
	        case cs_helice: return spr_NSMBU_mario_helice_walkhold;
	        case cs_arcon: return spr_NSMBU_mario_arcon_walkhold;
	        case cs_penguin: return spr_NSMBU_mario_penguin_walkhold; }


}
