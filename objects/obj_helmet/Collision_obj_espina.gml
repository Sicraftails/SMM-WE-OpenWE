if (object_index == obj_helmet_spiny)
    audio_play_sound(snd_helmet_spiny, 0, false)
else
{
    audio_play_sound(snd_helmet, 0, false)
    with (instance_create(x, y, obj_smoke))
        sprite_index = spr_starhelmet
}
imdead = instance_create(other.x, other.y, obj_enemy_dead)
imdead.girar = 1
imdead.sprite_index = other.sprite_index
imdead.image_index = other.image_index
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
with (other.id)
    instance_destroy()

