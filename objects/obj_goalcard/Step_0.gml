if instance_exists(obj_ground3)
{
    x = obj_ground3.x
    y = (obj_ground3.y - 88)
}
if (global.condiciones == 0 || (global.condiciones == 1 && global.condiciones_clear == 1))
    sprite_index = spr_SMB3_goalcard
else
    sprite_index = spr_SMB3_goalcard_disabled

