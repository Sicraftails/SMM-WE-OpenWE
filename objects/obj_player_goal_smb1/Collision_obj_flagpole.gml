if ((ready == 0 && ready4 == 0 && instance_exists(obj_SMB_flag) && obj_SMB_flag.ready == 1 && y > (other.y + 128) && in_solid == 0) || (ready == 0 && ready4 == 0 && in_solid == 1))
{
    if (global.powerup == -85)
        audio_play_sound(snd_SMB_clear_link, 0, false)
    else if (global.powerup == -50)
        audio_play_sound(snd_SMB_clear_superball, 0, false)
    else
        audio_play_sound(bgm_sm1clear, 0, false)
    image_speed = 0
    image_index = 0
    vspeed = 0
    if (y > (other.y + 128))
        y = (other.y + 128)
    alarm[4] = 20
    ready4 = 1
}


