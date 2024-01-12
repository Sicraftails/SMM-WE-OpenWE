if (mytop != obj_lighting && instance_exists(mytop))
{
    with (mytop)
        instance_destroy()
}
if (held == 1)
{
    with (obj_mario)
    {
        holding = 0
        isduckhold = 0
    }
    with (obj_player_warp)
        holding = 0
    with (obj_doormario)
        holding = 0
    with (obj_doormario_exit)
        holding = 0
}
