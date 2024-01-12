if (global.jugador == 1)
    sprite_index = spr_SMB3_luigi_raccoon_attack
else if (global.jugador == 2)
    sprite_index = spr_SMB3_toad_raccoon_attack
else if (global.jugador == 3)
    sprite_index = spr_SMB3_toadette_raccoon_attack
audio_play_sound(snd_atack_leaf, 0, false)
image_speed = 0.3
ready = 0
if instance_exists(obj_mario)
    obj_mario.visible = false

