imdead = instance_create(x, y, obj_enemy_dead)
imdead.sprite_index = sprite_index
imdead.direct = direct
imdead.hspeed = 0
imdead.vspeed = -4
multidead = instance_create(x, y, obj_enemy_multidead)
with (multidead)
{
    count = 4
    direct = other.direct
    if (other.state == 0)
    {
        switch global.apariencia
        {
            case 0:
                sprite_index = spr_SMB_floruga_body
                break
            case 1:
                sprite_index = spr_SMB3_floruga_body
                break
            case 2:
                sprite_index = spr_floruga_body
                break
            case 3:
                sprite_index = spr_NSMBU_floruga_body
                break
        }

    }
    else
    {
        switch global.apariencia
        {
            case 0:
                sprite_index = spr_SMB_floruga_angry_body
                break
            case 1:
                sprite_index = spr_SMB3_floruga_angry_body
                break
            case 2:
                sprite_index = spr_floruga_angry_body
                break
            case 3:
                sprite_index = spr_NSMBU_floruga_angry_body
                break
        }

    }
}
instance_destroy()
