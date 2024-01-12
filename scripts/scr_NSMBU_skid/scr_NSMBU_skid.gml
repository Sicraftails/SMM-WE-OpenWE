///Sets the skid animations
function scr_NSMBU_skid() {
	/*if global.jugador = 0{*/
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_skid;
	        case cs_big: return spr_NSMBU_mario_big_skid;
	        case cs_fire: return spr_NSMBU_mario_fire_skid;
	        case cs_helice: return spr_NSMBU_mario_helice_skid;
	        case cs_arcon: return spr_NSMBU_mario_arcon_skid;
	        case cs_penguin: return spr_NSMBU_mario_penguin_skid; }
	/*}
	else{
	switch global.powerup {
	        case cs_small: return spr_NSMBU_toad_small_skid;
	        case cs_big: return spr_NSMBU_mario_big_skid;
	        case cs_fire: return spr_NSMBU_mario_fire_skid;
	        case cs_helice: return spr_NSMBU_mario_helice_skid;
	        case cs_arcon: return spr_NSMBU_mario_arcon_skid;
	        case cs_penguin: return spr_NSMBU_mario_penguin_skid; }
	}
*/
}
