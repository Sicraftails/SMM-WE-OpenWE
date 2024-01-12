if (instance_exists(obj_mario) && instance_exists(obj_yoshi_blue))
{
    if (obj_yoshi_blue.sprite_index == spr_yoshi_lick)
    {
        tongue1x = ((obj_yoshi_blue.x - 3) + (19 * obj_yoshi_blue.direct))
        tongue2x = ((t2 * obj_yoshi_blue.direct) + tongue1x)
        tongue3x = ((t3 * obj_yoshi_blue.direct) + tongue1x)
        tongue4x = ((t4 * obj_yoshi_blue.direct) + tongue1x)
    }
    else
    {
        tongue1x = ((obj_yoshi_blue.x - 3) + (13 * obj_yoshi_blue.direct))
        tongue2x = ((t2 * obj_yoshi_blue.direct) + tongue1x)
        tongue3x = ((t3 * obj_yoshi_blue.direct) + tongue1x)
        tongue4x = ((t4 * obj_yoshi_blue.direct) + tongue1x)
    }
    x = round(((t5 * obj_yoshi_blue.direct) + tongue1x))
    if (obj_yoshi_blue.locked == 2)
        y = (obj_yoshi_blue.y + 4)
    else
        y = (obj_yoshi_blue.y - 7)
    if (ready == 0)
    {
        if (t2 != 8)
            t2 += 4
        if (t3 != 16)
            t3 += 4
        if (t4 != 24)
            t4 += 4
        if (t5 != 32)
            t5 += 4
        else if (ready != 1)
        {
            ready = 1
            alarm[0] = 8
        }
    }
    else if (ready == 2)
    {
        if (t2 != 0)
            t2 -= 4
        if (t3 != 0)
            t3 -= 4
        if (t4 != 0)
            t4 -= 4
        if (t5 != 0)
            t5 -= 4
        else
        {
            obj_yoshi_blue.alarm[1] = 5
            if hunger
            {
                if (powerup != noone)
                {
                    audio_play_sound(snd_yoshi_eat, 0, false)
                    obj_yoshi_blue.powerup = powerup
                    powerup = noone
                }
                else if (berry != noone)
                {
                    audio_play_sound(snd_yoshi_eat, 0, false)
                    obj_yoshi_blue.berry = berry
                    berry = noone
                }
                else if (obj_yoshi_blue.mouthholder == noone)
                {
                    audio_play_sound(snd_yoshi_eat, 0, false)
                    audio_play_sound(snd_coin, 0, false)
                    global.coins++
                }
            }
            instance_destroy()
        }
    }
}
else
{
    with (obj_yoshi_blue)
    {
        licking = 0
        locked = 0
    }
    instance_destroy()
}

