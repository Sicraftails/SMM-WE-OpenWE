audio_stop_sound(snd_SMB_link_guardbullet)
audio_play_sound(snd_SMB_link_guardbullet, 0, false)
imdead = instance_create(x, y, obj_enemy_dead)
imdead.girar = 1
imdead.sprite_index = sprite_index
imdead.rot_max = 1
instance_destroy()


