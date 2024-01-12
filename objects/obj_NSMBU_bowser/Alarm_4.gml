var fireball;
audio_stop_sound(snd_NSMBU_bowser_fire)
audio_play_sound(snd_NSMBU_bowser_fire, 0, false)
switch multi_cont
{
    case 0:
        if (direct == 1)
        {
            fireball = instance_create((x + 19), (y - 7), obj_NSMBU_bowser_fire_up)
            with (fireball)
            {
                direction = 350
                motion_set(350, 0.6)
            }
        }
        else
        {
            fireball = instance_create((x - 19), (y - 7), obj_NSMBU_bowser_fire_up)
            with (fireball)
            {
                direction = 190
                motion_set(190, 0.6)
            }
        }
        break
    case 1:
        if (direct == 1)
        {
            fireball = instance_create((x + 19), (y - 14), obj_NSMBU_bowser_fire_up)
            with (fireball)
            {
                direction = 0
                motion_set(0, 0.6)
            }
        }
        else
        {
            fireball = instance_create((x - 19), (y - 14), obj_NSMBU_bowser_fire_up)
            with (fireball)
            {
                direction = 180
                motion_set(180, 0.6)
            }
        }
        break
    case 2:
        if (direct == 1)
        {
            fireball = instance_create((x + 17), (y - 20), obj_NSMBU_bowser_fire_up)
            with (fireball)
            {
                direction = 20
                motion_set(20, 0.6)
            }
        }
        else
        {
            fireball = instance_create((x - 17), (y - 20), obj_NSMBU_bowser_fire_up)
            with (fireball)
            {
                direction = 160
                motion_set(160, 0.6)
            }
        }
        break
    case 3:
        if (direct == 1)
        {
            fireball = instance_create((x + 14), (y - 25), obj_NSMBU_bowser_fire_up)
            with (fireball)
            {
                direction = 38
                motion_set(38, 0.6)
            }
        }
        else
        {
            fireball = instance_create((x - 14), (y - 25), obj_NSMBU_bowser_fire_up)
            with (fireball)
            {
                direction = 142
                motion_set(142, 0.6)
            }
        }
        break
    case 4:
        if (direct == 1)
        {
            fireball = instance_create((x + 17), (y - 27), obj_NSMBU_bowser_fire_up)
            with (fireball)
            {
                direction = 43
                motion_set(43, 0.6)
            }
        }
        else
        {
            fireball = instance_create((x - 17), (y - 27), obj_NSMBU_bowser_fire_up)
            with (fireball)
            {
                direction = 128
                motion_set(128, 0.6)
            }
        }
        break
}

if (multi_cont == 4)
    multi_cont = 0
else
    multi_cont++

