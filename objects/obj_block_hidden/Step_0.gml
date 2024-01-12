var player;
player = collision_rectangle(bbox_left, bbox_bottom, bbox_right, (bbox_bottom + 2), obj_mario, 0, 0)
if (player && player.vspeed < 0 && player.bbox_top > ((bbox_bottom + 1) + player.vspeed))
{
    with (instance_create(x, y, obj_block))
    {
        if (global.apariencia == 0)
            sprite_index = spr_SMB_empty_block
        else if (global.apariencia == 1)
            sprite_index = spr_SMB3_empty_block
        else if (global.apariencia == 2)
            sprite_index = spr_qblock_empty
        ready = 1
        vspeed = -2
        alarm[0] = 4
        wings = other.wings
        sprout = other.sprout
        progresivo = other.progresivo
        event_user(0)
    }
    instance_destroy()
}

