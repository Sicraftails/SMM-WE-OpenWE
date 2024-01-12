///Sets the jump1 animations
function scr_NSMBU_jump1() {
	/*if global.jugador = 0{*/
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_jump1;
	        case cs_big: return spr_NSMBU_mario_big_jump1;
	        case cs_fire: return spr_NSMBU_mario_fire_jump1;
	        case cs_helice: return spr_NSMBU_mario_helice_jump1;
	        case cs_arcon: return spr_NSMBU_mario_arcon_jump1;
	        case cs_penguin: return spr_NSMBU_mario_penguin_jump1; }
	/*}
	else {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_toad_small_jump1;
	        case cs_big: return spr_NSMBU_mario_big_jump1;
	        case cs_fire: return spr_NSMBU_mario_fire_jump1;
	        case cs_helice: return spr_NSMBU_mario_helice_jump1;
	        case cs_arcon: return spr_NSMBU_mario_arcon_jump1;
	        case cs_penguin: return spr_NSMBU_mario_penguin_jump1; }
	} */
}
