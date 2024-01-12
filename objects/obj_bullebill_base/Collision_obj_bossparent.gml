if (other.visible == true)
{
    if ((bbox_bottom - vspeed) < (other.bbox_top + 2) && vspeed > 0 && vspeed != 0)
        other.y += vspeed
    if ((bbox_bottom - vspeed) < (other.bbox_top + 1) && vspeed > 0 && (collision_rectangle((other.bbox_left + 4), (other.bbox_bottom + vspeed), (other.bbox_right - 4), (other.bbox_bottom + vspeed), obj_solidtop, 0, 0) || collision_rectangle((other.bbox_left + 4), (other.bbox_bottom + vspeed), (other.bbox_right - 4), (other.bbox_bottom + vspeed), obj_physicssolid, 0, 0)))
    {
        audio_stop_sound(scr_snd_kick())
        audio_play_sound(scr_snd_kick(), 0, false)
        with (other.id)
            event_user(0)
    }
}

