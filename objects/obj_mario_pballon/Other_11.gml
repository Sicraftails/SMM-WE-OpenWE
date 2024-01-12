var xDiff, yDiff;
if (ready == 2 && speed != 0)
{
    time--
    if (time <= 0)
    {
        xDiff = lengthdir_x(12, (direction - 180))
        yDiff = lengthdir_y(12, (direction - 180))
        with (instance_create((x + xDiff), (y + yDiff), obj_smoke))
        {
            sprite_index = spr_smoke_pballoon
            image_angle = other.direction
            image_speed = 0.1
        }
        time = 10
    }
}

