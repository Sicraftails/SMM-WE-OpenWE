if (instance_exists(obj_player_warp) || instance_exists(obj_doormario))
{
    alarm[4] = 50
    alarm[5] = 110
    alarm[6] = 190
}
else
{
    instance_create((x - 8), y, obj_explosion)
    instance_destroy()
}


