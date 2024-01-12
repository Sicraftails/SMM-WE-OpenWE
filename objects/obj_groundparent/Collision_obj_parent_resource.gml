if (pos_cal == 1)
{
    with (other.id)
    {
        if (object_index == obj_ground)
        {
            event_user(2)
            instance_create(x, y, obj_tile_trigger)
        }
		else if (object_index == obj_slopes)
        {
            event_user(2)
            instance_create(x, y, obj_tile_trigger)
        }
        else if (object_index != obj_platform_res && object_index != obj_platform_blue_res && object_index != obj_vine_res && object_index != obj_semisolid_platform1 && object_index != obj_mushroom_platform_res && object_index != obj_door_res && object_index != obj_door_exit_res && object_index != obj_door_switch_res && object_index != obj_door_switch_exit_res && object_index != obj_door_lock_res && object_index != obj_door_lock_exit_res)
            instance_destroy()
    }
}

