///Sets the walkhome Animations
function scr_NSMBU_walkhome() {
	/*if global.jugador = 0{*/
	 switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_walkhome;
	        case cs_big: return spr_NSMBU_mario_big_walkhome;
	        case cs_fire: return spr_NSMBU_mario_fire_walkhome;
	        case cs_helice: return spr_NSMBU_mario_helice_walkhome;
	        case cs_arcon: return spr_NSMBU_mario_arcon_walkhome;
	        case cs_penguin: return spr_NSMBU_mario_penguin_walkhome; }
	/*}
	else{
	 switch global.powerup {
	        case cs_small: return spr_NSMBU_toad_small_walkhome;
	        case cs_big: return spr_NSMBU_mario_big_walkhome;
	        case cs_fire: return spr_NSMBU_mario_fire_walkhome;
	        case cs_helice: return spr_NSMBU_mario_helice_walkhome;
	        case cs_arcon: return spr_NSMBU_mario_arcon_walkhome;
	        case cs_penguin: return spr_NSMBU_mario_penguin_walkhome; }
	}
*/
}
