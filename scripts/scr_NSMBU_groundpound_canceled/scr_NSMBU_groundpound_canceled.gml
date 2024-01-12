///Sets the groundpound_canceled animations
function scr_NSMBU_groundpound_canceled() {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_groundpound_canceled;
	        case cs_big: return spr_NSMBU_mario_big_groundpound_canceled;
	        case cs_fire: return spr_NSMBU_mario_fire_groundpound_canceled;
	        case cs_helice: return spr_NSMBU_mario_helice_groundpound_canceled;
	        case cs_arcon: return spr_NSMBU_mario_arcon_groundpound_canceled;
	        case cs_penguin: return spr_NSMBU_mario_penguin_groundpound_canceled; }



}
