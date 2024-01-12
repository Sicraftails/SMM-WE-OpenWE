if (dead_boss == 1 && global.bg_level != "castle" && global.bg_level != "forest")
{
    if instance_exists(obj_levelmanager)
    {
        with (obj_levelmanager)
        {
            dead_bowser = 1
            alarm[11] = 120
        }
    }
}

