audio_stop_sound(snd_SMB3_fireball)
audio_play_sound(snd_SMB3_fireball, 0, false)
image_speed = 0
image_index = 0
gravity = 0.15
if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1) || (global.bg_level == "airship" && global.modo_noche == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 14) && global.bg_level == "forest" && global.modo_noche == 0))
    vspeed = -1.8
else
    vspeed = -3
direct = 1

