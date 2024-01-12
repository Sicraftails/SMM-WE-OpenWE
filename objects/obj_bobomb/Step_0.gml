if (wings == 1 && paracaidas == 0)
{
    if instance_exists(obj_mario)
    {
        if (global.apariencia == 3)
            wings_anim += 0.5
        else
            wings_anim += 0.12
        if (y > (ystart + 10))
        {
            if (vspeed < -0.4)
                vspeed = -0.4
            else
                vspeed -= 0.085
        }
        else if (y < (ystart - 10))
        {
            if (vspeed > 0.4)
                vspeed = 0.4
            else
                vspeed += 0.085
        }
    }
}
else
    event_inherited()
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
        event_user(7)
        instance_create(x, y, obj_paracaidas_go)
        paracaidas = 0
        ystart = (y - 32)
        y++
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
if (instance_exists(obj_lava_water) && (y + 16) >= obj_lava_water.y && global.bg_level == "castle")
{
    instance_create((x - 8), y, obj_explosion)
    instance_destroy()
}
else if (instance_exists(obj_lava_water) && (y + 16) >= obj_lava_water.y && global.bg_level == "mountain" && global.modo_noche == 1)
{
    instance_create((x - 8), y, obj_explosion)
    instance_destroy()
}