if (other.vspeed < 0 && bbox_bottom < (other.yprevious + 5) && (!place_meeting(x, (y - 16), obj_solid)) && wings == 0)
{
    vspeed = -3
    if (hspeed == 0)
        hspeed = 1
    else if ((x + (sprite_width / 2)) > (other.x + (sprite_width / 2)))
        hspeed = 1
    else if ((x + (sprite_width / 2)) < (other.x + (sprite_width / 2)))
        hspeed = -1
}

