audio_stop_sound(snd_helmet_remove)
audio_play_sound(snd_helmet_remove, 0, false)
imdead = instance_create(x, y, obj_enemy_dead)
imdead.girar = 1
imdead.sprite_index = sprite_index
imdead.image_index = image_index
imdead.direct = direct
if (global.apariencia != 2 && (sprite_index == spr_SMB_helmet_small || sprite_index == spr_SMB_helmet_big || sprite_index == spr_SMB3_helmet_small || sprite_index == spr_SMB3_helmet_big))
{
    if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
        imdead.image_index = 1
    else
        imdead.image_index = 0
}
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
