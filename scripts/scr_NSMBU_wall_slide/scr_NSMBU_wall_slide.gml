///Sets the wall_slide animations
function scr_NSMBU_wall_slide() {
	/*if global.jugador = 0{*/
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_wall_slide;
	        case cs_big: return spr_NSMBU_mario_big_wall_slide;
	        case cs_fire: return spr_NSMBU_mario_fire_wall_slide;
	        case cs_helice: return spr_NSMBU_mario_helice_wall_slide;
	        case cs_penguin: return spr_NSMBU_mario_penguin_wall_slide; }
	/*}
	else{
	switch global.powerup {
	        case cs_small: return spr_NSMBU_toad_small_wallslide;
	        case cs_big: return spr_NSMBU_mario_big_wall_slide;
	        case cs_fire: return spr_NSMBU_mario_fire_wall_slide;
	        case cs_helice: return spr_NSMBU_mario_helice_wall_slide;
	        case cs_penguin: return spr_NSMBU_mario_penguin_wall_slide; }
	}*/

}
