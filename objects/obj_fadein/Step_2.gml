alpha += 0.04
if (alpha > 1)
{
    alpha = 1
    if sprite_exists(back)
        sprite_delete(back)
    instance_activate_all()
    room_goto(target)
}

