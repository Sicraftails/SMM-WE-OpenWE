if (instance_exists(obj_mario_transform2) || instance_exists(obj_frozenmario))
    exit
if (rotten == 1)
{
    if instance_exists(obj_invincibility)
    {
        audio_play_sound(scr_snd_kick(), 0, false)
        with (instance_create((x - 8), y, obj_score))
            event_user(9)
        instance_create(x, y, obj_smoke)
        instance_destroy()
    }
    else if ((!instance_exists(obj_invincibility)) && obj_mario.invincible == 0)
    {
        with (instance_create(other.x, other.y, obj_smoke))
        {
            sprite_index = spr_smoke_rotten
            depth = -11
        }
        instance_create(other.x, other.y, obj_rotten_signal)
        with (other.id)
            event_user(0)
        instance_destroy()
    }
}
else
{
    switch global.apariencia
    {
        case 2:
            audio_stop_sound(snd_1up)
            audio_play_sound(snd_1up, 0, false)
            break
        case 3:
            audio_stop_sound(snd_NSMBU_1up_original)
            audio_play_sound(snd_NSMBU_1up_original, 0, false)
            break
        default:
            audio_stop_sound(snd_SMB3_1up)
            audio_play_sound(snd_SMB3_1up, 0, false)
            break
    }

    with (instance_create(x, y, obj_score))
        event_user(7)
    instance_destroy()
}