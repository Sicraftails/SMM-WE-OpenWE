function scr_canhold() {
	switch global.apariencia
	{
		case 0:
	        return 0;
	        break
	    case 2:
	        if (instance_exists(obj_mario) && (keyboard_check(global.lanzar_agarrar) || global.key_br == 1) && obj_mario.holding == 0 && obj_mario.state < 3 && obj_mario.disablecontrols == 0)
	            return 1;
	        else
	            return 0;
	        break
	    case 4:
	        return 0;
	        break
	    default:
	        if (instance_exists(obj_mario) && (keyboard_check(global.lanzar_agarrar) || global.key_br == 1) && obj_mario.holding == 0 && obj_mario.isduck == 0 && obj_mario.walljump != 1 && obj_mario.state < 3 && obj_mario.disablecontrols == 0)
	            return 1;
	        else
	            return 0;
	}




}
