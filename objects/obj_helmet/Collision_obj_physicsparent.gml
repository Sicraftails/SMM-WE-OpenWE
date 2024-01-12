if (other.bbox_bottom < ((bbox_top - vvelocidad) + 8) && other.vspeed >= 0 && other.object_index != obj_thwomp && other.object_index != obj_coin_pow && other.object_index != obj_spring_land && other.object_index != obj_grinder && other.object_index != obj_magikoopa && other.object_index != obj_cannon && other.object_index != obj_cannon_red && other.object_index != obj_mushroom && other.object_index != obj_yoshifire && other.object_index != obj_yoshifire_one && other.object_index != obj_1up && other.object_index != obj_fireflower && other.object_index != obj_cap && other.object_index != obj_star && other.object_index != obj_bowser_fire_down && other.object_index != obj_bullebill_base && other.object_index != obj_piranhaplant && other.object_index != obj_boo)
{
    audio_stop_sound(snd_helmet)
    audio_play_sound(snd_helmet, 0, false)
    with (instance_create(x, y, obj_smoke))
        sprite_index = spr_starhelmet
    if (variable_instance_exists(other.object_index, "paracaidas") && other.paracaidas == 1)
    {
        other.paracaidas = 0
        if (other.object_index == obj_galoomba || other.object_index == obj_galoomba2)
        {
            with (other.id)
                event_user(7)
        }
    }
    if (other.object_index == obj_bobomb || other.object_index == obj_bobomb_ready)
    {
        var bobomb = instance_create((other.x - 8), other.y, obj_bobomb_hold)
        bobomb.direct = other.direct
        if (vvelocidad >= 0)
            bobomb.vspeed = -2
        else
            bobomb.vspeed = (vvelocidad + -1)
        with (other.id)
            instance_destroy()
    }
    else if (other.object_index == obj_podoboo || other.object_index == obj_podoboo_b)
    {
        with (other.id)
            event_user(0)
    }
    else if (other.object_index == obj_lakitu)
    {
        with (other.id)
            event_user(0)
    }
    else if (other.object_index == obj_cheepcheep || other.object_index == obj_cheepcheep2)
    {
        with (other.id)
            event_user(0)
    }
    else if (other.object_index == obj_jumppiranha && other.inup != 0)
    {
        with (other.id)
            event_user(0)
    }
    else if (vvelocidad >= 0)
        other.vspeed = -2
    else
        other.vspeed = (vvelocidad + -1)
}
