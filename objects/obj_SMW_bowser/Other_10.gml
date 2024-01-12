if (key == 1)
{
    with (instance_create((x - 8), (y - 8), obj_key_appear))
        vspeed = -4
}
audio_play_sound(snd_bowser_dead, 0, false)
imdead = instance_create(x, y, obj_bowser_dead)
imdead.direct = direct
imdead.vspeed = -3.5
if (direct == 1)
    imdead.hspeed = -1
else
    imdead.hspeed = 1
instance_destroy()

