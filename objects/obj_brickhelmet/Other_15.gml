if (!instance_exists(obj_player_goal_parent))
    audio_play_sound(snd_helmet_remove, 0, false)
imdead = instance_create(x, y, obj_enemy_dead)
imdead.sprite_index = sprite_index
imdead.image_index = image_index
imdead.girar = 1
imdead.direct = direct
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
