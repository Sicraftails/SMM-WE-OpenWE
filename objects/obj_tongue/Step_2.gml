if (instance_exists(obj_mario) && instance_exists(obj_yoshi2))
{
    if (obj_yoshi2.sprite_index == spr_yoshi_lick)
    {
        tongue1x = ((obj_yoshi2.x - 3) + (19 * obj_yoshi2.direct))
        tongue2x = ((t2 * obj_yoshi2.direct) + tongue1x)
        tongue3x = ((t3 * obj_yoshi2.direct) + tongue1x)
        tongue4x = ((t4 * obj_yoshi2.direct) + tongue1x)
    }
    else
    {
        tongue1x = ((obj_yoshi2.x - 3) + (13 * obj_yoshi2.direct))
        tongue2x = ((t2 * obj_yoshi2.direct) + tongue1x)
        tongue3x = ((t3 * obj_yoshi2.direct) + tongue1x)
        tongue4x = ((t4 * obj_yoshi2.direct) + tongue1x)
    }
    x = round(((t5 * obj_yoshi2.direct) + tongue1x))
    if (obj_yoshi2.locked == 2)
        y = (obj_yoshi2.y + 4)
    else
        y = (obj_yoshi2.y - 7)
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
            obj_yoshi2.alarm[1] = 5
            if hunger
            {
                if (powerup != noone)
                {
                    audio_play_sound(snd_yoshi_eat, 0, false)
                    obj_yoshi2.powerup = powerup
                    powerup = noone
                }
                else if (berry != noone)
                {
                    audio_play_sound(snd_yoshi_eat, 0, false)
                    obj_yoshi2.berry = berry
                    berry = noone
                }
                else if (obj_yoshi2.mouthholder == noone)
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
    with (obj_yoshi2)
    {
        licking = 0
        locked = 0
    }
    instance_destroy()
}

