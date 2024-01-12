if (obj_levelmanager.editor == 0)
{
    if (instance_exists(obj_yoshi2) && instance_exists(obj_mario))
    {
        if (instance_number(obj_player_trail) > 30)
        {
            with (instance_furthest(obj_mario.x, obj_mario.y, obj_player_trail))
                instance_destroy()
        }
        if ((obj_yoshi2.visible == true && (abs(obj_mario.hspeed) > 0.5 || abs(obj_mario.vspeed) > 0.25)) || (obj_yoshi2.visible == true && instance_exists(obj_clown) && obj_clown.inmario == 1 && (abs(obj_clown.hspeed > 0.5) || abs(obj_clown.vspeed > 0.25))))
        {
            with (instance_create(obj_mario.x, obj_mario.y, obj_player_trail))
            {
                sprite_index = obj_yoshi2.sprite_index
                image_index = obj_yoshi2.image_index
                image_xscale = obj_yoshi2.direct
                y_draw = (y + 16)
                image_speed = 0
                sprite_m_yoshi = obj_yoshi2.sprite_mario
                index_m_yoshi = obj_yoshi2.index_mario
                x_m_yoshi = obj_yoshi2.x_mario
                y_m_yoshi = obj_yoshi2.y_mario
                if (instance_exists(obj_cap_mario) && obj_cap_mario.visible == true)
                {
                    sprite_capa = obj_cap_mario.sprite_index
                    index_capa = obj_cap_mario.image_index
                    direct_capa = obj_cap_mario.direct
                    depth_capa = 1
                }
            }
        }
    }
    else if (instance_exists(obj_kuriboshoe) && instance_exists(obj_mario))
    {
        if (instance_number(obj_player_trail) > 30)
        {
            with (instance_furthest(obj_mario.x, obj_mario.y, obj_player_trail))
                instance_destroy()
        }
        if ((obj_kuriboshoe.visible == true && (abs(obj_mario.hspeed) > 0.5 || abs(obj_mario.vspeed) > 0.25)) || (obj_kuriboshoe.visible == true && instance_exists(obj_clown) && obj_clown.inmario == 1 && (abs(obj_clown.hspeed > 0.5) || abs(obj_clown.vspeed > 0.25))))
        {
            with (instance_create(obj_mario.x, obj_mario.y, obj_player_trail))
            {
                drybones = 1
                sprite_index = obj_kuriboshoe.sprite_index
                image_index = obj_kuriboshoe.image_index
                image_xscale = obj_mario.direct
                y_draw = ((y + 16) - obj_kuriboshoe.offset)
                image_speed = 0
                sprite_m_yoshi = obj_kuriboshoe.m_sprite
                index_m_yoshi = obj_kuriboshoe.m_subimagen
                x_m_yoshi = obj_kuriboshoe.x
                if (global.powerup == -77)
                    y_m_yoshi = ((obj_kuriboshoe.y - 32) - obj_kuriboshoe.offset)
                else
                    y_m_yoshi = ((obj_kuriboshoe.y - 16) - obj_kuriboshoe.offset)
            }
        }
    }
    else if (instance_exists(obj_kuribo_drybones) && instance_exists(obj_mario))
    {
        if (instance_number(obj_player_trail) > 30)
        {
            with (instance_furthest(obj_mario.x, obj_mario.y, obj_player_trail))
                instance_destroy()
        }
        if ((obj_kuribo_drybones.visible == true && (abs(obj_mario.hspeed) > 0.5 || abs(obj_mario.vspeed) > 0.25)) || (obj_kuribo_drybones.visible == true && instance_exists(obj_clown) && obj_clown.inmario == 1 && (abs(obj_clown.hspeed > 0.5) || abs(obj_clown.vspeed > 0.25))))
        {
            with (instance_create(obj_mario.x, obj_mario.y, obj_player_trail))
            {
                drybones = 1
                sprite_index = obj_kuribo_drybones.sprite_index
                image_index = obj_kuribo_drybones.image_index
                image_xscale = obj_mario.direct
                y_draw = ((y + 16) - obj_kuriboshoe.offset)
                image_speed = 0
                sprite_m_yoshi = obj_kuribo_drybones.m_sprite
                index_m_yoshi = obj_kuribo_drybones.m_subimagen
                x_m_yoshi = obj_kuribo_drybones.x
                if (global.powerup == -77)
                    y_m_yoshi = ((obj_kuribo_drybones.y - 32) - obj_kuribo_drybones.offset)
                else
                    y_m_yoshi = ((obj_kuribo_drybones.y - 16) - obj_kuribo_drybones.offset)
                if (instance_exists(obj_cap_mario) && obj_cap_mario.visible == true)
                {
                    sprite_capa = obj_cap_mario.sprite_index
                    index_capa = obj_cap_mario.image_index
                    direct_capa = obj_cap_mario.direct
                }
            }
        }
    }
    else if (instance_exists(obj_mario_pballon) && instance_exists(obj_mario))
    {
        if (instance_number(obj_player_trail) > 30)
        {
            with (instance_furthest(obj_mario_pballon.x, obj_mario_pballon.y, obj_player_trail))
                instance_destroy()
        }
        if (obj_mario_pballon.visible == true && (abs(obj_mario_pballon.hspeed) > 0.5 || abs(obj_mario_pballon.vspeed) > 0.25))
        {
            with (instance_create(obj_mario_pballon.x, obj_mario_pballon.y, obj_player_trail))
            {
                sprite_index = obj_mario_pballon.sprite_index
                image_index = obj_mario_pballon.image_index
                image_angle = obj_mario_pballon.image_angle
                image_speed = 0
            }
        }
    }
    else if (instance_exists(obj_mario) && (instance_exists(obj_link_atack) || instance_exists(obj_link_dash_atack) || instance_exists(obj_link_down_atack)))
    {
        if instance_exists(obj_link_atack)
            var rastro = obj_link_atack
        else if instance_exists(obj_link_dash_atack)
            rastro = obj_link_dash_atack
        else if instance_exists(obj_link_down_atack)
            rastro = obj_link_down_atack
        if (instance_number(obj_player_trail) > 30)
        {
            with (instance_furthest(obj_mario.x, obj_mario.y, obj_player_trail))
                instance_destroy()
        }
        if (abs(obj_mario.hspeed) > 0.5 || abs(obj_mario.vspeed) > 0.25)
        {
            var ras = instance_create(obj_mario.x, obj_mario.y, obj_player_trail)
            with (ras)
            {
                image_xscale = obj_mario.direct
                image_speed = 0
            }
            ras.sprite_index = rastro.sprite_index
            ras.image_index = rastro.image_index
        }
    }
    else if instance_exists(obj_mario)
    {
        if (instance_number(obj_player_trail) > 30)
        {
            with (instance_furthest(obj_mario.x, obj_mario.y, obj_player_trail))
                instance_destroy()
        }
        if ((obj_mario.visible == true && (abs(obj_mario.hspeed) > 0.5 || abs(obj_mario.vspeed) > 0.25)) || (obj_mario.visible == true && instance_exists(obj_clown) && obj_clown.inmario == 1 && (abs(obj_clown.hspeed > 0.5) || abs(obj_clown.vspeed > 0.25))))
        {
            with (instance_create(obj_mario.x, obj_mario.y, obj_player_trail))
            {
                sprite_index = obj_mario.sprite_index
                image_index = obj_mario.image_index
                image_xscale = obj_mario.direct
                image_speed = 0
                if (instance_exists(obj_cap_mario) && obj_cap_mario.visible == true)
                {
                    sprite_capa = obj_cap_mario.sprite_index
                    index_capa = obj_cap_mario.image_index
                    direct_capa = obj_cap_mario.direct
                }
            }
        }
    }
    if (global.powerup == -82)
        alarm[1] = 30
    else
        alarm[1] = 10
}
else
    alarm[1] = -1


