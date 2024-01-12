var dark;
sprite_anim = spr_NSMBU_bullet_anim
anim_shoot = 0
if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
    dark = 1
else
    dark = 0
sprite_index = spr_SMB_bulletbill_base
switch global.apariencia
{
    case 0:
        if (dark == 1)
            sprites = spr_SMB_bulletbill_base_night
        else
            sprites = spr_SMB_bulletbill_base
        break
    case 1:
        if (dark == 1)
            sprites = spr_SMB3_bullebill_base_night
        else
            sprites = spr_SMB3_bullebill_base
        break
    case 2:
        sprites = spr_bullebill_base
        break
    case 3:
        sprites = spr_NSMBU_bullebill_base
        break
}

wings = 0
w_wings = 0
direct = 1
dead_h = 0
apilar = 0
swimming = 0
modo_lava = 0
sprout = 0
shoot_right = 0
shoot_left = 0
index = 0
size_y = 3
image_speed = 0
alarm[0] = 90
solidtop = 0
alarm[1] = 1

