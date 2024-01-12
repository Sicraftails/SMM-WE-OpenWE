if (wake == 1)
{
    if (image_index >= 37.5)
    {
        if (object_index == obj_koopa_red_b)
            sprite_index = spr_NSMBU_koopa_red_b
        else
            sprite_index = spr_NSMBU_koopa_red
        image_index = 0
        image_speed = 0.5
        wake = 0
        alarm[10] = 1
    }
    else
        image_speed = 0.5
    dontplatform = 1
}
else
    dontplatform = 0
if (wings == 0 || paracaidas == 1)
{
    event_inherited()
    event_user(6)
}
if (wings == 1 && instance_exists(obj_mario))
{
    if (global.apariencia == 3)
        wings_anim += 0.5
    else
        wings_anim += 0.12
}
if (wings == 1 && paracaidas == 0)
{
    if ((!instance_exists(obj_mario)) || obj_mario.x < x)
        direct = -1
    else
        direct = 1
    if (y > (ystart + 32))
    {
        if (vspeed < -0.5)
            vspeed = -0.5
        else
            vspeed -= 0.015
    }
    else if (y < (ystart - 32))
    {
        if (vspeed > 0.5)
            vspeed = 0.5
        else
            vspeed += 0.015
    }
    if (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!(collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0))))
    {
        if (vspeed > 0)
            vspeed = -0.4
    }
    else if (vspeed < 0 && (collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solid, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_hurtsolid2, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solidphy, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_bullebill_base, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)))
        vspeed = 0.4
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
        event_user(7)
        instance_create((x + (3 * direct)), (y + para_y), obj_paracaidas_go)
        paracaidas = 0
        ystart = (y - 32)
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