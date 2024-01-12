var lugar;
if keyboard_check(global.abajo)
{
    if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0)
    {
        inwall = 1
        hspeed = 0
    }
    if (!(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_slopeparent, 1, 0)))
        hspeed = (0.4 * obj_mario.direct)
    else
        vspeed = 0.1
    obj_mario.isduckhold = 0
    inmune = 1
    alarm[6] = 15
}
else if (keyboard_check(global.arriba) && global.apariencia == 2)
{
    audio_play_sound(scr_snd_kick(), 0, false)
    with (obj_mario)
        event_user(7)
    obj_mario.stompstyle = 0
    with (instance_create(x, y, obj_smoke))
        sprite_index = spr_spinthump
    if (obj_mario.hspeed == 0)
        hspeed = 0
    else
        hspeed = (obj_mario.direct / 2)
    if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "airship") || (global.modo_noche == 1 && global.bg_level == "sky"))
    {
        vspeed = -3.5
        swimming = 1
    }
    else
        vspeed = -7
    if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0)
        inwall = 1
}
else if (vspeed >= 0)
{
    if (global.apariencia == 3)
        audio_play_sound(choose(snd_NSMBU_throw1, snd_NSMBU_throw2, snd_NSMBU_throw1), 0, false)
    else
    {
        audio_play_sound(scr_snd_kick(), 0, false)
        with (instance_create((x + 8), (y - 2), obj_smoke))
            sprite_index = spr_spinthump
    }
    with (obj_mario)
        event_user(7)
    obj_mario.stompstyle = 0
    if place_meeting(x, y, obj_solid)
    {
        if (obj_mario.direct == 1)
            lugar = (x - 16)
        else
            lugar = (x + 16)
    }
    else
        lugar = x
    with (instance_create(lugar, y, obj_snow_ball_held))
    {
        alarm[0] = 5
        fisica = 1
        vspeed = -0.5
        hspeed = (4.5 * sign(obj_mario.direct))
    }
    instance_destroy()
}
