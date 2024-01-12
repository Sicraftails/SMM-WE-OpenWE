if instance_exists(obj_mario)
{
    if ((obj_mario.caped == 1 || obj_mario.stompstyle == 1) && (sprite_index == spr_cap_spinjump || sprite_index == spr_cap_spinjump_fall))
    {
        if (other.object_index == obj_shell)
        {
            with (other.id)
                event_user(7)
        }
        else
        {
            with (other.id)
                event_user(5)
        }
    }
}

