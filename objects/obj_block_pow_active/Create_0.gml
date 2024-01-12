switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_pow_explode
        audio_stop_sound(snd_SMB3_pow)
        audio_play_sound(snd_SMB3_pow, 0, false)
        break
    case 1:
        sprite_index = spr_SMB3_pow_explode
        audio_stop_sound(snd_SMB3_pow)
        audio_play_sound(snd_SMB3_pow, 0, false)
        break
    case 2:
        sprite_index = spr_pow_explode
        audio_stop_sound(snd_pow)
        audio_play_sound(snd_pow, 0, false)
        break
    case 3:
        sprite_index = spr_NSMBU_pow_explode
        audio_stop_sound(snd_NSMBU_pow)
        audio_play_sound(snd_NSMBU_pow, 0, false)
        with (instance_create(x, y, obj_spinthump))
        {
            sprite_index = spr_NSMBU_effect_pow
            image_speed = 0.6
            depth = -6
        }
        break
}

image_speed = 0.6
if (global.effect_star == 1)
{
    with (obj_persistent)
    {
        var_mouse_pos_x = (((other.x + 88) * 2) - (camera_get_view_x(view_get_camera(0)) * 2))
        var_mouse_pos_y = (((other.y + 88) * 2) - (camera_get_view_y(view_get_camera(0)) * 2))
        event_user(6)
    }
}
alarm[0] = 1
