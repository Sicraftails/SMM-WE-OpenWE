var dark;
prevhspeed = hspeed
event_inherited()
if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1) || (instance_exists(obj_lava_water) && (y + 8) > obj_lava_water.y && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    dark = 1
else
    dark = 0
if (hspeed != prevhspeed && paracaidas == 0)
{
    if (dark == 1)
        hspeed = (sign(hspeed) * 0.6)
    else
        hspeed = (sign(hspeed) * 1.5)
    if (gravity == 0)
    {
        vspeed = -1.5
        y--
    }
}
if (charge == 1 && paracaidas == 0)
{
    if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    {
        hspeed -= 0.0324
        if (dark == 1)
        {
            if (hspeed < -1)
                hspeed = -1
        }
        else if (hspeed < -1.5)
            hspeed = -1.5
    }
    else
    {
        hspeed += 0.0324
        if (hspeed > 1.5)
            hspeed = 1.5
    }
}
if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    direct = -1
else
    direct = 1
if (wings == 1 && paracaidas == 0 && instance_exists(obj_mario))
{
    if (global.apariencia == 3)
        wings_anim += 0.5
    else
        wings_anim += 0.12
    if (gravity == 0)
    {
        if (swimming == 1)
            vspeed = -2
        else
            vspeed = -3
    }
}
if (paracaidas == 1)
{
    direct = -1
    if (x > (xstart + 16))
    {
        if (hspeed < -0.5)
            hspeed = -0.5
        else
            hspeed -= 0.015
    }
    else if (x < (xstart - 16))
    {
        if (hspeed > 0.5)
            hspeed = 0.5
        else
            hspeed += 0.015
    }
    if (gravity == 0)
    {
        instance_create((x + (3 * direct)), y, obj_paracaidas_go)
        paracaidas = 0
        hspeed = 0
        alarm[10] = 10
    }
}
if paracaidas == 1{
	var oscillationSpeed = -0.1;
	var elapsedTime = (current_time - startTime) / room_speed;

	// Calcola l'angolo oscillante tra -30 e 30 gradi
	var oscillation = (sin(oscillationSpeed * elapsedTime) * 12);
	image_angle = oscillation;	
}
else
	image_angle = 0
