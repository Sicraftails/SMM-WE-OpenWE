event_inherited()
if (bota == 2)
{
    if (global.apariencia == 0)
        sprite_index = spr_SMB_kuriboshoe2
    else
        sprite_index = spr_kuriboshoe2
}
if (gravity == 0)
{
    hspeed = (max(0, (abs(hspeed) - 0.1)) * sign(hspeed))
    if (abs(hspeed) < 0.1)
        hspeed = 0
}
