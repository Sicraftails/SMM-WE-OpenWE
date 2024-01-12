var posx, spd, posy;
if (global.bg_level == "underwater" || (global.modo_noche == 1 && global.bg_level == "sky") || (global.modo_noche == 1 && global.bg_level == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.bg_level == "forest" && global.modo_noche == 0))
    swimming = 1
posx = sprite_get_xoffset(sprite_index)
if (s_sprout == -66)
    posx = 0
else if (type == 0)
    posx = 0
else if (posx != 0)
    posx = 8
if (s_sprout == -67 || s_sprout == -68 || (wings == 1 && (s_sprout == -34 || s_sprout == -33)))
    spd = (0.3 - (0.15 * swimming))
else
    spd = (5 - (3 * swimming))
if (downwards == 0)
{
    posy = (sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index))
    if (position_meeting(x, (y - 8), obj_solid) || position_meeting(x, (y - 8), obj_physicssolid) || position_meeting(x, (y - 8), obj_bullebill_base))
    {
        instance_create((x + 8), (y - 8), obj_detroy_enemy)
        instance_destroy()
    }
    else
    {
        if (s_sprout == -28)
            instance_create(x, ystart, obj_beanstalk)
        else
        {
            with (scr_constant_make_object((x + posx), (y - posy), s_sprout))
            {
                if (variable_instance_exists(object_index, "wings") && other.wings == 1)
                    wings = 1
                if variable_instance_exists(object_index, "direct")
                    direct = 1
                vspeed = (-spd)
            }
        }
        instance_destroy()
    }
}
else
{
    posy = (sprite_get_yoffset(sprite_index) - sprite_get_bbox_top(sprite_index))
    if (position_meeting((x + posx), ((y + 16) + posy), obj_solid) || position_meeting((x + posx), ((y + 16) + posy), obj_physicssolid) || position_meeting((x + posx), ((y + 16) + posy), obj_bullebill_base))
    {
        instance_create((x + 8), (y + 24), obj_detroy_enemy)
        instance_destroy()
    }
    else
    {
        if (s_sprout == -28)
        {
            with (instance_create(x, ystart, obj_beanstalk))
                downwards = 1
        }
        else
        {
            with (scr_constant_make_object((x + posx), ((y + 16) + posy), s_sprout))
            {
                if (variable_instance_exists(object_index, "wings") && other.wings == 1)
                    wings = 1
                if variable_instance_exists(object_index, "direct")
                    direct = 1
            }
        }
        instance_destroy()
    }
}

