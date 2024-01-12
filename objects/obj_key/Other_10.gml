audio_stop_sound(snd_SMB3_key_destroy)
audio_play_sound(snd_SMB3_key_destroy, 0, false)
imdead = instance_create((x + 8), (y + 8), obj_enemy_dead)
imdead.girar = 1
imdead.direct = 1
switch global.apariencia
{
    case 0:
        imdead.sprite_index = spr_SMB_key_deads
        break
    case 1:
        imdead.sprite_index = spr_SMB3_key_deads
        break
    case 2:
        imdead.sprite_index = spr_key_deads
        break
    case 3:
        imdead.sprite_index = spr_NSMBU_key_deads
        break
}

if (other.hspeed == 0)
{
    if ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
        imdead.hspeed = 1
    else if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
        imdead.hspeed = -1
}
else if (other.hspeed > 0)
    imdead.hspeed = 1
else if (other.hspeed < 0)
    imdead.hspeed = -1
instance_destroy()

