if (vspeed == 0 && state == 1 && jump < 2 && fire == 0 && groundpount == 0)
{
    if (jump == 0)
        jump = 1
    else
    {
        state = 2
        jump = 2
        groundpount = 0
        if (collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_physicssolid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_solidphy, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_bullebill_base, 1, 0))
            vspeed = -0.5
        else
            vspeed = -3.5
        audio_stop_sound(snd_NSMBU_bowserjr_jump)
        audio_play_sound(snd_NSMBU_bowserjr_jump, 0, false)
        if (instance_exists(obj_mario) && x > (obj_mario.x + 64) && direct == -1)
            hspeed = -2
        else if (instance_exists(obj_mario) && x < (obj_mario.x - 64) && direct == 1)
            hspeed = 2
        else
            hspeed = choose(-2, 2)
        alarm[0] = choose(120, 180, 120, 90)
    }
}
else
    alarm[0] = 30
