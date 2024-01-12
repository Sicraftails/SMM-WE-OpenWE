audio_play_sound(scr_snd_powerup(), 0, false)
instance_create((x), (y), obj_grrrol_b_res)
if (instance_exists(obj_card_item))
{
    with (obj_card_item)
    {
        if (obj == obj_grrrol_new_res)
        {
            obj = obj_grrrol_b_res;
            obj_draw = 217;
        }
    }
}
instance_destroy()