if instance_exists(doorexit)
{
    with (doorexit)
    {
        image_index = 0
        switch global.apariencia
        {
            case 0:
                sprite_index = spr_SMB_door_close
                break
            case 1:
                sprite_index = spr_SMB3_door_close
                break
            case 2:
                sprite_index = spr_door_close
                break
            case 3:
                sprite_index = spr_NSMBU_door_close
                break
        }

        image_speed = 0.12
    }
}

