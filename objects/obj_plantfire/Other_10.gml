audio_play_sound(scr_snd_bump(), 0, false)
with (instance_create((x - 8), y, obj_smoke))
{
    if (global.apariencia == 3)
        sprite_index = spr_NSMBU_fireball_destroy
}
instance_destroy()

