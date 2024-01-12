var pow_left, pow_right, pswitch_left, pswitch_right, col_one_left, col_one_right;
if (mebelow == -4)
{
    pow_left = collision_rectangle((bbox_left - 1), (bbox_top + a), bbox_left, (bbox_bottom - 8), obj_block_pow_hold, 0, 0)
    pow_right = collision_rectangle(bbox_right, (bbox_top + a), (bbox_right + 1), (bbox_bottom - 8), obj_block_pow_hold, 0, 0)
    pswitch_left = collision_rectangle((bbox_left - 1), (bbox_top + a), bbox_left, (bbox_bottom - 8), obj_pswitch, 0, 0)
    pswitch_right = collision_rectangle(bbox_right, (bbox_top + a), (bbox_right + 1), (bbox_bottom - 8), obj_pswitch, 0, 0)
    if ((hspeed < 0 && collision_rectangle((bbox_left - 1), (bbox_top + a), bbox_left, (bbox_bottom - 8), obj_solid, 1, 0)) || (hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + a), (bbox_right + 1), (bbox_bottom - 8), obj_solid, 1, 0)) || (hspeed < 0 && collision_rectangle((bbox_left - 1), (bbox_top + a), bbox_left, (bbox_bottom - 8), obj_muncher, 1, 0)) || (hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + a), (bbox_right + 1), (bbox_bottom - 8), obj_muncher, 1, 0)) || (hspeed < 0 && collision_rectangle((bbox_left - 1), (bbox_top + a), bbox_left, (bbox_bottom - 8), obj_pinchos, 1, 0)) || (hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + a), (bbox_right + 1), (bbox_bottom - 8), obj_pinchos, 1, 0)) || (hspeed < 0 && collision_rectangle((bbox_left - 1), (bbox_top + a), bbox_left, (bbox_bottom - 8), obj_cannon, 1, 0)) || (hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + a), (bbox_right + 1), (bbox_bottom - 8), obj_cannon, 1, 0)) || (hspeed < 0 && collision_rectangle((bbox_left - 1), (bbox_top + a), bbox_left, (bbox_bottom - 8), obj_bullebill_base, 1, 0)) || (hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + a), (bbox_right + 1), (bbox_bottom - 8), obj_bullebill_base, 1, 0)) || (hspeed < 0 && collision_rectangle((bbox_left - 1), (bbox_top + a), bbox_left, (bbox_bottom - 8), obj_onewaygate_right, 1, 0)) || (hspeed > 0 && collision_rectangle(bbox_right, (bbox_top + a), (bbox_right + 1), (bbox_bottom - 8), obj_onewaygate_left, 1, 0)) || (hspeed < 0 && pow_left && pow_left.held == 0) || (hspeed > 0 && pow_right && pow_right.held == 0) || (hspeed < 0 && pswitch_left && pswitch_left.held == 0) || (hspeed > 0 && pswitch_right && pswitch_right.held == 0))
    {
        col_one_left = collision_rectangle(bbox_right, (bbox_top + a), (bbox_right + 1), (bbox_bottom - 8), obj_onewaygate_left, 0, 0)
        col_one_right = collision_rectangle((bbox_left - 1), (bbox_top + a), bbox_left, (bbox_bottom - 8), obj_onewaygate_right, 0, 0)
        if (hspeed > 0 && col_one_left)
        {
            if (!audio_is_playing(snd_oneway))
                audio_play_sound(snd_oneway, 0, false)
            with (col_one_left)
                rot = 1
        }
        if (hspeed < 0 && col_one_right)
        {
            if (!audio_is_playing(snd_oneway))
                audio_play_sound(snd_oneway, 0, false)
            with (col_one_right)
                rot = 1
        }
        hspeed = (-hspeed)
        direct = (-direct)
        while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 8), obj_solid, 1, 0)
            x++
        while collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 8), obj_solid, 1, 0)
            x--
        while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 8), obj_muncher, 1, 0)
            x++
        while collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 8), obj_muncher, 1, 0)
            x--
        while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 8), obj_pinchos, 1, 0)
            x++
        while collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 8), obj_pinchos, 1, 0)
            x--
        while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 8), obj_cannon, 1, 0)
            x++
        while collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 8), obj_cannon, 1, 0)
            x--
        while collision_rectangle(bbox_left, (bbox_top + 4), bbox_left, (bbox_bottom - 8), obj_bullebill_base, 1, 0)
            x++
        while collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 8), obj_bullebill_base, 1, 0)
            x--
    }
}

