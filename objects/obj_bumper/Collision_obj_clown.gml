if (ready == 0)
{
    if (global.apariencia == 0 || global.apariencia == 1)
        audio_play_sound(snd_SMB3_bumper1, 0, false)
    else if (global.apariencia == 2)
        audio_play_sound(snd_bumper1, 0, false)
    ready = 1
}
with (other.id)
{
    if (rot == 0)
        rot = 1
}
other.hspeed = lengthdir_x(3, point_direction(x, y, other.x, other.y))
if ((other.y + 16) < (y - 12))
{
    if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1))
        other.vspeed = -0.5
    else
        other.vspeed = -1.3
}
else if (global.bg_level == "underwater" || (global.bg_level == "sky" && global.modo_noche == 1))
    other.vspeed = 1.5
else
    other.vspeed = 3.5

