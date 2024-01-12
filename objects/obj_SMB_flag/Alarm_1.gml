with (instance_create((x + 8), (y + 8), obj_smoke))
{
    sprite_index = spr_NSMBU_smoke_flag
    image_speed = 0.5
}
if (global.apariencia == 3 && instance_exists(obj_player_goal_nsmbu))
{
    with (obj_player_goal_nsmbu)
        alarm[5] = 20
}
instance_destroy()

