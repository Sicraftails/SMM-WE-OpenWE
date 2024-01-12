///Sets the standup animations
function scr_NSMBU_standup() {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_standup;
	        case cs_big: return spr_NSMBU_mario_big_standup;
	        case cs_fire: return spr_NSMBU_mario_fire_standup;
	        case cs_helice: return spr_NSMBU_mario_helice_standup;
	        case cs_arcon: return spr_NSMBU_mario_arcon_standup;
	        case cs_penguin: return spr_NSMBU_mario_penguin_standup; }


}
