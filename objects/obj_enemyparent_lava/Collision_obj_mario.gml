if ((other.invincible != -1 && (!instance_exists(obj_slider)) && other.bbox_bottom < ((bbox_top - vspeed) + 6) && other.stompstyle == 1) || global.yoshi > 0)
{
    with (other.id)
        event_user(1)
}

