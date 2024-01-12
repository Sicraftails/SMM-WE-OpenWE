if (state != 3)
{
    if (keyboard_check(global.saltar) || keyboard_check(global.saltar_spin))
        jumpnow = 1
    else
        jumpnow = 2
    state = 2
    yview = (y + 32)
    camera_jump = 1
    alarm[0] = 4
    airspin = 0
    airspin_count = 0
    if (pmeter >= 6 && abs(hspeed) > (2.5 * (1 + instance_number(obj_invincibility))) && isduck == 0 && holding == 0 && stompstyle == 0)
    {
        if (triple_jump == 3)
            triple_jump = 0
        else
            triple_jump++
        triple_count = 0
    }
    else
        triple_jump = 0
    if (triple_jump == 2)
    {
        audio_play_sound(snd_NSMBU_triplejump_0, 0, false)
        triple_number = 33
    }
    else if (triple_jump == 3)
    {
        audio_play_sound(choose(snd_NSMBU_triplejump_1, snd_NSMBU_triplejump_2, snd_NSMBU_triplejump_3), 0, false)
        triple_number = 35
    }
    if ((!(collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_solid, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_physicssolid, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_solid, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_bullebill_base, 1, 0))))
    {
        if (global.bg_level == "sky" && global.modo_noche == 1)
            vspeed = -2.675
        else
            vspeed = (-((4.225 - (2.55 * isswim))))
        y--
    }
    if (stompstyle == 1)
        alarm[7] = 5
    if (sprite_index == scr_NSMBU_jump1() || sprite_index == scr_NSMBU_jump2() || sprite_index == scr_NSMBU_jump3() || holding == 2)
        image_index = 0
    airspin = 0
    airspin_count = 0
    groundpount = 0
    doublejump = 0
    walljump = 0
    if (helice_fly > 0)
        helice_fly = 5
}


