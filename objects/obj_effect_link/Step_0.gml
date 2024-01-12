if (instance_exists(obj_mario) && (obj_mario.arrow > 0 || obj_mario.dash_atack > 0))
{
    type = obj_mario.arrow
    if (arrow == 1)
    {
        switch type
        {
            case 1:
                posy = 16
                break
            case 2:
                posy = 22
                break
            case 3:
                posy = 27
                break
        }

        posx = 10
    }
    else
    {
        posx = 16
        posy = 26
    }
    x = (obj_mario.x + (posx * obj_mario.direct))
    y = (obj_mario.y + posy)
}
else
    instance_destroy()
