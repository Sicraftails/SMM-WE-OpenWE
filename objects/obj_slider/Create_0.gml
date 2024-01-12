type = 0
with (obj_mario)
{
    invincible = 1
    disablecontrols = 1
    skidnow = 2
}
hspeed = obj_mario.hspeed
direct = obj_mario.direct
audio_stop_sound(snd_skid)
hitpoint = 0
sprite_index = scr_marioslide()
alarm[0] = 8
disablecontrols = obj_mario.disablecontrols
add = 1