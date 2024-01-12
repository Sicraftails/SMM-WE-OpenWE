audio_stop_sound(snd_pballon_c)
ready = 0
if instance_exists(obj_mario)
{
    if (global.powerup != 0 && (collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 16), obj_mario.bbox_right, obj_mario.bbox_top, obj_solid, 1, 0) || collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 16), obj_mario.bbox_right, obj_mario.bbox_top, obj_physicssolid, 1, 0) || collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 16), obj_mario.bbox_right, obj_mario.bbox_top, obj_solidphy, 1, 0) || collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_top - 16), obj_mario.bbox_right, obj_mario.bbox_top, obj_bullebill_base, 1, 0)))
    {
        with (obj_mario)
        {
            if (holding == 2 && global.apariencia == 2)
            {
                isduck = 1
                isduckhold = 1
            }
            else
                isduck = 1
        }
    }
}

