if instance_exists(obj_invincibility)
    exit
if (global.yoshi > 0 && other.bbox_bottom < ((bbox_top - vspeed) + 5))
{
    if (instance_exists(obj_kuribo_drybones) && obj_kuribo_drybones.gran_golpe == 1)
    {
        audio_play_sound(snd_NSMBU_kick, 0, false)
        with (other.id)
            event_user(1)
        with (obj_kuribo_drybones)
            gran_golpe = 0
        event_user(0)
    }
    else
    {
        event_user(15)
        firehitpoints--
        cooldown = 6
        if (firehitpoints <= 0)
            event_user(0)
        other.hspeed = lengthdir_x(3, point_direction(x, y, other.x, (other.y + 16)))
        with (other.id)
            event_user(1)
    }
}
else
{
    other.hspeed = lengthdir_x(3, point_direction(x, y, other.x, (other.y + 16)))
    if ((other.y + 16) < (y - 12))
    {
        if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1))
            other.vspeed = -2.125
        else
            other.vspeed = -5
    }
    with (other.id)
        event_user(0)
}

