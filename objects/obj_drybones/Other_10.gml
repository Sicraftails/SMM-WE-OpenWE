audio_play_sound(scr_snd_break(), 0, false)
switch global.apariencia
{
    case 0:
        s_dry = spr_SMB_drybones_deads
        break
    case 1:
        s_dry = spr_SMB3_drybones_deads
        break
    case 2:
        s_dry = spr_drybones_deads
        break
    case 3:
        s_dry = spr_NSMBU_drybones_deads
        break
}

imdead = instance_create(x, y, obj_enemy_dead)
imdead.girar = 1
imdead.sprite_index = s_dry
imdead.image_speed = 0
imdead.image_index = 0
imdead.direct = direct
imdead.gravity = 0.16
imdead2 = instance_create(x, y, obj_enemy_dead)
imdead2.girar = 1
imdead2.sprite_index = s_dry
imdead2.image_speed = 0
imdead2.image_index = 1
imdead2.direct = direct
imdead2.gravity = 0.16
imdead3 = instance_create(x, y, obj_enemy_dead)
imdead3.girar = 1
imdead3.sprite_index = s_dry
imdead3.image_speed = 0
imdead3.image_index = 2
imdead3.direct = direct
imdead3.gravity = 0.16
if ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
{
    imdead.hspeed = -1
    imdead2.hspeed = 1
    imdead3.hspeed = 0.3
}
else if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
{
    imdead.hspeed = 1
    imdead2.hspeed = -1
    imdead3.hspeed = -0.3
}
instance_destroy()

