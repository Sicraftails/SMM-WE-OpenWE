if (object_index != obj_modelbgo_dec && place_meeting(x, y, other) && image_index != 39 && image_index != 42)
{
    with (other.id)
    {
        gravity = 0
        hspeed = 0
        vspeed = 0
        isduck = 1
    }
}

