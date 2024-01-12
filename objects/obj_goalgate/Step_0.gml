if instance_exists(obj_ground3)
{
    x = obj_ground3.x
    y = (obj_ground3.y - 137)
}
if instance_exists(obj_mario)
{
    if (obj_mario.x >= (x + 16) && obj_mario.x <= (x + 32) && (obj_mario.y + 16) >= y && obj_mario.y <= (y + 137) && (global.condiciones == 0 || (global.condiciones == 1 && global.condiciones_clear == 1)))
    {
        if instance_exists(obj_goalgate_tape)
        {
            with (obj_goalgate_tape)
                event_user(0)
        }
    }
}
if (global.condiciones == 0 || (global.condiciones == 1 && global.condiciones_clear == 1))
    sprite_index = spr_goalgate
else
    sprite_index = spr_goalgate_disabled

