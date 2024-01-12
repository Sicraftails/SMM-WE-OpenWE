if instance_exists(obj_invincibility)
    event_user(0)
else if (other.invincible == 0)
{
    with (other.id)
        event_user(0)
}

