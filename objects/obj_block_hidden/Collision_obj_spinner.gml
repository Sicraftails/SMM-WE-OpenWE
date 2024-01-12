with (instance_create(x, y, obj_block))
{
    if (global.apariencia == 1)
        sprite_index = spr_SMB3_block_hidden
    else if (global.apariencia == 2)
        sprite_index = spr_qblock_empty
    ready = 1
    vspeed = -2
    alarm[0] = 4
    sprout = other.sprout
    event_user(0)
}
instance_destroy()

