if (global.condiciones == 0 || (global.condiciones == 1 && global.condiciones_clear == 1))
{
    if (caer == 0 && (!instance_exists(obj_mario_transform2)))
    {
        caer = 1
        with (obj_score)
            event_user(5)
        event_user(0)
        with (other.id)
        {
            with (instance_create(x, y, obj_player_goal_smw_castle))
            {
                direct = other.direct
                jump_type = other.jump_type
                sprite_index = other.sprite_index
                image_index = other.image_index
            }
            if instance_exists(obj_mario_pballon)
            {
                with (obj_mario_pballon)
                    speed = 0
            }
            instance_destroy()
        }
    }
}

