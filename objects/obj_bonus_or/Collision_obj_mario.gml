if (global.bonus_music == 0 && (!audio_is_playing(snd_SMB_bonus)) && (!audio_is_playing(snd_SMB3_bonus)) && (!audio_is_playing(snd_SMW_bonus)) && (!audio_is_playing(snd_NSMBU_bonus)) && (my_object == obj_lighting || (my_object != obj_lighting && (!instance_exists(my_object)))) && instance_number(obj_efecto_musica) < 1)
    event_user(0)


