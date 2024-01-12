if (other.bbox_bottom < ((bbox_top - vspeed) + 5) && inup == 0 && other.vspeed >= 0 && held == 0)
{
    event_user(7)
    with (other.id)
        event_user(0)
}


