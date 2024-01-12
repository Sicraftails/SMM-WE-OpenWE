audio_play_sound(snd_helmet_remove, 0, false)
imdead = instance_create(x, (y + 8), obj_enemy_dead)
imdead.girar = 1
if (object_index == obj_kuriboshoe2)
{
    if (global.apariencia == 0)
        imdead.sprite_index = spr_SMB_bota2_deads
    else
        imdead.sprite_index = spr_bota2_deads
}
else if (global.apariencia == 0)
    imdead.sprite_index = spr_SMB_bota_deads
else
    imdead.sprite_index = spr_bota_deads
imdead.image_index = 0
if (obj_mario.hspeed == 0)
{
    if ((obj_mario.bbox_left + (obj_mario.bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
        imdead.hspeed = 1
    else if ((obj_mario.bbox_left + (obj_mario.bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
        imdead.hspeed = -1
}
else if (obj_mario.hspeed > 0)
    imdead.hspeed = 1
else if (obj_mario.hspeed < 0)
    imdead.hspeed = -1
instance_destroy()
