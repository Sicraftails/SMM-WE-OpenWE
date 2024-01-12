function scr_canpull() {
	if (instance_exists(obj_mario) && ((!instance_exists(obj_puller)) && ((global.powerup == -80) && (keyboard_check(global.lanzar_agarrar) && (keyboard_check(global.abajo) && ((global.yoshi == 0) && ((obj_mario.state < 2) && ((obj_mario.holding == 0) && ((obj_mario.iamkicking == 0) && (obj_mario.disablecontrols == 0))))))))))
		return 1;
	else
	    return 0;



}
