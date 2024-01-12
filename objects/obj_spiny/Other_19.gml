imheld = instance_create(x, y, obj_shell)
switch global.apariencia
{
    case 0:
        imheld.sprite_index = spr_SMB_spiny_dead
        break
    case 1:
        imheld.sprite_index = spr_SMB3_spiny_dead
        break
    case 2:
        imheld.sprite_index = spr_spiny_dead
        break
    case 3:
        imheld.sprite_index = spr_NSMBU_spiny_dead
        break
}

imheld.koopainside = -1
imheld.flip = 1
imheld.alarm[3] = 540
imheld.alarm[4] = 640
instance_destroy()
