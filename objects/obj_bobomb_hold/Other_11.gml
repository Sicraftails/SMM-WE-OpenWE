if (hitpoint == 1 && instance_exists(obj_mario))
{
    if ((obj_mario.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
    {
        hspeed = -4.2
        direct = -1
    }
    else
    {
        hspeed = 4.2
        direct = 1
    }
    hitpoint = 0
    exit
}
if (other.stompstyle == 1 || global.yoshi > 0)
{
    with (other.id)
        event_user(1)
    if (global.apariencia == 3)
        audio_play_sound(snd_NSMBU_stomp, 0, false)
    else
        audio_play_sound(snd_stomp, 0, false)
    with (instance_create(other.x, (other.y + 22), obj_spinthump))
    {
        image_xscale = 0.8
        image_yscale = 0.8
    }
    if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
    {
        hspeed = -4.2
        direct = -1
    }
    else
    {
        hspeed = 4.2
        direct = 1
    }
}

