if (global.boss_music == 0 && global.ef_repeat == 0 && (!audio_is_playing(snd_SMB_boss)) && (!audio_is_playing(snd_SMB3_boss)) && (!audio_is_playing(snd_SMW_boss)) && (!audio_is_playing(snd_NSMBU_boss)) && (my_object == obj_lighting || (my_object != obj_lighting && (!instance_exists(my_object)))) && instance_number(obj_efecto_musica) < 1)
    event_user(0)


