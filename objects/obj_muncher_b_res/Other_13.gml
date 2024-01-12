audio_play_sound(scr_snd_powerdown(), 0, false)
with (instance_create(x, y, obj_enemy_dead))
{
    girar = 1
    sprite_index = spr_mushroon_deads
    image_index = global.apariencia
    hspeed = 1
}
instance_create((x - 16), y, obj_muncher_res)
instance_destroy()

