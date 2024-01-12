///Sets the goalpole animations
function scr_NSMBU_goal_pole() {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_goalpole;
	        case cs_big: return spr_NSMBU_mario_big_goalpole;
	        case cs_fire: return spr_NSMBU_mario_fire_goalpole;
	        case cs_helice: return spr_NSMBU_mario_helice_goalpole;
	        case cs_arcon: return spr_NSMBU_mario_arcon_goalpole;
	        case cs_penguin: return spr_NSMBU_mario_penguin_goalpole; }


}
