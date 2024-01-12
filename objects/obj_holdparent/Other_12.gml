if keyboard_check(global.abajo)
{
    if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_bullebill_base, 0, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_muncher, 0, 0))
    {
        inwall = 1
        hspeed = 0
    }
    if (!(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_slopeparent, 1, 0)))
    {
        if (obj_mario.hspeed == 0)
            hspeed = (0.7 * obj_mario.direct)
        else
            hspeed = (obj_mario.hspeed / 2)
    }
    else
        vspeed = 0.1
    inmune = 1
    alarm[3] = 15
    obj_mario.isduckhold = 0
}
else if (keyboard_check(global.arriba) && global.apariencia == 2)
{
    audio_play_sound(scr_snd_kick(), 0, false)
    with (obj_mario)
        event_user(7)
    obj_mario.stompstyle = 0
    with (instance_create((x + 8), (y - 2), obj_smoke))
        sprite_index = spr_spinthump
    if (obj_mario.hspeed == 0)
        hspeed = 0
    else
        hspeed = (obj_mario.direct / 2)
    vspeed = (-((6.125 - (3.5 * swimming))))
    if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_bullebill_base, 0, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_muncher, 0, 0))
        inwall = 1
    inmune = 1
    alarm[3] = 15
    obj_mario.isduckhold = 0
}
else
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
    if (obj_mario.helice_fly != 0)
        obj_mario.helice_fly = 5
    y += 1
    bouncy = 1
    if ((!(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0))) && (!(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_bullebill_base, 0, 0))) && (!(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_physicssolid, 0, 0))))
    {
        vspeed = (-((1.5 - swimming)))
        hspeed = (((2 - swimming) + abs(obj_mario.hspeed)) * sign(obj_mario.direct))
    }
    else
        inwall = 1
    inmune = 1
    alarm[3] = 15
    obj_mario.isduckhold = 0
}
//Slope fix
while collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_bottom,obj_slopeparent,1,0)
    y--