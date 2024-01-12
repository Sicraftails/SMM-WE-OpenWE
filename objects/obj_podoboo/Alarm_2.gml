audio_stop_sound(snd_podoboo)
audio_play_sound(snd_podoboo, 0, false)
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.apariencia != 0 && (global.bg_level == "castle" || (global.bg_level == "forest" && global.modo_noche == 1) || (global.bg_level == "mountain" && global.modo_noche == 1)))
{
    if (global.bg_level == "forest")
        instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
    else
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
}
