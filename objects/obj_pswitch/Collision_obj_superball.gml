if (other.bbox_bottom < ((bbox_top - vspeed) + 5) && held == 0)
{
    event_user(7)
    with (other.id)
        event_user(0)
}

