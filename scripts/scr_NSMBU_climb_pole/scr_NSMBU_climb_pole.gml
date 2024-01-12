///Sets the climb_pole animations
function scr_NSMBU_climb_pole() {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_climb_pole;
	        case cs_big: return spr_NSMBU_mario_big_climb_pole;
	        case cs_fire: return spr_NSMBU_mario_fire_climb_pole;
	        case cs_helice: return spr_NSMBU_mario_helice_climb_pole;
	        case cs_arcon: return spr_NSMBU_mario_arcon_climb_pole;
	        case cs_penguin: return spr_NSMBU_mario_penguin_climb_pole; }


}
