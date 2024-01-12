x = (obj_goalgate.x + 8)
if (vspeed > 0 && y >= (obj_goalgate.y + 121))
    vspeed = -1
else if (vspeed < 0 && y <= (obj_goalgate.y + 8))
    vspeed = 1
if (global.condiciones == 0 || (global.condiciones == 1 && global.condiciones_clear == 1))
    sprite_index = spr_goal
else
    sprite_index = spr_goal_disabled

