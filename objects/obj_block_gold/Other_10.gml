if (cointime == 2 && cont_coin >= 11)
{
    instance_create(x, y, obj_blockcoin)
    limit_coins--
    if (limit_coins <= 0)
    {
        instance_create(x, y, obj_smoke)
        instance_destroy()
    }
}
else
{
    instance_create(x, y, obj_blockcoin)
    cont_coin++
    if (cointime == 0)
    {
        cointime = 1
        alarm[4] = 320
    }
}

