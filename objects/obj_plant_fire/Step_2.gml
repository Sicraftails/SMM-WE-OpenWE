if (global.apariencia == 3 && shoot == 1 && anim_shoot == 0)
{
    if (image_index >= 5)
    {
        alarm[3] = 1
        anim_shoot = 1
    }
}
if (gravity == 0)
{
    hspeed = (max(0, (abs(hspeed) - 0.15)) * sign(hspeed))
    if (abs(hspeed) < 0.15)
        hspeed = 0
}
if (instance_exists(obj_mario) && shoot == 0)
{
    if (obj_mario.y < (y - 21))
        sprite_index = s_up
    else if (obj_mario.y > (y - 21))
        sprite_index = s_down
}
if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    direct = -1
else
    direct = 1
if (wings == 1)
{
    if (global.apariencia == 3)
        wings_anim += 0.5
    else
        wings_anim += 0.12
}
event_inherited()

