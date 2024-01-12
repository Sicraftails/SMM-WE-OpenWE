///Sets the stun animations
function scr_NSMBU_stun() {
	switch global.powerup {
	        case cs_small: return spr_NSMBU_mario_small_stun;
	        case cs_big: return spr_NSMBU_mario_big_stun;
	        case cs_fire: return spr_NSMBU_mario_fire_stun;
	        case cs_helice: return spr_NSMBU_mario_helice_stun;
	        case cs_arcon: return spr_NSMBU_mario_arcon_stun;
	        case cs_penguin: return spr_NSMBU_mario_penguin_stun; }


}
