///Sets the drill_spin animations
function scr_NSMBU_drill_spin() {
	switch global.powerup {
	        case cs_big: return spr_NSMBU_mario_big_drill_spin;
	        case cs_fire: return spr_NSMBU_mario_big_drill_spin;
	        case cs_helice: return spr_NSMBU_mario_helice_drill_spin;
	        case cs_arcon: return spr_NSMBU_mario_big_drill_spin;
	        case cs_penguin: return spr_NSMBU_mario_big_drill_spin; }



}
