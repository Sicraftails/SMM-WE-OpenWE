if ((pos_cal == 1) && (other != id))
{
    with (other.id)
    {
        if (object_index == obj_ground)
        {
            event_user(2)
            instance_create(x, y, obj_tile_trigger)
        }
        else if ((object_index != obj_platform_res) && ((object_index != obj_platform_blue_res) && ((object_index != obj_vine_res) && ((object_index != obj_semisolid_platform1) && (object_index != obj_mushroom_platform_res)))))
            instance_destroy()
    }
}

