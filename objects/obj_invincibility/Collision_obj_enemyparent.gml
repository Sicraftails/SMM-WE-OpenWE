if (global.apariencia > 1 && (other.object_index == obj_egg || other.object_index == obj_egg_red))
    exit
if (other.object_index != obj_grinder && other.object_index != obj_crumblebones)
{
    scr_musicalscale(id, other, 1)
    with (other.id)
    {
        hitpoints = 0
        event_user(0)
    }
}


