if (key == 1)
{
    with (instance_create((x - 8), (y - 8), obj_key_appear))
        vspeed = -4
}
imdead = instance_create(x, y, obj_enemy_dead)
imdead.direct = (-direct)
imdead.dead_boss = 1
imdead.sprite_index = spr_NSMBU_boomboom_dead
imdead.image_speed = 0.5
audio_stop_sound(snd_boomboom_dead)
audio_play_sound(snd_boomboom_dead, 0, false)
if (dead_h == 0)
{
    if (other.hspeed == 0 && direct == 1)
        imdead.hspeed = -1
    else if (other.hspeed == 0 && direct == -1)
        imdead.hspeed = 1
}
instance_destroy()

