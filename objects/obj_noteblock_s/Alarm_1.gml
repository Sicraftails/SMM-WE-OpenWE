vspeed = 0
y = ystart
if (ready2 == 1 && instance_exists(obj_mario) && place_meeting(x, (y - 16), obj_mario))
{
    ready2 = 0
    with (obj_mario)
    {
        audio_stop_sound(other.sound_block)
        audio_play_sound(other.sound_block, 0, false)
        if (isswim == 1)
            vspeed = -3
        else
            vspeed = -5
        y--
        state = 2
        helice_fly = 0
        if keyboard_check(global.saltar)
            jumpnow = 1
        else if (keyboard_check(global.saltar_spin) && holding == 0 && global.apariencia > 1)
        {
            if (global.apariencia == 3)
                audio_play_sound(snd_NSMBU_spinjump, 0, false)
            else
                audio_play_sound(snd_spin, 0, false)
            stompstyle = 1
        }
        else
            jumpnow = 2
    }
}
if (global.apariencia == 3)
{
    with (instance_create((x + 8), (y + 8), obj_smoke))
        sprite_index = spr_NSMBU_smoke_foo
}
else
    instance_create(x, y, obj_smoke)
instance_destroy()

