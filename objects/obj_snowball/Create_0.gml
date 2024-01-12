swimming = 0
cont = 0
ready = 1
audio_stop_sound(snd_NSMBU_snowball)
audio_play_sound(snd_NSMBU_snowball, 0, false)
image_speed = 0
image_index = 0
alarm[0] = 10
if (place_meeting(x, y, obj_solid) || place_meeting(x, y, obj_physicssolid) || place_meeting(x, y, obj_bullebill_base))
    event_user(0)
