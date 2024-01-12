if keyboard_check(global.abajo)
{
    if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0)
    {
        inwall = 1
        hspeed = 0
    }
    if (obj_mario.vspeed != 0)
        vspeed = 0.3
    hspeed = (0.5 * obj_mario.direct)
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
    vspeed = (-((6.125 - (3.5 * swimming))))
    if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0)
        inwall = 1
    obj_mario.isduckhold = 0
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
    if (obj_mario.helice_fly != 0)
        obj_mario.helice_fly = 5
    alarm[5] = -1
    if place_meeting(x, y, obj_solid)
    {
        if (obj_mario.direct == 1)
            var lugar = (x - 16)
        else
            lugar = (x + 16)
    }
    else
        lugar = x
    with (instance_create(lugar, (y + 1), obj_shell_held))
    {
        vspeed = 0.1
        switch other.sprite_index
        {
            case spr_shell_inside:
                sprite_index = spr_shell
                break
            case spr_shell_red_inside:
                sprite_index = spr_shell_red
                break
            case spr_SMB3_shell_wakeup:
                sprite_index = spr_SMB3_shell
                break
            case spr_SMB3_shell_red_wakeup:
                sprite_index = spr_SMB3_shell_red
                break
            case spr_SMB_shell_wakeup:
                sprite_index = spr_SMB_shell
                break
            case spr_SMB_shell_red_wakeup:
                sprite_index = spr_SMB_shell_red
                break
            default:
                sprite_index = other.sprite_index
        }

        koopainside = other.koopainside
        if (obj_mario.hspeed == 0)
        {
            hspeed = 2
            spd = 2.5
        }
        else
        {
            hspeed = (2.2 + abs((obj_mario.hspeed / 2)))
            spd = (2.2 + abs((obj_mario.hspeed / 2)))
        }
        prevhspeed = hspeed
        if (spd > 3.2)
            spd = 3.2
        hspeed *= sign(obj_mario.direct)
        prevhspeed *= sign(obj_mario.direct)
        spd *= sign(obj_mario.direct)
        hardness = other.hardness
        flip = other.flip
        inmune = 1
        alarm[2] = 15
    }
    obj_mario.isduckhold = 0
    instance_destroy()
}
