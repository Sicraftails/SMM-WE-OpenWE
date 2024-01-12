if (hspeed != 0 && instance_exists(id) && other.hardness < 99)
{
    if instance_exists(obj_mario)
    {
        switch global.apariencia
        {
            case 0:
                scr_musicalscale_SMB3(obj_mario.id, other, 1)
                break
            case 1:
                scr_musicalscale_SMB3(obj_mario.id, other, 1)
                break
            case 2:
                scr_musicalscale(obj_mario.id, other, 1)
                break
            case 3:
                scr_musicalscale_kick(obj_mario.id, other, 1)
                break
        }

    }
    with (other.id)
        event_user(0)
}

