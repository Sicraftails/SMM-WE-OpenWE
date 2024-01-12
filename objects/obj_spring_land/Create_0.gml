switch global.apariencia
{
    case 0:
        sprite_index = spr_SMB_spring_land
        break
    case 1:
        sprite_index = spr_SMB3_spring_land
        break
    case 2:
        sprite_index = spr_spring_land
        break
    case 3:
        sprite_index = spr_NSMBU_spring_land
        break
}

image_speed = 0
image_index = 0
ready = 0
direct = 1
swimming = 0
modo_lava = 0
my_object = obj_lighting
mytop = instance_create(x, y, obj_solidtop)
enable = 0
koopa_inside = 0
imagen = 1869
sp_obj = 0
id_obj = 0
golpe_dir = 1
if (position_meeting(x, (bbox_bottom + 8), obj_spring_land) && (!position_meeting(x, (bbox_bottom + 8), obj_spring_land)))
{
    mebelow = collision_point(x, (bbox_bottom + 8), obj_spring_land, 0, 0)
    alarm[0] = 10
}
else
    mebelow = -4
a = -16
alarm[9] = 2
offset = 0
offsetnext = 0
offsetxscale = 1

