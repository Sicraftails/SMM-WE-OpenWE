switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_key
        sparkles = spr_SMB3_sparkles_keys
        break
    case 1:
        sprite_index = spr_SMB3_key
        sparkles = spr_SMB3_sparkles_keys
        break
    case 2:
        sparkles = spr_sparkles_keys
        break
    case 3:
        sprite_index = spr_NSMBU_key
        sparkles = spr_sparkles_keys
        break
}

vspeed = -3
image_speed = 0.18
friction = 0.2175
audio_stop_sound(snd_key_appear)
audio_play_sound(snd_key_appear, 0, false)
ready = 0
followers = 2
alarm[1] = 1

