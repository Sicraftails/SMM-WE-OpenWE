if (global.yoshi > 0 && (other.y + 16) < (y - 12))
{
    if (effect_helmet == 0)
    {
        audio_stop_sound(snd_stomp)
        audio_play_sound(snd_stomp, 0, false)
        with (instance_create((x - 2), (y - 25), obj_smoke))
            sprite_index = spr_starhelmet
        effect_helmet = 1
        alarm[0] = 8
    }
    other.hspeed = lengthdir_x(3, point_direction(x, y, other.x, (other.y + 16)))
    with (other.id)
        event_user(1)
    if (other.isswim == 1)
        other.vspeed = -1.225
    else
        other.vspeed = -4
}
else if (bbox_bottom < ((other.bbox_top - other.vspeed) + 5) && vspeed >= 0 && other.helmet == 1)
{
}
else if (other.invincible != -1)
{
    with (other.id)
        event_user(0)
}

