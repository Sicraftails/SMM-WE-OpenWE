switch global.apariencia
{
    case 0:
        if (global.powerup == -77)
            sprite_index = spr_SMB_kuribo_drybones_mega
        else
            sprite_index = spr_SMB_kuribo_drybones
        break
    case 1:
        sprite_index = spr_SMB3_kuribo_drybones
        break
    case 2:
        sprite_index = spr_kuribo_drybones
        break
    case 3:
        sprite_index = spr_NSMBU_kuribo_drybones
        break
}

global.yoshi = 2
image_speed = 0
image_index = 0
offset = 0
offsetnext = 0
alarm[0] = 2
stateprev = 0
flying = 0
m_sprite = 0
m_subimagen = 0
gran_golpe = 0
golpe_count = 0
count_audio = 0
invincible = 0
cont_invincible = 0
shake = 0
shake_draw = 1
salpi = 0
salpicadura = 0
