imdead = instance_create(x, y, obj_enemy_dead)
imdead.girar = 1
imdead.sprite_index = sprite_index
imdead.image_index = image_index
imdead.direct = direct
if (global.apariencia == 3)
{
    audio_stop_sound(snd_NSMBU_boo_dead)
    audio_play_sound(snd_NSMBU_boo_dead, 0, false)
}
if (dead_h == 0)
{
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
}
else
{
    imdead.hspeed = 0
    with (instance_create(imdead.x, (imdead.y - 5), obj_smoke))
        sprite_index = spr_spinthump
}
instance_destroy()

