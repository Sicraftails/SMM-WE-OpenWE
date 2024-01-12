if (ready == 0)
{
    hspeed = 0
    if (hitpoints == 1)
    {
        with (instance_create(other.x, (other.bbox_bottom - 8), obj_smoke))
        {
            sprite_index = spr_NSMBU_effect_stomp_boss
            depth = -3
        }
        audio_play_sound(snd_NSMBU_bowserjr_dead, 0, false)
        sprite_index = spr_NSMBU_bowserjr_hurt
        image_index = 0
        hitpoints = 0
        with (instance_create(((round((bbox_left + bbox_right)) / 2) - 8), bbox_top, obj_score))
            event_user(5)
        alarm[2] = 30
    }
    else
    {
        audio_play_sound(snd_NSMBU_bowserjr_stomp, 0, false)
        sprite_index = spr_NSMBU_bowserjr_hurt
        image_index = 0
        hitpoints--
        alarm[2] = 60
    }
    ready = 1
    image_speed = 0.5
    alarm[0] = -1
    alarm[1] = -1
    alarm[3] = -1
    alarm[4] = -1
    alarm[5] = -1
    alarm[6] = -1
    alarm[8] = -1
    alarm[9] = -1
    alarm[10] = -1
    alarm[11] = -1
    stomp = -1
}
