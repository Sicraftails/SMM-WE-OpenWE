if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
event_user(3)
event_user(4)
if (global.bg_level == "underwater" || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swim = 1
anim += 0.2
if (gravity == 0)
{
    if (swimming == 1)
    {
        hspeed += 0.1
        if (hspeed > 0.8)
            hspeed = 0.8
    }
    else
    {
        hspeed += 0.08
        if (hspeed > 1.6)
            hspeed = 1.6
    }
}
if (ready == 1)
{
    hspeed = 0
    vspeed = 0
    gravity = 0
}
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
