audio_play_sound(scr_snd_powerup(), 0, false)
global.hammerbro = 1
with (instance_create((x + 16), y, obj_sledgebro_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
}

if (instance_exists(obj_card_item))
{
    with (obj_card_item)
    {
        if (obj == obj_icebro_res)
        {
            obj = obj_sledgebro_res;
            obj_draw = 124;
        }
    }
}
instance_destroy()