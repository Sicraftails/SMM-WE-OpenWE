if (collision_point(x, (y - 8), obj_ground, 0, 1) || collision_point(x, (y - 8), obj_decoracion_1, 0, 1) || collision_point(x, (y - 8), obj_decoracion_2, 0, 1) || collision_point(x, (y - 8), obj_decoracion_3, 0, 1) || collision_point(x, (y - 8), obj_decoracion_4, 0, 1) || collision_point((x - 8), (y - 8), obj_decoracion_4, 0, 1) || collision_point((x + 24), (y - 8), obj_decoracion_4, 0, 1))
{
    alarm[2] = -1
    exit
}
else if (create_bgo == round(random(100)) || create_bgo == round(random(100)) || create_bgo == round(random(100)) || create_bgo == round(random(100)) || create_bgo == round(random(100)) || create_bgo == round(random(100)) || create_bgo == round(random(100)) || create_bgo == round(random(100)) || create_bgo == round(random(100)))
{
    audio_stop_sound(snd_decoracion)
    audio_play_sound(snd_decoracion, 0, false)
    if (collision_point((x - 8), (y + 8), obj_ground, 0, 1) && collision_point((x + 24), (y + 8), obj_ground, 0, 1) && (!collision_point((x - 8), (y - 8), obj_decoracion_1, 0, 1)) && (!collision_point((x + 24), (y - 8), obj_decoracion_1, 0, 1)) && (!collision_point((x - 8), (y - 8), obj_decoracion_2, 0, 1)) && (!collision_point((x + 24), (y - 8), obj_decoracion_2, 0, 1)) && (!collision_point((x - 8), (y - 8), obj_decoracion_3, 0, 1)) && (!collision_point((x + 24), (y - 8), obj_decoracion_3, 0, 1)))
    {
        create_bgo2 = choose(0, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1)
        if (create_bgo2 == 0)
            instance_create((x + 16), (y - 16), obj_decoracion_4)
        else
            instance_create(x, (y - 16), choose(obj_decoracion_1, obj_decoracion_2, obj_decoracion_3, obj_decoracion_1, obj_decoracion_2, obj_decoracion_1, obj_decoracion_3, obj_decoracion_3))
    }
    else
        instance_create(x, (y - 16), choose(obj_decoracion_1, obj_decoracion_2, obj_decoracion_3, obj_decoracion_2, obj_decoracion_1, obj_decoracion_3))
}
