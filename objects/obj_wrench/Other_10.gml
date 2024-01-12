imdead = instance_create(x, (y + 8), obj_enemy_dead)
imdead.girar = 1
imdead.sprite_index = sprite_index
audio_stop_sound(scr_snd_stomp())
audio_play_sound(scr_snd_stomp(), 0, false)
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

