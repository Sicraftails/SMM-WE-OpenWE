if (instance_exists(obj_mario) && obj_mario.hspeed != 0)
{
    if (get_coin >= limit_coins)
    {
        instance_create(x, y, obj_smoke)
        obj_mario.helmet = 0
        instance_destroy()
    }
    else
    {
        instance_create((x - 8), y, obj_blockcoin)
        get_coin++
        alarm[4] = repeat_coins
    }
}
else
    alarm[4] = repeat_coins
