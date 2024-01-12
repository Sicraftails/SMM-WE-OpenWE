var mini, sonido_jump;
if (vspeed == 0 && state == 1 && jump < 2 && fire_anim == 0 && multi_fire == 0)
{
    if (sprite_index == spr_NSMBU_bowser_walk && image_index > 3)
    {
        alarm[0] = 5
        exit
    }
    if (collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_physicssolid, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_solidphy, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(bbox_left, (bbox_top - 4), bbox_right, bbox_top, obj_bullebill_base, 1, 0))
        mini = 1
    else
        mini = 0
    if (jump == 0)
    {
        jump = 1
        fire_jump = choose(0, 0, 1, 0, 1)
    }
    else
    {
        state = 2
        jump = 2
        var sonido_jump = choose(snd_NSMBU_bowser_jump1, snd_NSMBU_bowser_jump2)
        audio_stop_sound(sonido_jump)
        audio_play_sound(sonido_jump, 0, false)
        if (fire_jump == 1)
            vspeed = (-(3 - (2.5 * mini)))
        else
        {
            if (mini == 1)
                vspeed = -0.5
            else
                vspeed = choose(-3.5, -4, -3.5, -4.5)
            if (big_jump == 0)
                big_jump = choose(0, 1, 1, 0, 1)
            if (instance_exists(obj_mario) && (big_jump == 1 || (direct == 1 && place_meeting((x + 32), y, obj_solid)) || (direct == -1 && place_meeting((x - 32), y, obj_solid)) || (direct == 1 && obj_mario.x > (x + 64)) || (direct == -1 && obj_mario.x < (x - 64))))
            {
                if (obj_mario.x < x)
                    hspeed = ((abs((x / obj_mario.x)) + 0.5) * direct)
                else
                    hspeed = ((abs((obj_mario.x / x)) + 0.5) * direct)
            }
        }
        alarm[0] = choose(120, 180, 90)
    }
}
else
    alarm[0] = choose(120, 60, 180)

