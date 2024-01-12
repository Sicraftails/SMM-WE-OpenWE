if (global.apariencia > 1)
{
    if (bbox_bottom < ((other.bbox_top - other.vspeed) + 5) && vspeed >= 0 && (wings == 1 || paracaidas == 1))
    {
        if (wings == 1)
        {
            with (instance_create((x + 17), (y + 8), obj_wings_dead))
                direct = -1
            with (instance_create((x - 3), (y + 8), obj_wings_dead))
            {
                sprite_index = spr_wings_dead2
                direct = -1
            }
            wings = 0
        }
        paracaidas = 0
        other.vspeed = 0
        hspeed = 0
        vspeed = -1.6
    }
    else if (wings == 1 || paracaidas == 1)
    {
        if (wings == 1)
        {
            with (instance_create((x + 17), (y + 8), obj_wings_dead))
                direct = -1
            with (instance_create((x - 3), (y + 8), obj_wings_dead))
            {
                sprite_index = spr_wings_dead2
                direct = -1
            }
            wings = 0
        }
        paracaidas = 0
        hspeed = 0
    }
}
else
    event_inherited()
