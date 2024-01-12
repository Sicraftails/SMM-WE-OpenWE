if (global.ef_repeat == 0 && global.n64_music == 0 && (!audio_is_playing(snd_n64)) && (my_object == obj_lighting || (my_object != obj_lighting && (!instance_exists(my_object)))) && instance_number(obj_efecto_musica) < 1)
    event_user(0)


