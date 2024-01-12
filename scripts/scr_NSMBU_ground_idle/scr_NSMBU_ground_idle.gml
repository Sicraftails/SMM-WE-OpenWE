///Sets Ground Idle Animations
function scr_NSMBU_ground_idle() {
	/*if global.jugador = 0{
	*/
	if (instance_exists(obj_mario) && obj_mario.isswim == 1) {
	    switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_swim_ground;
	        case cs_big: return spr_NSMBU_mario_big_swim_ground;
	        case cs_fire: return spr_NSMBU_mario_fire_swim_ground;
	        case cs_helice: return spr_NSMBU_mario_helice_swim_ground;
	        case cs_arcon: return spr_NSMBU_mario_arcon_swim_ground;
	        case cs_penguin: return spr_NSMBU_mario_penguin_swim_idle; }}
	else {
	    switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_ground_idle;
	        case cs_big: return spr_NSMBU_mario_big_ground_idle;
	        case cs_fire: return spr_NSMBU_mario_fire_ground_idle;
	        case cs_helice: return spr_NSMBU_mario_helice_ground_idle;
	        case cs_arcon: return spr_NSMBU_mario_arcon_ground_idle;
	        case cs_penguin: return spr_NSMBU_mario_penguin_ground_idle; }}
	/*}
	else {
	if (instance_exists(obj_mario) && obj_mario.isswim == 1) {
	    switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_swim_ground;
	        case cs_big: return spr_NSMBU_mario_big_swim_ground;
	        case cs_fire: return spr_NSMBU_mario_fire_swim_ground;
	        case cs_helice: return spr_NSMBU_mario_helice_swim_ground;
	        case cs_arcon: return spr_NSMBU_mario_arcon_swim_ground;
	        case cs_penguin: return spr_NSMBU_mario_penguin_swim_idle; }}
	else {
	    switch global.powerup {
	        case cs_small: return spr_NSMBU_toad_small_ground_idle;
	        case cs_big: return spr_NSMBU_mario_big_ground_idle;
	        case cs_fire: return spr_NSMBU_mario_fire_ground_idle;
	        case cs_helice: return spr_NSMBU_mario_helice_ground_idle;
	        case cs_arcon: return spr_NSMBU_mario_arcon_ground_idle;
	        case cs_penguin: return spr_NSMBU_mario_penguin_ground_idle; }}
	}
	*/
}
