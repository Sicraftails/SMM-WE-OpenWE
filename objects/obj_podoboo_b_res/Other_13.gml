audio_play_sound(scr_snd_powerdown(), 0, false)
with (instance_create(x, y, obj_enemy_dead))
{
    girar = 1
    sprite_index = spr_mushroon_deads
    image_index = global.apariencia
    hspeed = 1
}
with (instance_create(x, y, obj_podoboo_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
    key = other.key
}
instance_destroy()

