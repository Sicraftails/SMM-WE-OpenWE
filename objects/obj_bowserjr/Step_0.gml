var ground_block;
if (state == 1)
    hspeed = 0
if (groundpount == 1 && vspeed > 0)
{
    if (wings == 1)
        groundpount_wings = 30
    else
    {
        groundpount = 2
        vspeed = 2
        image_speed = 0
        image_index = 1
    }
}
if (instance_exists(obj_mario) && (obj_mario.x > (x + 184) || obj_mario.x < (x - 184)) && alarm[7] == -1)
{
    vspeed = -2
    alarm[7] = 15
}
if (instance_exists(obj_mario) && obj_mario.x > x)
    direct = 1
else
    direct = -1
if (groundpount_wings > 0)
{
    vspeed = 0
    gravity = 0
}
else
{
    event_user(3)
    event_user(4)
}
if (gravity > 0)
{
    gravity = 0.2
    if (vspeed > 4)
        vspeed = 4
}
if (wings == 1 && (!instance_exists(obj_deadmario)))
{
    if (groundpount > 0)
        wings_anim += 0.18
    else
        wings_anim += 0.12
}
if (cooldown > 0)
    cooldown--
if (groundpount_wings > 0)
{
    if (groundpount_wings == 1)
    {
        groundpount = 2
        vspeed = 2
        image_speed = 0
        image_index = 1
    }
    groundpount_wings--
}
if (groundpount_cont > 0)
{
    groundpount_cont--
    ground_block = collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, ((bbox_bottom + vspeed) + 2), obj_blockparent, 0, 0)
    if (ground_block && ground_block.object_index != obj_noteblock && ground_block.object_index != obj_musicblock && ground_block.object_index != obj_noteblock_s && ground_block.ready == 0)
    {
        if (ground_block.object_index == obj_flipblock)
        {
            with (ground_block)
                alarm[2] = 1
        }
        else
        {
            with (ground_block)
                event_user(3)
        }
    }
}

