if keyboard_check(global.abajo)
{
    if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0)
    {
        inwall = 1
        hspeed = 0
    }
    hspeed = (1 * obj_mario.direct)
    inmune = 1
    alarm[1] = 15
    obj_mario.isduckhold = 0
}
else if (keyboard_check(global.arriba) && global.apariencia == 2)
{
    explode = 1
    audio_play_sound(scr_snd_kick(), 0, false)
    with (obj_mario)
        event_user(7)
    obj_mario.stompstyle = 0
    with (instance_create((x + 8), (y - 2), obj_smoke))
        sprite_index = spr_spinthump
    if (!(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0)))
    {
        if (obj_mario.hspeed == 0)
            hspeed = 0
        else
            hspeed = (obj_mario.direct / 2)
        if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "airship") || (global.modo_noche == 1 && global.bg_level == "sky") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
        {
            vspeed = -2.4
            swimming = 1
        }
        else
            vspeed = -7
    }
    else
        inwall = 1
    inmune = 1
    alarm[1] = 15
    obj_mario.isduckhold = 0
}
else
{
    explode = 1
    if (global.apariencia == 3)
        audio_play_sound(choose(snd_NSMBU_throw1, snd_NSMBU_throw2), 0, false)
    else
    {
        audio_play_sound(scr_snd_kick(), 0, false)
        with (instance_create((x + 8), (y - 2), obj_smoke))
            sprite_index = spr_spinthump
    }
    with (obj_mario)
        event_user(7)
    obj_mario.stompstyle = 0
    y += 1
    if (!(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0)))
    {
        if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "airship") || (global.modo_noche == 1 && global.bg_level == "sky") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
        {
            vspeed = -0.2
            swimming = 1
        }
        else
            vspeed = -1.2
        if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "airship") || (global.modo_noche == 1 && global.bg_level == "sky") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
            hspeed = ((1 + abs(obj_mario.hspeed)) * sign(obj_mario.direct))
        else
            hspeed = ((3 + abs(obj_mario.hspeed)) * sign(obj_mario.direct))
    }
    else
        inwall = 1
    inmune = 1
    alarm[1] = 15
    obj_mario.isduckhold = 0
}
