with (obj_flipblock)
{
    instance_create(x, y, obj_coinchange)
    instance_destroy()
}
with (obj_coin)
{
    instance_create(x, y, obj_flipblock)
    instance_destroy()
}
with (obj_coinchange)
{
    instance_create(x, y, obj_coin)
    instance_destroy()
}

