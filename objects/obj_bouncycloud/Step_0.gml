if (global.apariencia != 3)
{
    if (ready == 1)
    {
        index = 1
        scale += 0.04
        if (scale > 1.2)
            ready = 2
    }
    else if (ready == 2)
    {
        scale -= 0.04
        if (scale < 1)
        {
            scale = 1
            ready = 0
            index = 0
        }
    }
}
else
{
    index += 0.5
    if (sprite == spr_NSMBU_bouncycloud_b && index >= 12.5)
    {
        sprite = spr_NSMBU_bouncycloud_idle
        index = 0
    }
}
if (collision_rectangle(bbox_left, (bbox_top - 3), bbox_right, bbox_top, obj_mario, 0, 0) && obj_mario.bbox_bottom < bbox_top && obj_mario.vspeed >= 0)
{
    ready = 1
    scale = 1
    if (global.apariencia == 3)
    {
        sprite = spr_NSMBU_bouncycloud_b
        index = 0
    }
    with (obj_mario)
    {
        event_user(15)
        groundpount = 0
        audio_stop_sound(other.sound)
        audio_play_sound(other.sound, 0, false)
        vspeed = (-(5.62 - (2.5 * isswim)))
        y--
        yview = (y + 32)
        camera_jump = 1
        alarm[0] = 4
        state = 2
        helice_fly = 0
        if keyboard_check(global.saltar)
            jumpnow = 1
        else
            jumpnow = 2
    }
}

