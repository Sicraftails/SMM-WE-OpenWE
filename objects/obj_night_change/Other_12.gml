///@description Sets the sprites for the editor items
switch global.bg_level
{
    case "snow":
        if (global.modo_noche == 1)
        {
            img_ground = 85
			img_pendiente1 = 208
            img_block = 68
            img_rock = 22
            img_pinchos = 109
            img_cloud = 177
        }
        else
        {
            img_ground = 84
			img_pendiente1 = 207
            img_block = 67
            img_rock = 21
            img_pinchos = 108
            img_cloud = 176
        }
        break
    case "desert":
        img_ground = 83
		img_pendiente1 = 206
        break
    case "sky":
        img_ground = 82
		img_pendiente1 = 205
        break
	case "beach":
        img_ground = 226
		img_pendiente1 = 195
        break
	case "fall":
        img_ground = 227
		img_pendiente1 = 195
        break
    case "forest":
        img_ground = 81
		img_pendiente1 = 204
        img_hidden_block = 10
        break
    case "airship":
        if (global.modo_noche == 1)
		{
            img_ground = 80
			img_pendiente1 = 203
		}
        else
		{
            img_ground = 79
			img_pendiente1 = 202
		}
        if (global.apariencia == 0)
            img_rock = 19
		break
    case "ghost":
        img_ground = 78
		img_pendiente1 = 201
        img_block = 65
        img_rock = 18
        img_hidden_block = 12
        break
    case "underwater":
        if (global.modo_noche == 1)
        {
            img_ground = 77
			img_pendiente1 = 200
            img_rock = 20
            img_pinchos = 107
            img_cloud = 104
            img_hidden_block = 8
        }
        else
        {
            img_ground = 76
			img_pendiente1 = 199
            img_rock = 20
            img_pinchos = 107
            img_pinchos = 107
            img_hidden_block = 8
        }
        break
    case "castle":
        if (global.modo_noche == 1)
        {
            img_ground = 75
			img_pendiente1 = 198
            img_block = 66
            img_rock = 19
            img_cloud = 175
            img_hidden_block = 12
        }
        else
        {
            img_ground = 74
			img_pendiente1 = 197
            img_block = 66
            img_rock = 19
            img_cloud = 175
            img_hidden_block = 12
        }
        break
	case "mountain":
        if (global.modo_noche == 1)
        {
            img_ground = 229
			img_pendiente1 = 198
        }
        else
        {
            img_ground = 228
			img_pendiente1 = 195
        }
        break
    case "underground":
        img_ground = 73
		img_pendiente1 = 196
        img_block = 65
        img_rock = 18
        img_hidden_block = 12
        break
    case "ground":
        img_ground = 72
		img_pendiente1 = 195
        break
}

if (global.bg_level == "castle" || global.bg_level == "ghost" || global.bg_level == "underground" || global.modo_noche == 1)
{
    img_billbanzai = 3
    img_bobomb = 26
    img_buzzy_shell = 88
    img_buzzy = 36
    img_muncher = 101
    img_chomp = 142
    img_bullet = 6
    img_cannon = 156
    img_bulletbill = 6
}
if (global.bg_level == "ghost" || global.bg_level == "underground" || (global.modo_noche == 1 && global.bg_level != "snow" && global.bg_level != "castle"))
{
    img_cloud_block = 174
    img_donut = 178
}
if (global.modo_noche == 1 && global.bg_level != "underwater")
    img_hidden_block = 12
if (global.modo_noche == 1 && global.bg_level == "ground")
    img_1up = 123
if (global.modo_noche == 1)
    img_angrysun = 99
else
    img_angrysun = 131
with (obj_card_item)
{
    switch obj
    {
        case obj_ground:
            obj_draw = other.img_ground
            break
        case obj_block_res:
            obj_draw = other.img_block
            break
        case obj_rock_res:
            obj_draw = other.img_rock
            break
        case obj_pinchos_res:
            obj_draw = other.img_pinchos
            break
        case obj_billbanzai_res:
            obj_draw = other.img_billbanzai
            break
        case obj_bobomb_res:
            obj_draw = other.img_bobomb
            break
        case obj_buzzybeetle_res:
            obj_draw = other.img_buzzy
            break
        case obj_buzzy_shell_res:
            obj_draw = other.img_buzzy_shell
            break
        case obj_muncher_res:
            obj_draw = other.img_muncher
            break
        case obj_chomp_res:
            obj_draw = other.img_chomp
            break
        case obj_block_hidden_res:
            obj_draw = other.img_hidden_block
            break
        case obj_nube_res:
            obj_draw = other.img_cloud
            break
        case obj_1up_res:
            obj_draw = other.img_1up
            break
        case obj_bullebill_base_res:
            obj_draw = other.img_bulletbill
            break
        case obj_cannon_res:
            obj_draw = other.img_cannon
            break
        case obj_angrysun_res:
            obj_draw = other.img_angrysun
            break
    }

}

