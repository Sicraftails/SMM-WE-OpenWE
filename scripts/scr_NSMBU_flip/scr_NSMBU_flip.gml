///Sets the Flip animations
function scr_NSMBU_flip() {
	switch global.powerup {
	     case cs_small: return spr_NSMBU_mario_small_flip;
	     case cs_big: return spr_NSMBU_mario_big_flip;
	     case cs_fire: return spr_NSMBU_mario_fire_flip;
	     case cs_helice: return spr_NSMBU_mario_helice_flip;
	     case cs_arcon: return spr_NSMBU_mario_arcon_flip;
	     case cs_penguin: return 3229; }



}
