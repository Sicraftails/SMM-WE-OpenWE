if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
event_user(3)
if (global.powerup != -82)
    event_user(4)
if (global.bg_level == "underwater" || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swim = 1
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
if (gravity == 0 && global.powerup != -82)
{
    if (can_walk == 1)
    {
        if (swimming == 1)
        {
            hspeed += 0.125
            if (hspeed > 0.5)
                hspeed = 0.5
        }
        else
        {
            hspeed += 0.125
            if (hspeed > 1.5)
                hspeed = 1.5
        }
        direct = 1
    }
    if instance_exists(obj_ground3)
    {
        if (x >= (obj_ground3.x + 106))
        {
            hspeed = 0
            can_walk = 0
            direct = -1
            sprite_index = scr_marioidle()
            image_speed = 0
            image_index = 0
        }
    }
    else if (x >= (xstart + 106))
    {
        hspeed = 0
        direct = -1
        can_walk = 0
        sprite_index = scr_marioidle()
        image_speed = 0
        image_index = 0
    }
}

