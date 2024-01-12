enablecontrol = 1
audio_stop_sound(scr_snd_clown_damage())
if (inenemy == 1)
    sprite_index = s_clown_evil
else
{
    sprite_index = s_clown
    alarm[0] = 30
}
