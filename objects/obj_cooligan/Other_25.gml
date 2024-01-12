imdead = instance_create(x, (y + 8), obj_enemy_dead)
imdead.girar = 1
imdead.direct = direct
imdead.sprite_index = s_gafas
switch global.apariencia
{
    case 0:
	imdead.image_index = 0
        break
    case 1:
	if (global.modo_noche != 1) and (global.bg_level != "underground") and (global.bg_level != "ghost"){
	imdead.image_index = 1
	}
	else{
	imdead.image_index = 3
	}
        break
    case 2:
	imdead.image_index = 2
        break
    case 3:
	imdead.image_index = 0
		break
}
if (dead_h == 0)
{
    if (other.hspeed == 0)
    {
        if ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
            imdead.hspeed = 1
        else if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
            imdead.hspeed = -1
    }
    else if (other.hspeed > 0)
        imdead.hspeed = 1
    else if (other.hspeed < 0)
        imdead.hspeed = -1
}