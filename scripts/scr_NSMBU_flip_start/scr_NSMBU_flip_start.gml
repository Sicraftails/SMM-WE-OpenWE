///Sets the Flip Start animations
function scr_NSMBU_flip_start() {
	switch global.powerup {
	     case cs_small: return spr_NSMBU_mario_small_flip_start;
	     case cs_big: return spr_NSMBU_mario_big_flip_start;
	     case cs_fire: return spr_NSMBU_mario_fire_flip_start;
	     case cs_helice: return spr_NSMBU_mario_helice_flip_start;
	     case cs_arcon: return spr_NSMBU_mario_arcon_flip_start;
	     case cs_penguin: return 3080; }



}
