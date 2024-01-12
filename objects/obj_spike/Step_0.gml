if (wings == 0 || paracaidas == 1)
    event_inherited()
if (global.apariencia > 1)
{
    if ((!instance_exists(obj_mario)) || obj_mario.x < x)
        direct = -1
    else
        direct = 1
    if (gravity == 0)
    {
        hspeed = (max(0, (abs(hspeed) - 0.1)) * sign(hspeed))
        if (abs(hspeed) < 0.1)
            hspeed = 0
    }
}
else if (wings == 0)
{
    if (swimming == 1)
    {
        if (direct == 1 && hspeed > 0.3)
        {
            hspeed -= 0.08
            if (hspeed <= 0.3)
                hspeed = 0.3
        }
        else if (direct == -1 && hspeed < -0.3)
        {
            hspeed += 0.08
            if (hspeed >= -0.3)
                hspeed = -0.3
        }
    }
    else if (direct == 1 && hspeed > 0.5)
    {
        hspeed -= 0.08
        if (hspeed <= 0.5)
            hspeed = 0.5
    }
    else if (direct == -1 && hspeed < -0.5)
    {
        hspeed += 0.08
        if (hspeed >= -0.5)
            hspeed = -0.5
    }
}
if (wings == 1 && paracaidas == 0)
{
    if (global.apariencia == 3)
        wings_anim += 0.5
    else
        wings_anim += 0.12
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
    if ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!(collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0)))) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_physicssolid, 0, 0) && (!(collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_physicssolid, 0, 0)))))
    {
        if (vspeed > 0)
            vspeed = -0.4
    }
    else if (vspeed < 0 && (collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solid, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_physicssolid, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solidphy, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_bullebill_base, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)))
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
        instance_create((x + (3 * direct)), y, obj_paracaidas_go)
        paracaidas = 0
        ystart = (y - 32)
        hspeed = 0
        alarm[10] = 10
    }
}
if paracaidas == 1{
	var oscillationSpeed = -0.1;
	var elapsedTime = (current_time - startTime) / room_speed;

	// Calcola l'angolo oscillante tra -12 e 12 gradi
	var oscillation = (sin(oscillationSpeed * elapsedTime) * 12);
	image_angle = oscillation;	
}
else
	image_angle = 0
if (ball != obj_lighting)
{
    if instance_exists(ball)
    {
        ball.x = x
        ball.y = (y - 16)
    }
    else
    {
        sprite_index = s_spike
        if (global.apariencia == 3)
            image_speed = 0.5
        else
            image_speed = 0.15
        if (global.apariencia < 2)
        {
            if (cont_ball >= 1)
            {
                cont_ball = 0
                if (wings == 0)
                    alarm[10] = 10
                alarm[0] = 180
            }
            else
            {
                cont_ball++
                alarm[0] = 10
            }
        }
        else
            alarm[0] = 180
        ball = obj_lighting
    }
}
