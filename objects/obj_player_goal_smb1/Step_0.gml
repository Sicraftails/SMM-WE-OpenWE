switch global.powerup
{
    case 0:
        mask_index = spr_smallmask
        break
    case -85:
        mask_index = spr_smallmask
        break
    case -77:
        mask_index = spr_megamask
        break
    default:
        mask_index = spr_bigmask
        break
}

if (global.bg_level == "underwater" || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swim = 1
anim += (0.065 + (abs(hspeed) / 7.5))
if (ready == 2 || ready == 3)
{
    if (bbox_top > room_height)
    {
        y = (room_height - 64)
        visible = false
    }
    if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
        swimming = 1
    else
        swimming = 0
    event_user(3)
    event_user(4)
    if (ready == 2)
    {
        if (hspeed < 0)
        {
            ready = 3
            event_user(15)
            hspeed = 0
        }
        else if (ready2 != 1)
        {
            if (swimming == 1)
                hspeed = 0.5
            else
                hspeed = 1.5
        }
    }
}
if (out_view == 1)
{
    hspeed = 0
    vspeed = 0
    gravity = 0
}
if (collision_rectangle((bbox_left + 1), bbox_bottom, (bbox_right - 1), (bbox_bottom + vspeed), obj_solidtop, 0, 0) || collision_rectangle((bbox_left + 1), bbox_bottom, (bbox_right - 1), (bbox_bottom + vspeed), obj_physicssolid, 0, 0))
    in_solid = 1
if (global.star_flash == 1)
{
if (cp_cont == 0){
	flashAlpha -= 0.15
if (flashAlpha < 0.3){
		cp_cont = 1
if (cp < 2)
	cp++
else
	cp = 0
	}
	}
else{
		flashAlpha += 0.15
if (flashAlpha > 0.9)
	cp_cont = 0
	}
blend_star = color[cp]
	}
event_user(13)


