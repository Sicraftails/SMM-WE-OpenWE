if (fire != 3)
{
    audio_play_sound(snd_SMB3_bowser_fire, 0, false)
    if (direct == 1)
        instance_create((x + 13), (y + 3), obj_bowserjr_fire)
    else
        instance_create((x - 13), (y + 3), obj_bowserjr_fire)
}
switch fire
{
    case 3:
        fire = 0
        if (global.apariencia == 0)
        {
            sprite_index = spr_SMB_bowserjr_walk
            image_speed = 0.1
        }
        alarm[1] = choose(240, 300, 240, 300)
        break
    case 2:
        fire = 3
        fire_anim = 0
        if (global.apariencia == 0)
        {
            sprite_index = spr_SMB_bowserjr_walk
            image_speed = 0.1
        }
        alarm[1] = 20
        break
    default:
        fire++
        image_index = 1
        alarm[1] = 60
}


