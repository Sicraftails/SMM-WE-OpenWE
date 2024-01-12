if (state == 1 || groundpount_jump != 0)
    hspeed = 0
if (instance_exists(obj_mario) && (obj_mario.x > (x + 184) || obj_mario.x < (x - 184)) && alarm[7] == -1)
{
    if (state == 1)
        vspeed = -2
    alarm[7] = 15
}
if instance_exists(obj_mario)
{
    if (obj_mario.x > x)
        direct = 1
    else
        direct = -1
}
if (stomp == -1 || groundpount_wings > 0 || groundpount_jump == 2)
{
    vspeed = 0
    gravity = 0
}
else
{
    event_user(3)
    event_user(4)
}
if (groundpount == 1 && vspeed > 0)
{
    if (wings == 1)
        groundpount_wings = 40
    else
        groundpount_jump = 2
}
if (groundpount_jump == 3)
{
    groundpount = 2
    vspeed = 1
    groundpount_jump = 4
    jump = 0
}
if (wings == 1 && (!instance_exists(obj_deadmario)))
{
    if (groundpount > 0)
        wings_anim += 1
    else
        wings_anim += 0.5
}
if (cooldown > 0)
    cooldown--
if (groundpount_wings > 0)
{
    if (groundpount_wings == 1)
        groundpount_jump = 2
    groundpount_wings--
}
if (groundpount_cont > 0)
{
    groundpount_cont--
    if (groundpount_cont == 1)
        groundpount_jump = 0
    var ground_block = collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, ((bbox_bottom + vspeed) + 2), obj_blockparent, 0, 0)
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
