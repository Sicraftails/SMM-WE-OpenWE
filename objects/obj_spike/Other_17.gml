if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
    sud_imagen = 1
else
    sud_imagen = 0
switch global.apariencia
{
    case 0:
        if (sud_imagen == 1)
            s_part = spr_SMB3_spike_ball_part_night
        else
            s_part = spr_SMB3_spike_ball_part
        break
    case 1:
        if (sud_imagen == 1)
            s_part = spr_SMB3_spike_ball_part_night
        else
            s_part = spr_SMB3_spike_ball_part
        break
    case 2:
        s_part = spr_spike_ball_part
        break
    case 3:
        s_part = spr_NSMBU_spike_ball_part
        break
}

for (i = 0; i < 6; i++)
{
    imdead = instance_create(x, y, obj_enemy_dead)
    imdead.girar = 1
    imdead.sprite_index = s_part
    imdead.image_index = choose(0, 1, 2, 3)
    switch i
    {
        case 0:
            imdead.vspeed = -2
            break
        case 1:
            imdead.vspeed = -0.6
            break
        case 2:
            imdead.hspeed = 0.6
            break
        case 3:
            imdead.hspeed = 0.6
            break
        case 4:
            imdead.hspeed = -0.6
            break
        case 5:
            imdead.hspeed = -0.6
            break
    }

}
instance_destroy()