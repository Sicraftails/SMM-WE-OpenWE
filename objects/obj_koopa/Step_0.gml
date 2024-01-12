if (wake == 1)
{
    if (image_index >= 37.5)
    {
        if (object_index == obj_koopa_b)
            sprite_index = spr_NSMBU_koopa_b
        else
            sprite_index = spr_NSMBU_koopa
        image_index = 0
        image_speed = 0.5
        wake = 0
        alarm[10] = 1
    }
    else
        image_speed = 0.5
}
if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1) || (instance_exists(obj_lava_water) && (y + 8) > obj_lava_water.y && ((global.bg_level == "forest" && global.modo_noche == 0) || global.bg_level == "beach")))
    swimming = 1
else
    swimming = 0
event_user(2)
event_user(3)
event_user(4)
if (hspeed > 0)
    direct = 1
else if (hspeed < 0)
    direct = -1
if (wings == 1 && instance_exists(obj_mario))
{
    if (global.apariencia == 3)
        wings_anim += 0.5
    else
        wings_anim += 0.12
    if (paracaidas == 0)
    {
        if (gravity == 0)
        {
            if (swimming == 1)
                vspeed = -2.062
            else
                vspeed = -4.125
        }
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
        event_user(7)
        instance_create((x + (3 * direct)), (y + para_y), obj_paracaidas_go)
        paracaidas = 0
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
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) >= (obj_lava_water.y - 12) && global.bg_level == "castle")
{
    if (global.apariencia != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        direct = other.direct
    }
    instance_destroy()
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.bg_level == "forest" && global.modo_noche == 1)
{
    if (global.apariencia != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        direct = other.direct
    }
    instance_destroy()
}
