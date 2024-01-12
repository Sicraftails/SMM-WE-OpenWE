if (obj_mario.isduck == 1)
{
    locked = 2
    if (global.powerup != 2)
    {
        if (instance_number(obj_yoshifire_one) < 1)
        {
            mouthholder = obj_yoshifire
            mouthsprite = spr_podoboo
            audio_play_sound(snd_flames, 0, false)
            instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire_one)
            mouthholder = noone
            mouthsprite = noone
            licking = 1
            alarm[2] = 8
            anim = 0
        }
    }
    else if (instance_number(obj_yoshifire) < 3)
    {
        mouthholder = obj_yoshifire
        mouthsprite = spr_podoboo
        audio_play_sound(snd_flames, 0, false)
        instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire)
        with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire))
            alarm[2] = 4
        with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire))
            alarm[1] = 4
        mouthholder = noone
        mouthsprite = noone
        licking = 1
        alarm[2] = 8
        anim = 0
    }
}
else
{
    locked = 1
    if (global.powerup != 2)
    {
        if (instance_number(obj_yoshifire_one) < 1)
        {
            mouthholder = obj_yoshifire
            mouthsprite = spr_podoboo
            audio_play_sound(snd_flames, 0, false)
            instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire_one)
            mouthholder = noone
            mouthsprite = noone
            licking = 1
            alarm[2] = 8
            anim = 0
        }
    }
    else if (instance_number(obj_yoshifire) < 3)
    {
        mouthholder = obj_yoshifire
        mouthsprite = spr_podoboo
        audio_play_sound(snd_flames, 0, false)
        instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire)
        with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire))
            alarm[2] = 4
        with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire))
            alarm[1] = 4
        mouthholder = noone
        mouthsprite = noone
        licking = 1
        alarm[2] = 8
        anim = 0
    }
}
