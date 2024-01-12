if (salpicadura == 1)
{
    if (instance_exists(obj_mario) && instance_exists(obj_lava_water))
    {
        if (obj_mario.state == 1)
        {
            if (global.bg_level == "forest" && global.modo_noche == 1)
            {
                switch global.apariencia
                {
                    case 1:
                        sprite_l = spr_SMB3_megasplash_lava_purple
                        break
                    case 3:
                        sprite_l = spr_NSMBU_splash_posion
                        break
                    default:
                        sprite_l = spr_megasplash_lava_purple
                }

            }
			else if (global.bg_level == "mountain" && global.modo_noche == 1)
            {
                switch global.apariencia
                {
                    case 1:
                        sprite_l = spr_SMB3_megasplash_lava
                        break
                    case 3:
                        sprite_l = spr_NSMBU_splash_lava
                        break
                    default:
                        sprite_l = spr_megasplash_lava
                }

            }
            else if (global.bg_level == "forest" || global.bg_level == "beach")
            {
                switch global.apariencia
                {
                    case 1:
                        sprite_l = spr_SMB3_megasplash_water
                        break
                    case 3:
                        sprite_l = spr_NSMBU_splash_agua
                        break
                    default:
                        sprite_l = spr_megasplash_water
                }

            }
            else
            {
                switch global.apariencia
                {
                    case 1:
                        sprite_l = spr_SMB3_megasplash_lava
                        break
                    case 3:
                        sprite_l = spr_NSMBU_splash_lava
                        break
                    default:
                        sprite_l = spr_megasplash_lava
                }

            }
            with (instance_create((x - 16), (obj_lava_water.y - 20), obj_smoke))
            {
                sprite_index = other.sprite_l
                depth = -9
            }
            with (instance_create((x + 16), (obj_lava_water.y - 20), obj_smoke))
            {
                sprite_index = other.sprite_l
                depth = -9
            }
            alarm[8] = 30
        }
        else
            alarm[8] = 1
    }
}
