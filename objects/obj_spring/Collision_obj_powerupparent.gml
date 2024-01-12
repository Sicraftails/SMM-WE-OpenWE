var spd;
if ((!held) && other.wings == 0)
{
    if (other.bbox_bottom < ((bbox_top - vspeed) + 8) && other.vspeed > 0)
    {
        if ((!collision_rectangle(other.bbox_left, (other.bbox_top - 1), other.bbox_right, other.bbox_top, obj_solid, 1, 0)) && (!collision_rectangle(other.bbox_left, (other.bbox_top - 1), other.bbox_right, other.bbox_top, obj_physicssolid, 1, 0)) && (!collision_rectangle(other.bbox_left, (other.bbox_top - 1), other.bbox_right, other.bbox_top, obj_solidphy, 1, 0)) && (!collision_rectangle(other.bbox_left, (other.bbox_top - 1), other.bbox_right, other.bbox_top, obj_bullebill_base, 1, 0)))
            spd = 5.225
        else
            spd = 0.6
        other.hspeed = 0
        other.vspeed = (-(spd - (1 * swimming)))
        if (image_speed == 0)
            image_speed = 0.3
        if (!outside_view())
        {
            audio_stop_sound(scr_snd_spring())
            audio_play_sound(scr_snd_spring(), 0, false)
        }
    }
}

