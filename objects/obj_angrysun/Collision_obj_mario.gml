var a, b;
if (happy == 1 && ready == 2)
{
    audio_play_sound(snd_scatter, 0, false)
    with (obj_enemyparent)
    {
        if (object_index != obj_grinder)
        {
            a = 0
            repeat (8)
            {
                with (instance_create(((round((bbox_left + bbox_right)) / 2) - 8), ((round((bbox_top + bbox_bottom)) / 2) - 8), obj_smoke))
                {
                    sprite_index = spr_boltspark
                    image_speed = 0.1
                    motion_set(a, 0.5)
                }
                a += 45
            }
            b = 22.5
            repeat (8)
            {
                with (instance_create(((round((bbox_left + bbox_right)) / 2) - 8), ((round((bbox_top + bbox_bottom)) / 2) - 8), obj_smoke))
                {
                    sprite_index = spr_boltspark
                    image_speed = 0.1
                    motion_set(b, 1)
                }
                b += 45
            }
            if (variable_instance_exists(object_index, "key") && key == 1)
            {
                with (instance_create((x - 8), (y - 8), obj_key_appear))
                    vspeed = -4
            }
            instance_destroy()
            with (instance_create((round((bbox_left + bbox_right)) / 2), y, obj_score))
                event_user(0)
        }
    }
    with (obj_bossparent)
    {
        a = 0
        repeat (8)
        {
            with (instance_create(((round((bbox_left + bbox_right)) / 2) - 8), ((round((bbox_top + bbox_bottom)) / 2) - 8), obj_smoke))
            {
                sprite_index = spr_boltspark
                image_speed = 0.1
                motion_set(a, 0.5)
            }
            a += 45
        }
        b = 22.5
        repeat (8)
        {
            with (instance_create(((round((bbox_left + bbox_right)) / 2) - 8), ((round((bbox_top + bbox_bottom)) / 2) - 8), obj_smoke))
            {
                sprite_index = spr_boltspark
                image_speed = 0.1
                motion_set(b, 1)
            }
            b += 45
        }
        if (variable_instance_exists(object_index, "key") && key == 1)
        {
            with (instance_create((x - 8), (y - 8), obj_key_appear))
                vspeed = -4
        }
        instance_destroy()
        with (instance_create((round((bbox_left + bbox_right)) / 2), y, obj_score))
            event_user(0)
    }
    instance_destroy()
    with (instance_create((round((bbox_left + bbox_right)) / 2), y, obj_score))
        event_user(3)
}
else
    event_inherited()

