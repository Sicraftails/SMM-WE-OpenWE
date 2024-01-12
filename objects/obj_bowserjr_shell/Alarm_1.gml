if (instance_exists(obj_mario) && obj_mario.x > (x - 184) && obj_mario.x < (x + 184))
{
    if (global.apariencia == 3)
    {
        audio_play_sound(snd_NSMBU_bowserjr_outside, 0, false)
        sprite_index = spr_NSMBU_bowserjr_shell_outside
        image_index = 0
        image_speed = 0.5
        stomp = -1
    }
    else
    {
        with (instance_create(x, y, obj_bowserjr))
        {
            firehitpoints = other.firehitpoints
            hitpoints = other.hitpoints
            wings = other.wings
            key = other.key
        }
        instance_destroy()
    }
}
else
{
    charge = 1
    alarm[0] = 120
}

