if (global.bg_level != "castle" && global.bg_level != "forest")
{
    if instance_exists(obj_levelmanager)
    {
        with (obj_levelmanager)
        {
            dead_bowser = 1
            if (global.apariencia == 0 || global.apariencia == 3)
                alarm[11] = 90
            else
                alarm[11] = 120
        }
    }
}

