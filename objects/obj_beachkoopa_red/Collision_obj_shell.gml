if (other.held == 1)
    event_inherited()
else if (jumping == 1 && ready == 2 && other.sprite_index == spr_shell_red && place_meeting(x, (y - 4), other))
{
    with (other.id)
    {
        sprite_index = spr_shell_red_inside
        koopainside = 2
        key = other.key
        alarm[3] = 1
        alarm[5] = 1
        alarm[7] = 70
    }
    instance_destroy()
}

