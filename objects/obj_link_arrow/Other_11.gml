audio_stop_sound(snd_SMB_link_guardbullet)
audio_play_sound(snd_SMB_link_guardbullet, 0, false)
with (instance_create(x, y, obj_smoke))
    sprite_index = spr_boltspark
instance_destroy()


