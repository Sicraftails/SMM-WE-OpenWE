var col_one_left, col_one_right, col_b_switch, col_b_switch2, col_a_switch, col_a_switch2, col_pow, col_one_down, col_one_up;
if ((hspeed > 0 && collision_rectangle((bbox_right + hspeed), bbox_top, (bbox_right + hspeed), bbox_bottom, obj_solid, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + hspeed), bbox_top, (bbox_left + hspeed), bbox_bottom, obj_solid, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + hspeed), bbox_top, (bbox_right + hspeed), bbox_bottom, obj_bullebill_base, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + hspeed), bbox_top, (bbox_left + hspeed), bbox_bottom, obj_bullebill_base, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + hspeed), bbox_top, (bbox_right + hspeed), bbox_bottom, obj_muncher, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + hspeed), bbox_top, (bbox_left + hspeed), bbox_bottom, obj_muncher, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + hspeed), bbox_top, (bbox_right + hspeed), bbox_bottom, obj_pinchos, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + hspeed), bbox_top, (bbox_left + hspeed), bbox_bottom, obj_pinchos, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + hspeed), bbox_top, (bbox_right + hspeed), bbox_bottom, obj_cannon, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + hspeed), bbox_top, (bbox_left + hspeed), bbox_bottom, obj_cannon, 0, 0)) || (hspeed > 0 && collision_rectangle((bbox_right + hspeed), bbox_top, (bbox_right + hspeed), bbox_bottom, obj_onewaygate_left, 0, 0)) || (hspeed < 0 && collision_rectangle((bbox_left + hspeed), bbox_top, (bbox_left + hspeed), bbox_bottom, obj_onewaygate_right, 0, 0)))
{
    col_one_left = collision_rectangle(bbox_right, (bbox_top + 1), (bbox_right + 1), (bbox_bottom - 4), obj_onewaygate_left, 0, 0)
    col_one_right = collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_onewaygate_right, 0, 0)
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
    col_b_switch = collision_rectangle((bbox_right + hspeed), bbox_top, (bbox_right + hspeed), bbox_bottom, obj_onoffblock, 0, 0)
    col_b_switch2 = collision_rectangle((bbox_left + hspeed), bbox_top, (bbox_left + hspeed), bbox_bottom, obj_onoffblock, 0, 0)
    if (hspeed > 0 && col_b_switch && col_b_switch.ready == 0)
    {
        with (col_b_switch)
            event_user(1)
        event_user(0)
    }
    else if (hspeed < 0 && col_b_switch2 && col_b_switch2.ready == 0)
    {
        with (col_b_switch2)
            event_user(1)
        event_user(0)
    }
    else
        hspeed = (-hspeed)
}
if ((vspeed > 0 && collision_rectangle(bbox_left, (bbox_bottom + vspeed), bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)) || (vspeed < 0 && collision_rectangle(bbox_left, (bbox_top + vspeed), bbox_right, (bbox_top + vspeed), obj_solid, 0, 0)) || (vspeed > 0 && collision_rectangle(bbox_left, (bbox_bottom + vspeed), bbox_right, (bbox_bottom + vspeed), obj_pinchos, 0, 0)) || (vspeed < 0 && collision_rectangle(bbox_left, (bbox_top + vspeed), bbox_right, (bbox_top + vspeed), obj_pinchos, 0, 0)) || (vspeed > 0 && collision_rectangle(bbox_left, (bbox_bottom + vspeed), bbox_right, (bbox_bottom + vspeed), obj_muncher, 0, 0)) || (vspeed < 0 && collision_rectangle(bbox_left, (bbox_top + vspeed), bbox_right, (bbox_top + vspeed), obj_muncher, 0, 0)) || (vspeed > 0 && collision_rectangle(bbox_left, (bbox_bottom + vspeed), bbox_right, (bbox_bottom + vspeed), obj_cannon, 0, 0)) || (vspeed < 0 && collision_rectangle(bbox_left, (bbox_top + vspeed), bbox_right, (bbox_top + vspeed), obj_cannon, 0, 0)) || (vspeed < 0 && collision_rectangle(bbox_left, (bbox_top + vspeed), bbox_right, (bbox_top + vspeed), obj_onewaygate_bottom, 0, 0)))
{
    col_a_switch = collision_rectangle(bbox_left, (bbox_bottom + vspeed), bbox_right, (bbox_bottom + vspeed), obj_onoffblock, 0, 0)
    col_a_switch2 = collision_rectangle(bbox_left, (bbox_top + vspeed), bbox_right, (bbox_top + vspeed), obj_onoffblock, 0, 0)
    col_pow = collision_rectangle(bbox_left, (bbox_top + vspeed), bbox_right, (bbox_top + vspeed), obj_block_pow_hold, 0, 0)
    col_one_down = collision_rectangle(bbox_left, (bbox_bottom + vspeed), bbox_right, (bbox_bottom + vspeed), obj_onewaygate_bottom, 0, 0)
    col_one_up = collision_rectangle((bbox_left - 1), (bbox_top + 1), bbox_left, (bbox_bottom - 4), obj_onewaygate_top, 0, 0)
    if (vspeed > 0 && col_one_up)
    {
        if (!audio_is_playing(snd_oneway))
            audio_play_sound(snd_oneway, 0, false)
        with (col_one_up)
            rot = 1
    }
    if (hspeed < 0 && col_one_down)
    {
        if (!audio_is_playing(snd_oneway))
            audio_play_sound(snd_oneway, 0, false)
        with (col_one_down)
            rot = 1
    }
    if (vspeed > 0 && col_pow && col_pow.held == 0)
    {
        col_pow.explode = 1
        with (col_pow)
            event_user(6)
        event_user(0)
    }
    else if (vspeed > 0 && col_a_switch && col_a_switch.ready == 0)
    {
        with (col_a_switch)
            event_user(1)
        event_user(0)
    }
    else if (vspeed < 0 && col_a_switch2 && col_a_switch2.ready == 0)
    {
        with (col_a_switch2)
            event_user(1)
        event_user(0)
    }
    else
        vspeed = (-vspeed)
}
if (vspeed > 0 && place_meeting((x + hspeed), (y + vspeed), obj_slopeparent))
{
    hspeed = (-hspeed)
    vspeed = (-vspeed)
}
if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1))
{
    if (hspeed > 1)
    {
        hspeed -= 0.08
        if (hspeed <= 1)
            hspeed = 1
    }
    else if (hspeed < -1)
    {
        hspeed += 0.08
        if (hspeed >= -1)
            hspeed = -1
    }
}
else if (hspeed > 2)
{
    hspeed -= 0.05
    if (hspeed <= 2)
        hspeed = 2
}
else if (hspeed < -2)
{
    hspeed += 0.05
    if (hspeed >= -2)
        hspeed = -2
}
if vspeed > 0
and place_meeting(x+hspeed,y+vspeed,obj_slopeparent)
{
    hspeed = -hspeed
    vspeed = -vspeed
}
if outside_view()
    instance_destroy()

