if (global.apariencia == 3)
{
    audio_stop_sound(snd_NSMBU_magic_destroy)
    audio_play_sound(snd_NSMBU_magic_destroy, 0, false)
}
with (instance_create((x - 8), (y - 8), obj_smoke))
    sprite_index = spr_boltspark_magic
with (instance_create((x - 8), (y + 8), obj_smoke))
    sprite_index = spr_boltspark_magic
with (instance_create(x, y, obj_smoke))
    sprite_index = spr_boltspark_magic
with (instance_create((x + 8), (y - 8), obj_smoke))
    sprite_index = spr_boltspark_magic
with (instance_create((x + 8), (y + 8), obj_smoke))
    sprite_index = spr_boltspark_magic
instance_destroy()

