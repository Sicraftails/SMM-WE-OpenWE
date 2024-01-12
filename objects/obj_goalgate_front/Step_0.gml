if instance_exists(obj_ground3)
{
    x = (obj_ground3.x + 32)
    y = (obj_ground3.y - 137)
}
if (global.condiciones == 0 || (global.condiciones == 1 && global.condiciones_clear == 1))
    sprite_index = spr_goalgate
else
    sprite_index = spr_goalgate_disabled

