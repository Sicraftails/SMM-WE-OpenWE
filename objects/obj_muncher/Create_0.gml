event_inherited()
if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
    var dark = 1
else
    dark = 0
switch global.apariencia
{
    case 0:
        if (dark == 1)
            sprite_index = spr_SMB_muncher_night
        else
            sprite_index = spr_SMB_muncher
        image_speed = 0.1
        break
    case 1:
        if (dark == 1)
            sprite_index = spr_SMB3_muncher_night
        else
            sprite_index = spr_SMB3_muncher
        image_speed = 0.1
        break
    case 2:
        image_speed = 0.1
        break
    case 3:
        sprite_index = spr_NSMBU_muncher
        image_speed = 0.3
        break
}

wings = 0
direct = 1
dead_h = 0
bouncy = 0
apilar = 0
mebelow = -4
swimming = 0
modo_lava = 0
if (position_meeting(x, (bbox_bottom + 8), obj_muncher) && (!(position_meeting(x, (bbox_bottom + 8), obj_muncher_b))))
{
    mebelow = collision_point(x, (bbox_bottom + 8), obj_muncher, 0, 0)
    alarm[0] = 10
}
else
    mebelow = -4
a = -16
alarm[9] = 2
offset = 0
offsetnext = 0
offsetxscale = 1
