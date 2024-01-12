instance_create_depth(x,y,0,obj_big_plant_dead);
audio_stop_sound(snd_big_pplant_dead);
audio_play_sound(snd_big_pplant_dead, 0, false);
instance_destroy();