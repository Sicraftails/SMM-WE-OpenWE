if (other.bbox_bottom < ((bbox_top - vvelocidad) + 5) && other.vspeed >= 0)
{
    audio_stop_sound(snd_helmet)
    audio_play_sound(snd_helmet, 0, false)
    with (instance_create(x, y, obj_smoke))
        sprite_index = spr_starhelmet
    if ((!(collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_solid, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_physicssolid, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_solidphy, 1, 0))) && (!(collision_rectangle(bbox_left, (bbox_top - 1), bbox_right, bbox_top, obj_bullebill_base, 1, 0))))
    {
        if (vvelocidad >= 0)
            other.vspeed = -2
        else
            other.vspeed = (vvelocidad + -2)
    }
    else
        other.vspeed = -0.5
}
