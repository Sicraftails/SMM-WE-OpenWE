///Sets the skid_right animations
function scr_NSMBU_skid_right() {
	/*if global.jugador = 0{*/
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_skid_right;
	        case cs_big: return spr_NSMBU_mario_big_skid_right;
	        case cs_fire: return spr_NSMBU_mario_fire_skid_right;
	        case cs_helice: return spr_NSMBU_mario_helice_skid_right;
	        case cs_arcon: return spr_NSMBU_mario_arcon_skid_right;
	        case cs_penguin: return spr_NSMBU_mario_penguin_skid_right; }
	/*}
	else{
	switch global.powerup {
	        case cs_small: return spr_NSMBU_toad_small_skid_right;
	        case cs_big: return spr_NSMBU_mario_big_skid_right;
	        case cs_fire: return spr_NSMBU_mario_fire_skid_right;
	        case cs_helice: return spr_NSMBU_mario_helice_skid_right;
	        case cs_arcon: return spr_NSMBU_mario_arcon_skid_right;
	        case cs_penguin: return spr_NSMBU_mario_penguin_skid_right; }
	}*/

}
