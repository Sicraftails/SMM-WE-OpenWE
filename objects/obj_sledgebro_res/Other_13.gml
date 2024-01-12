audio_play_sound(scr_snd_powerdown(), 0, false)
global.hammerbro = 0
with (instance_create((x - 16), y, obj_hammerbro_res))
{
    wings = other.wings
    paracaidas = other.paracaidas
}
if (instance_exists(obj_card_item))
{
    with (obj_card_item)
    {
        if (obj == obj_sledgebro_res)
        {
            obj = obj_hammerbro_res;
            obj_draw = 86;
        }
    }
}
instance_destroy()