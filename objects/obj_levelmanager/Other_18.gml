if (y < ((__view_get((3 << 0), 0) / 2) - 1))
{
    y = (__view_get((3 << 0), 0) / 2)
    if (vspeed < 0)
        vspeed = 0
}
else if (y > ((room_height - (__view_get((3 << 0), 0) / 2)) + 1) && alarm[11] != -1)
{
    y = (room_height - (__view_get((3 << 0), 0) / 2))
    if (vspeed > 0)
        vspeed = 0
}
else if (y > ((room_height - (__view_get((3 << 0), 0) / 2)) + 9))
{
    y = ((room_height - (__view_get((3 << 0), 0) / 2)) + 8)
    if (vspeed > 0)
        vspeed = 0
}
switch real_time
{
    case 1:
        if (real_time_ready == 1)
        {
            vspeed = 0
            y = (follow.y + 32)
        }
        else if (y > (follow.y + 30))
        {
            vspeed = median(-4, (0.04 * ((follow.y + 15) - y)), 4)
            if (y < (follow.y + 32))
            {
                real_time_ready = 1
                vspeed = 0
            }
        }
        else if (y < (follow.y + 32))
        {
            vspeed = median(4, (0.04 * ((follow.y + 15) - y)), -4)
            if (y > (follow.y + 30))
            {
                real_time_ready = 1
                vspeed = 0
            }
        }
        break
    case 2:
        if (real_time_ready == 1)
        {
            vspeed = 0
            y = (follow.y - 8)
        }
        else if (y >= (follow.y - 8))
        {
            real_time_ready = 1
            vspeed = 0
            y = (follow.y - 8)
        }
        else if (y < (follow.y - 5))
        {
            vspeed = median(4, (0.5 * ((follow.y + 16) - y)), -4)
            if (y > (follow.y - 8))
            {
                real_time_ready = 1
                vspeed = 0
                y = (follow.y - 8)
            }
        }
        break
    case 3:
        vspeed = 0
        y = (follow.y + 32)
        break
    case 4:
        vspeed = median(-2, (0.02 * ((follow.y + 15) - y)), 2)
        break
    case 5:
        vspeed = 0
        y = (follow.y - 8)
        break
    default:
        if ((follow.y + 32) < ((__view_get((1 << 0), 0) + (__view_get((3 << 0), 0) / 2)) - 12) && ((variable_instance_exists(follow, "state") && follow.state < 2) || (variable_instance_exists(follow, "inclown") && follow.inclown == 2) || (variable_instance_exists(follow, "camera_jump") && follow.camera_jump == 1)))
        {
            if (y > follow.yview)
                view_move = 1
            else if (y < follow.yview)
                view_move = 2
        }
        if instance_exists(obj_player_goal_parent)
            var obj = (follow.y + 32)
        else
            obj = follow.yview
        if (vspeed < 0)
        {
            if (y < obj)
            {
                vspeed = 0
                view_move = 0
            }
        }
        if (view_move == 1)
            vspeed = median(-4, (0.04 * ((obj - 1) - y)), 4)
        else if (view_move == 2)
        {
            if (vspeed > 3)
                vspeed = 3
            else
                vspeed += 0.05
        }
        break
}

if ((variable_instance_exists(follow, "state") && follow.state == 3) || (variable_instance_exists(follow, "fly_cap") && follow.fly_cap > 0) || (variable_instance_exists(follow, "modo_vuelo") && follow.modo_vuelo == 1) || (variable_instance_exists(follow, "disablegrav") && follow.disablegrav > 0) || (variable_instance_exists(follow, "isswim") && follow.isswim == 1) || (variable_instance_exists(follow, "helice_fly") && follow.helice_fly == 1) || (variable_instance_exists(follow, "inclown") && follow.inclown == 1) || follow.object_index == obj_doormario || global.powerup == -82)
{
    real_time = 1
    view_move = 0
}
else if (follow.y >= ((__view_get((1 << 0), 0) + (__view_get((3 << 0), 0) / 2)) + 8) && follow.y < ((room_height - (__view_get((3 << 0), 0) / 2)) + 8) && follow.vspeed > 0)
{
    real_time = 2
    view_move = 1
    follow.yview = (follow.y + 32)
}
else if (follow.object_index == obj_doormario_exit || follow.object_index == obj_player_warp)
{
    real_time = 3
    view_move = 0
}
else if (((variable_instance_exists(follow, "walljump_ex") && follow.walljump_ex == 1) || (variable_instance_exists(follow, "doublejump") && follow.doublejump != 0)) && follow.y < (__view_get((1 << 0), 0) + 48))
{
    real_time = 4
    view_move = 0
}
else if (follow.y >= ((__view_get((1 << 0), 0) + (__view_get((3 << 0), 0) / 2)) + 9) && follow.y < ((room_height - (__view_get((3 << 0), 0) / 2)) + 8) && variable_instance_exists(follow, "platform_m") && follow.platform_m == 1)
{
    real_time = 5
    view_move = 0
}
else
{
    real_time = 0
    real_time_ready = 0
}
