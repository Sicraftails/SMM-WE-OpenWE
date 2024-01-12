if instance_exists(obj_mario)
{
    if ((obj_mario.caped == 1 || obj_mario.stompstyle == 1) && (sprite_index == spr_cap_spinjump || sprite_index == spr_cap_spinjump_fall))
    {
        with (other.id)
            event_user(0)
    }
}

