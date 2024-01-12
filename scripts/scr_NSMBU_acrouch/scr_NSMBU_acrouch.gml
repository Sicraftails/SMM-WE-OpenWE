///Sets the acrouch animations
function scr_NSMBU_acrouch() {
	/*if global.jugador = 0{*/
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_acrouch;
	        case cs_big: return spr_NSMBU_mario_big_acrouch;
	        case cs_fire: return spr_NSMBU_mario_fire_acrouch;
	        case cs_helice: return spr_NSMBU_mario_helice_acrouch;
	        case cs_arcon: return spr_NSMBU_mario_arcon_acrouch;
	        case cs_penguin: return spr_NSMBU_mario_penguin_acrouch; }
	/*}
	else {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_toad_small_acrouch;
	        case cs_big: return spr_NSMBU_mario_big_acrouch;
	        case cs_fire: return spr_NSMBU_mario_fire_acrouch;
	        case cs_helice: return spr_NSMBU_mario_helice_acrouch;
	        case cs_arcon: return spr_NSMBU_mario_arcon_acrouch;
	        case cs_penguin: return spr_NSMBU_mario_penguin_acrouch; }
	}
*/
}
