if (sprite_index == s_magikoopa_disappear)
{
    visible = false
    sprite_index = s_magikoopa
    if (global.apariencia == 3)
        image_speed = 0.5
    else
        image_speed = 0
    image_index = 0
    ready = 1
    alarm[2] = 160
}
else if (sprite_index == s_magikoopa_appear)
{
    if place_meeting(x, y, obj_mario)
    {
        sprite_index = s_magikoopa_disappear
        image_index = 0
        image_speed = 0.4
        with (instance_create(x, y, obj_smoke))
        {
            sprite_index = spr_magikoopa_effect
            image_speed = 0.4
            depth = (other.depth + 1)
        }
        hardness = 100
        stomp = -1
        ready = 1
        exit
    }
    sprite_index = s_magikoopa
    if (global.apariencia == 3)
        image_speed = 0.5
    else
        image_speed = 0.09
    hardness = 0
    stomp = 0
    if (global.apariencia == 3)
        alarm[3] = 50
    else
        alarm[0] = 75
}
else if (sprite_index == spr_NSMBU_magikoopa_atack)
{
    sprite_index = s_magikoopa
    image_speed = 0.5
}

