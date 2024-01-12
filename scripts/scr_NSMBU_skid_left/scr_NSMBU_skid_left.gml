///Sets the skid_left animations
function scr_NSMBU_skid_left() {
	/*if global.jugador = 0{*/
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_skid_left;
	        case cs_big: return spr_NSMBU_mario_big_skid_left;
	        case cs_fire: return spr_NSMBU_mario_fire_skid_left;
	        case cs_helice: return spr_NSMBU_mario_helice_skid_left;
	        case cs_arcon: return spr_NSMBU_mario_arcon_skid_left;
	        case cs_penguin: return spr_NSMBU_mario_penguin_skid_left; }
	/*}
	else{
	switch global.powerup {
	        case cs_small: return spr_NSMBU_toad_small_skid_left;
	        case cs_big: return spr_NSMBU_mario_big_skid_left;
	        case cs_fire: return spr_NSMBU_mario_fire_skid_left;
	        case cs_helice: return spr_NSMBU_mario_helice_skid_left;
	        case cs_arcon: return spr_NSMBU_mario_arcon_skid_left;
	        case cs_penguin: return spr_NSMBU_mario_penguin_skid_left; }
	}*/

}
