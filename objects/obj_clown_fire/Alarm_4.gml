if (inenemy == 1)
{
    with (instance_create(x, y, obj_plantfire))
    {
        if (global.apariencia == 1)
            sprite_index = spr_SMB3_fireball
        else if (global.apariencia == 2)
            sprite_index = spr_fireball
        hspeed = (3 * other.direct)
        gravity = 0
        vspeed = 0
    }
    alarm[4] = 120
}
else
    alarm[4] = 60
