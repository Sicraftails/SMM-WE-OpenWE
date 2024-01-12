switch direct_t
{
    case 1:
        with (instance_create((x + 32), (y - 8), obj_smoke))
        {
            sprite_index = spr_smokespin
            depth = 0
        }
        break
    case 2:
        with (instance_create((x - 8), (y - 32), obj_smoke))
        {
            sprite_index = spr_smokespin
            depth = 0
        }
        break
    case 3:
        with (instance_create((x - 32), (y - 8), obj_smoke))
        {
            sprite_index = spr_smokespin
            depth = 0
        }
        break
    case 4:
        with (instance_create((x - 8), (y + 32), obj_smoke))
        {
            sprite_index = spr_smokespin
            depth = 0
        }
        break
}

alarm[0] = 20

