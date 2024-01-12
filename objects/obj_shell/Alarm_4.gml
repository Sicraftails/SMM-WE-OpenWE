if instance_exists(obj_player_warp)
    alarm[4] = 30
else
{
    shake = 0
    alarm[3] = -1
    if (koopainside != 0)
    {
        switch koopainside
        {
            case -1:
                if (sprite_index == spr_SMB_shell_buzzy || sprite_index == spr_SMB_shell_buzzy_night || sprite_index == spr_SMB3_shell_buzzy || sprite_index == spr_SMB3_shell_buzzy_night || sprite_index == spr_shell_buzzy || sprite_index == spr_NSMBU_shell_buzzy)
                {
                    with (instance_create(x, y, obj_buzzybeetle))
                        direct = other.direct
                    instance_destroy()
                }
                else if (sprite_index == spr_SMB_shell_buzzy_b || sprite_index == spr_SMB_shell_buzzy_night_b || sprite_index == spr_SMB3_shell_buzzy_b || sprite_index == spr_SMB3_shell_buzzy_night_b || sprite_index == spr_shell_buzzy_b || sprite_index == spr_NSMBU_shell_buzzy_b)
                {
                    with (instance_create(x, y, obj_buzzybeetle_b))
                        direct = other.direct
                    instance_destroy()
                }
                else if (sprite_index == spr_SMB_spiny_dead || sprite_index == spr_SMB3_spiny_dead || sprite_index == spr_spiny_dead || sprite_index == spr_NSMBU_spiny_dead)
                {
                    with (instance_create(x, y, obj_spiny))
                        direct = other.direct
                    instance_destroy()
                }
                break
            case 1:
                if (sprite_height > 16)
                {
                    with (instance_create(x, y, obj_beachkoopa_b))
                    {
                        image_speed = 0.15
                        cankill = 1
                    }
                    sprite_index = spr_shell_b
                }
                else
                {
                    with (instance_create(x, y, obj_beachkoopa))
                    {
                        image_speed = 0.15
                        cankill = 1
                    }
                    sprite_index = spr_shell
                }
                alarm[5] = -1
                koopainside = 0
                sacudirse = 0
                break
            case 2:
                if (sprite_height > 16)
                {
                    with (instance_create(x, y, obj_beachkoopa_red_b))
                    {
                        image_speed = 0.15
                        cankill = 1
                    }
                    sprite_index = spr_shell_red_b
                }
                else
                {
                    with (instance_create(x, y, obj_beachkoopa_red))
                    {
                        image_speed = 0.15
                        cankill = 1
                    }
                    sprite_index = spr_shell_red
                }
                alarm[5] = -1
                koopainside = 0
                sacudirse = 0
                break
        }

    }
    else
    {
        if (sprite_index == spr_SMB_shell_wakeup || sprite_index == spr_SMB3_shell_wakeup)
        {
            instance_create(x, y, obj_koopa)
            instance_destroy()
            return;
        }
        else if (sprite_index == spr_SMB_shell_red_wakeup || sprite_index == spr_SMB3_shell_red_wakeup)
        {
            instance_create(x, y, obj_koopa_red)
            instance_destroy()
        }
        if (sprite_index == spr_SMB_shell_wakeup_b || sprite_index == spr_SMB3_shell_wakeup_b)
        {
            instance_create(x, y, obj_koopa_b)
            instance_destroy()
            return;
        }
        else if (sprite_index == spr_SMB_shell_red_wakeup_b || sprite_index == spr_SMB3_shell_red_wakeup_b)
        {
            instance_create(x, y, obj_koopa_red_b)
            instance_destroy()
            return;
        }
        else
        {
            switch sprite_index
            {
                case spr_NSMBU_shell:
                    with (instance_create(x, y, obj_koopa))
                    {
                        sprite_index = spr_NSMBU_koopa_wakeup
                        direct = other.direct
                        wake = 1
                    }
                    break
                case spr_NSMBU_shell_red:
                    with (instance_create(x, y, obj_koopa_red))
                    {
                        sprite_index = spr_NSMBU_koopa_red_wakeup
                        direct = other.direct
                        wake = 1
                    }
                    break
                case spr_NSMBU_shell_b:
                    with (instance_create(x, y, obj_koopa_b))
                    {
                        sprite_index = spr_NSMBU_koopa_b_wakeup
                        direct = other.direct
                        wake = 1
                    }
                    break
                case spr_NSMBU_shell_red_b:
                    with (instance_create(x, y, obj_koopa_red_b))
                    {
                        sprite_index = spr_NSMBU_koopa_red_b_wakeup
                        direct = other.direct
                        wake = 1
                    }
                    break
            }

        }
        instance_destroy()
    }
}
