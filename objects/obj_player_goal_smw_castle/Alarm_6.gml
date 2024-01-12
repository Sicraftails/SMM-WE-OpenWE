if ((!audio_is_playing(snd_SMB_bowser_dead)) && (!audio_is_playing(snd_SMB3_bowser_dead)) && (!audio_is_playing(snd_bowser_dead)))
{
    switch global.apariencia
    {
        case 0:
            if (global.powerup == -85)
                audio_play_sound(snd_SMB_clear_castle_link, 0, false)
            else
                audio_play_sound(snd_SMB_course_clear_castle, 0, false)
            break
        case 1:
            audio_play_sound(snd_SMB3_course_clear_castle, 0, false)
            break
        case 2:
            audio_play_sound(bgm_smwclear_castle, 0, false)
            break
        case 3:
            audio_play_sound(snd_NSMBU_clear_castle, 0, false)
            break
    }

    with (obj_levelmanager)
    {
        event_user(3)
        alarm[2] = 0
    }
    if instance_exists(obj_castle)
    {
        with (obj_castle)
            alarm[0] = 60
    }
    if (global.powerup == -85 && link_mode == 0 && global.yoshi == 0 && (!instance_exists(obj_brickhelmet)))
    {
        audio_play_sound(snd_SMB_link_victory, 0, false)
        link_mode = 1
    }
    alarm[5] = 90
    alarm[2] = 110
}
else
    alarm[6] = 2
