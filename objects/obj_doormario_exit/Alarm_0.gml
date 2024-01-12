var type_mario;
if (obj_levelmanager.editor == 0)
{
    if (global.apariencia == 3)
        type_mario = obj_marioU
    else
        type_mario = obj_mario
    with (instance_create(x, y, type_mario))
    {
        direct = 1
        helmet = other.helmet
        holding = other.holding
    }
    instance_destroy()
}

