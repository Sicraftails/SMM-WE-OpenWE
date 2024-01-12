audio_stop_sound(snd_SMB_link_guard)
audio_play_sound(snd_SMB_link_guard, 0, false)
image_speed = 0
image_index = 0
spd = 6.5
direct = 1
rot = 0
type = 2
swimming = 0
ready = 0
gravity = 0.18
gravity_direction = 270
alarm[10] = 1
if (instance_exists(obj_mario) && obj_mario.isswim == 1)
    alarm[0] = 20
else
    alarm[0] = 15


