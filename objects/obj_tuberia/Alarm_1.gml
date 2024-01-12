var pipe;
with (instance_create(w_posx, w_posy, obj_curtainin))
    fallow = 1
if instance_exists(obj_autoscroll)
{
    with (obj_autoscroll)
    {
        if ((other.w_posx + 16) < 192)
            x = 192
        else
            x = (other.w_posx + 16)
        hspeed = velocidad
    }
}
switch w_direct
{
    case 0:
        pipe = instance_create(w_posx, w_posy, obj_player_warp)
        with (pipe)
        {
            direction = 90
            direct = 1
        }
        break
    case 1:
        pipe = instance_create(w_posx, (w_posy - 1), obj_player_warp)
        with (pipe)
        {
            direction = 0
            direct = 1
        }
        break
    case 2:
        pipe = instance_create(w_posx, (w_posy - 16), obj_player_warp)
        with (pipe)
        {
            direction = 270
            direct = 1
        }
        break
    case 3:
        pipe = instance_create(w_posx, (w_posy - 1), obj_player_warp)
        with (pipe)
        {
            direction = 180
            direct = -1
        }
        break
}

with (pipe)
{
    canmove = 0
    alarm[0] = 30
    salir = 1
    holding = other.holding
    helmet = other.helmet
    myitem = global.warp_item
    alarm[2] = 1
    w_posx = other.m_posx
    w_posy = other.m_posy
    w_direct = other.direct_t
}
with (obj_levelmanager)
{
    barrier = 1
    alarm[6] = 2
}
with (obj_persistent)
    event_user(0)

