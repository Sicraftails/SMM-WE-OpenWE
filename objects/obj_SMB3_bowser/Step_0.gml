var ground_block;
if (instance_exists(obj_mario) && groundpount == 0)
{
    if (obj_mario.x > x)
    {
        if (stop_bowser == 0)
            hspeed = 0.2
        else
        {
            if (prevhspeed == 0 && hspeed != 0)
                prevhspeed = hspeed
            hspeed = 0
        }
    }
    else if (stop_bowser == 0)
    {
        if (prevhspeed != 0)
        {
            hspeed = prevhspeed
            prevhspeed = 0
        }
        else
            hspeed = -0.2
    }
    else
    {
        if (prevhspeed == 0 && hspeed != 0)
            prevhspeed = hspeed
        hspeed = 0
    }
}
event_user(3)
event_user(4)
if (gravity > 0)
{
    if (groundpount == 2)
    {
        gravity = 0.2
        if (vspeed > 6)
            vspeed = 6
    }
    else
    {
        gravity = 0.1
        if (vspeed > 3.2)
            vspeed = 3.2
    }
}
if (cooldown > 0)
    cooldown--
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
if (instance_exists(obj_mario) && groundpount == 1)
{
    if ((obj_mario.x > (x - 16) && obj_mario.x < (x + 16) && y < (y_start - 64)) || y < (y_start - 160) || (hspeed > 2 && x > (obj_mario.x + 144)) || (hspeed < -2 && x < (obj_mario.x - 144)) || y < (camera_get_view_y(view_get_camera(0)) - 32) || down_groundpount == 1)
    {
        sprite_index = spr_SMB3_bowser_attack
        image_speed = 0
        image_index = 0
        vspeed = 2
        hspeed = 0
        groundpount = 2
        down_groundpount = 0
    }
}

