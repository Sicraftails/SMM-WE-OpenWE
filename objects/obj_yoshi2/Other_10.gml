var vall;
audio_play_sound(snd_yoshi_spit, 0, false)
if (obj_mario.isduck == 1)
{
    if (mouthholder == obj_podoboo)
        mouthholder = obj_yoshifire
    locked = 2
    switch mouthholder
    {
        case obj_bones_yoshi_one:
            with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_bones_yoshi_one))
                hspeed = (1 * sign(obj_mario.direct))
            break
        case obj_bones_yoshi:
            with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_bones_yoshi))
            {
                hspeed = (1.5 * sign(obj_mario.direct))
                alarm[1] = 4
            }
            with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_bones_yoshi))
                hspeed = (1.5 * sign(obj_mario.direct))
            with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_bones_yoshi))
            {
                hspeed = (1.5 * sign(obj_mario.direct))
                alarm[2] = 4
            }
            break
        case obj_yoshifire_one:
            audio_play_sound(snd_flames, 0, false)
            instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire_one)
            break
        case obj_yoshifire:
            audio_play_sound(snd_flames, 0, false)
            with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire))
                alarm[1] = 4
            instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire)
            with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire))
                alarm[2] = 4
            break
        case obj_yoshifire_purple:
            audio_play_sound(snd_flames, 0, false)
            with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire_purple))
                alarm[1] = 4
            instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire_purple)
            with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire_purple))
                alarm[2] = 4
            break
        case obj_spike_ball:
            if (obj_mario.direct > 0)
                vall = (x + 12)
            else
                vall = (x - 26)
            with (instance_create(vall, (y - 12), mouthholder))
            {
                hspeed = ((2.8 + abs(obj_mario.hspeed)) * sign(obj_mario.direct))
                ready = 1
                fisica = 1
                alarm[0] = 10
            }
            break
        default:
            if (obj_mario.direct > 0)
                vall = (x + 10)
            else
                vall = (x - 24)
            with (instance_create(vall, (y - 12), mouthholder))
            {
                sprite_index = other.mouthsprite
                if (object_index == obj_brohammer_yoshi)
                    hspeed = (0.8 * obj_mario.direct)
                else if (object_index == obj_snow_ball)
                {
                    hspeed = (0.6 * obj_mario.direct)
                    alarm[2] = 4
                }
                else
                    hspeed = (1 * obj_mario.direct)
                y--
            }
    }

}
else
{
    if (mouthholder == obj_podoboo)
        mouthholder = obj_yoshifire
    else if (mouthholder == obj_shell_drybones)
        mouthholder = obj_shell_drybones_held
    else if (mouthholder == obj_shell || mouthholder == obj_shell_empty || mouthholder == obj_spiny_empty)
        mouthholder = obj_shell_held
    else if (mouthholder == obj_snow_ball)
        mouthholder = obj_snow_ball_held
    locked = 1
    switch mouthholder
    {
        case obj_bones_yoshi_one:
            with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_bones_yoshi_one))
                hspeed = (1.5 * sign(obj_mario.direct))
            break
        case obj_bones_yoshi:
            with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_bones_yoshi))
            {
                hspeed = (1.5 * sign(obj_mario.direct))
                alarm[1] = 4
            }
            with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_bones_yoshi))
                hspeed = (1.5 * sign(obj_mario.direct))
            with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_bones_yoshi))
            {
                hspeed = (1.5 * sign(obj_mario.direct))
                alarm[2] = 4
            }
            break
        case obj_yoshifire_one:
            audio_play_sound(snd_flames, 0, false)
            instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire_one)
            break
        case obj_yoshifire:
            audio_play_sound(snd_flames, 0, false)
            with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire))
                alarm[1] = 4
            instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire)
            with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire))
                alarm[2] = 4
            break
        case obj_yoshifire_purple:
            audio_play_sound(snd_flames, 0, false)
            with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire_purple))
                alarm[1] = 4
            instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire_purple)
            with (instance_create((x + (10 * obj_mario.direct)), (y - 12), obj_yoshifire_purple))
                alarm[2] = 4
            break
        case obj_spike_ball:
            if (obj_mario.direct > 0)
                vall = (x + 10)
            else
                vall = (x - 24)
            with (instance_create(vall, (y - 16), mouthholder))
            {
                ready = 1
                fisica = 1
                hspeed = ((2.8 + abs(obj_mario.hspeed)) * sign(obj_mario.direct))
                alarm[0] = 10
            }
            break
        default:
            if (obj_mario.direct > 0)
                vall = (x + 10)
            else
                vall = (x - 24)
            with (instance_create(vall, (y - 16), mouthholder))
            {
                sprite_index = other.mouthsprite
                direct = other.image_xscale
                if (object_index == obj_block_pow_hold)
                    explode = 1
                if (object_index == obj_spike_ball)
                {
                    hspeed = (1.2 * sign(obj_mario.direct))
                    ready = 1
                    fisica = 1
                }
                else if (object_index == obj_snow_ball_held)
                {
                    hspeed = (3.2 * sign(obj_mario.direct))
                    fisica = 1
                    alarm[0] = 10
                }
                else if (object_index == obj_bones_yoshi || object_index == obj_bones_yoshi_one)
                    hspeed = (0.5 * sign(obj_mario.direct))
                else if (sprite_index == spr_shell || sprite_index == spr_shell_red || sprite_index == spr_shell_buzzy_empty || sprite_index == spr_shell_spiny_empty)
                {
                    prevhspeed = ((2.8 + abs(obj_mario.hspeed)) * sign(obj_mario.direct))
                    hspeed = ((2.8 + abs(obj_mario.hspeed)) * sign(obj_mario.direct))
                    ready = 1
                    if (place_meeting(x, y, obj_solid) || place_meeting(x, y, obj_physicssolid) || place_meeting(x, y, obj_bullebill_base))
                        event_user(0)
                }
                else if ((!(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0))) && (!(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_physicssolid, 0, 0))) && (!(collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_bullebill_base, 0, 0))))
                {
                    if (object_index == obj_mushroom || object_index == obj_1up || object_index == obj_star)
                        hspeed = ((1 - (0.5 * obj_mario.isswim)) * obj_mario.direct)
                    else
                        hspeed = (obj_mario.direct + ((2.5 - (1.5 * obj_mario.isswim)) * obj_mario.direct))
                }
                else
                    inwall = 1
            }
    }

}
mouthholder = noone
mouthsprite = noone
licking = 1
alarm[2] = 5
anim = 0
