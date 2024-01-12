var flip, itemblock, block_rock, block_ice, powerups;
if instance_exists(obj_mario_transform2)
    depth = -5
else
    depth = -7
if (!instance_exists(obj_deadmario))
    image_angle -= (5 * sign(hspeed))
if (global.apariencia == 3)
    anim_magic += 0.15
flip = collision_rectangle((bbox_left - 2), (bbox_top - 2), (bbox_right + 2), (bbox_bottom + 2), obj_flipblock, 0, 0)
itemblock = collision_rectangle((bbox_left - 2), (bbox_top - 2), (bbox_right + 2), (bbox_bottom + 2), obj_block, 0, 0)
block_rock = collision_rectangle((bbox_left - 2), (bbox_top - 2), (bbox_right + 2), (bbox_bottom + 2), obj_block_rock, 0, 0)
block_ice = collision_rectangle((bbox_left - 2), (bbox_top - 2), (bbox_right + 2), (bbox_bottom + 2), obj_block_ice, 0, 0)
powerups = collision_rectangle((bbox_left - 2), (bbox_top - 2), (bbox_right + 2), (bbox_bottom + 2), obj_powerupparent, 0, 0)
if (itemblock && (itemblock.sprite_index == spr_SMB_empty_block || itemblock.sprite_index == spr_SMB3_empty_block || itemblock.sprite_index == spr_qblock_empty))
{
    with (itemblock)
    {
        instance_create(x, y, obj_smoke)
        other.int = choose(0, 1, 2, 3, 4, 5, 6, 7)
        switch other.int
        {
            case 1:
                instance_create((x + 8), y, obj_buzzybeetle)
                break
            case 2:
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1
                    hspeed = 0.6
                }
                break
            case 3:
                instance_create((x + 8), y, obj_galoomba)
                break
            case 4:
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.6
                }
                break
            case 5:
                with (instance_create(x, y, obj_mushroom))
                    hspeed = 1.1
                break
            default:
                instance_create((x + 8), y, obj_galoomba)
                break
        }

        instance_destroy()
    }
    event_user(0)
}
else if flip
{
    with (flip)
    {
        instance_create(x, y, obj_smoke)
        other.int = choose(0, 1, 2, 3, 4, 5, 6, 7)
        switch other.int
        {
            case 1:
                instance_create((x + 8), y, obj_buzzybeetle)
                break
            case 2:
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1
                    hspeed = 0.6
                }
                break
            case 3:
                instance_create((x + 8), y, obj_galoomba)
                break
            case 4:
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.6
                }
                break
            case 5:
                with (instance_create(x, y, obj_mushroom))
                    hspeed = 1.1
                break
            default:
                instance_create((x + 8), y, obj_galoomba)
                break
        }

        instance_destroy()
    }
    event_user(0)
}
else if block_rock
{
    with (block_rock)
    {
        instance_create(x, y, obj_smoke)
        other.int = choose(0, 1, 2, 3, 4, 5, 6, 7)
        switch other.int
        {
            case 1:
                instance_create((x + 8), y, obj_buzzybeetle)
                break
            case 2:
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.6
                }
                break
            case 3:
                instance_create((x + 8), y, obj_galoomba)
                break
            case 4:
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.6
                }
                break
            case 5:
                with (instance_create(x, y, obj_mushroom))
                    hspeed = 1.1
                break
            default:
                instance_create((x + 8), y, obj_galoomba)
                break
        }

        instance_destroy()
    }
    event_user(0)
}
else if block_ice
{
    with (block_ice)
    {
        instance_create(x, y, obj_smoke)
        other.int = choose(0, 1, 2, 3, 4, 5, 6, 7)
        switch other.int
        {
            case 1:
                instance_create((x + 8), y, obj_buzzybeetle)
                break
            case 2:
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.6
                }
                break
            case 3:
                instance_create((x + 8), y, obj_galoomba)
                break
            case 4:
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.6
                }
                break
            case 5:
                with (instance_create(x, y, obj_mushroom))
                    hspeed = 1.1
                break
            default:
                instance_create((x + 8), y, obj_galoomba)
                break
        }

        instance_destroy()
    }
    event_user(0)
}
else if powerups
{
    with (powerups)
    {
        instance_create(x, y, obj_smoke)
        other.int = choose(0, 1, 2, 3, 4, 5, 6, 7)
        switch other.int
        {
            case 1:
                instance_create((x + 8), y, obj_buzzybeetle)
                break
            case 2:
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.6
                }
                break
            case 3:
                instance_create((x + 8), y, obj_galoomba)
                break
            case 4:
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.5
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = -0.7
                }
                with (instance_create(x, y, obj_coin_pow))
                {
                    vspeed = -1.5
                    hspeed = 0.6
                }
                break
            case 5:
                with (instance_create(x, y, obj_mushroom))
                    hspeed = 1.1
                break
            default:
                instance_create((x + 8), y, obj_galoomba)
                break
        }

        instance_destroy()
    }
    event_user(0)
}
event_user(3)
event_user(4)
if outside_view()
    instance_destroy()

