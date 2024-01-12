switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_firegold_ball
        break
    case 1:
        sprite_index = spr_SMB3_firegold_ball
        break
    case 2:
        sprite_index = spr_firegold_ball
        break
}

swimming = 0
audio_play_sound(scr_snd_fireball(), 0, false)
image_speed = 0.15
if place_meeting(x, y, obj_solid)
    event_user(0)

