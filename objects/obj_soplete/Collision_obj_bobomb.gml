var bobomb;
if (invisible == 0 && sprite_index == soplete[0] && other.object_index != obj_bobomb_ready)
{
    with (other.id)
    {
        bobomb = instance_create(x, y, obj_bobomb_ready)
        bobomb.direct = direct
        bobomb.wings = wings
        bobomb.paracaidas = paracaidas
        with (bobomb)
            alarm[10] = 1
        can_wings_deads = 0
        instance_destroy()
    }
}

