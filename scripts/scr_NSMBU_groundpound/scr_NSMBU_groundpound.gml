///Sets the groundpound animations
function scr_NSMBU_groundpound() {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_groundpound;
	        case cs_big: return spr_NSMBU_mario_big_groundpound;
	        case cs_fire: return spr_NSMBU_mario_fire_groundpound;
	        case cs_helice: return spr_NSMBU_mario_helice_groundpound;
	        case cs_arcon: return spr_NSMBU_mario_arcon_groundpount;
	        case cs_penguin: return spr_NSMBU_mario_penguin_groundpount; }


}
