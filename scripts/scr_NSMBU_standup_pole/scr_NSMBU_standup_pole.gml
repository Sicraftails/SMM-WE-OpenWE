///Sets the standup_pole animations
function scr_NSMBU_standup_pole() {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_standup_pole;
	        case cs_big: return spr_NSMBU_mario_big_standup_pole;
	        case cs_fire: return spr_NSMBU_mario_fire_standup_pole;
	        case cs_helice: return spr_NSMBU_mario_helice_standup_pole;
	        case cs_arcon: return spr_NSMBU_mario_arcon_standup_pole;
	        case cs_penguin: return spr_NSMBU_mario_penguin_standup_pole; }


}
