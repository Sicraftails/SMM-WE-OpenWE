if (inmario == 0 && other.inclown == 0 && ((!instance_exists(obj_kuribo_drybones)) || (instance_exists(obj_kuribo_drybones) && obj_kuribo_drybones.gran_golpe == 0)))
{
    if (other.bbox_bottom < ((bbox_top - vspeed) + 5) && other.vspeed > 0 && other.state == 2 && global.powerup != -82)
    {
        other.inclown = 1
        inmario = 1
        vspeed = 1
        with (other.id)
        {
            gravity = 0
            stompstyle = 0
            isduck = 0
            isduckhold = 0
            isup = 0
            isuphold = 0
            groundpount = 0
            event_user(15)
        }
    }
}

