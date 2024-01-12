if (y > (ystart - 8) && vspeed > 0)
{
    if (global.pink_coins == global.pink_coins_total && lock == 0)
    {
        with (instance_create(x, y, obj_key_appear))
            vspeed = -3
        if instance_exists(obj_levelmanager)
        {
            with (obj_levelmanager)
                pink_coins_draw = 0
        }
    }
    instance_destroy()
}
