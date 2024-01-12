instance_create(x, y, obj_invincibility)
if (obj_levelmanager.switchon == 0) && (!audio_is_playing(scr_snd_starman()))
    audio_play_sound(scr_snd_starman(), 99, true)
with (obj_levelmanager)
    alarm[1] = 1

