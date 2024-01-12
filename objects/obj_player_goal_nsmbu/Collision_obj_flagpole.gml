if ((ready == 0 && ready4 == 0 && instance_exists(obj_SMB_flag) && obj_SMB_flag.ready == 1 && y > (other.y + 128) && in_solid == 0) || (ready == 0 && ready4 == 0 && in_solid == 1))
{
    vspeed = 0
    if (y > (obj_flagpole.y + 128))
        y = (obj_flagpole.y + 128)
    ready4 = 1
}

