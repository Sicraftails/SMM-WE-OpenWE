///Sets the crouch animations
function scr_NSMBU_crouch() {
	/*if global.jugador = 0{*/
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_crouch;
	        case cs_big: return spr_NSMBU_mario_big_crouch;
	        case cs_fire: return spr_NSMBU_mario_fire_crouch;
	        case cs_helice: return spr_NSMBU_mario_helice_crouch;
	        case cs_arcon: return spr_NSMBU_mario_arcon_crouch;
	        case cs_penguin: return spr_NSMBU_mario_penguin_crouch; }
	/*}
	else{
	switch global.powerup {
	        case cs_small: return spr_NSMBU_toad_small_crouch;
	        case cs_big: return spr_NSMBU_mario_big_crouch;
	        case cs_fire: return spr_NSMBU_mario_fire_crouch;
	        case cs_helice: return spr_NSMBU_mario_helice_crouch;
	        case cs_arcon: return spr_NSMBU_mario_arcon_crouch;
	        case cs_penguin: return spr_NSMBU_mario_penguin_crouch; }
	}*/
}
