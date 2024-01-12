audio_stop_sound(snd_NSMBU_bowser_fire)
audio_play_sound(snd_NSMBU_bowser_fire, 0, false)
if (direct == 1)
    instance_create((x + 24), (y - 10), obj_NSMBU_bowser_fire)
else
    instance_create((x - 24), (y - 10), obj_NSMBU_bowser_fire)

