audio_play_sound(snd_helmet_remove, 0, false)
imdead = instance_create(x, (y + 8), obj_enemy_dead)
imdead.girar = 1
imdead.sprite_index = spr_kuribo_drybones_deads
imdead.image_speed = 0
imdead.image_index = global.apariencia
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
