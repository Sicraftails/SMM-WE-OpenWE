///Sets the fly_start animations
function scr_arcon_fly_start() {
	if (holding == 2)
	    return spr_NSMBU_mario_arcon_flyhold_start;
	else
	    return spr_NSMBU_mario_arcon_fly_start;



}
