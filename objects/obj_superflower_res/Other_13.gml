with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
if (progresivo == 0)
{
    audio_play_sound(snd_add_hongo, 0, false)
    progresivo = 1
}
else
{
    audio_play_sound(snd_remove_hongo, 0, false)
    progresivo = 0
    with (instance_create(x, y, obj_enemy_dead))
    {
        girar = 1
        sprite_index = spr_mushroon_deads
        image_index = global.apariencia
        hspeed = 1
    }
}

