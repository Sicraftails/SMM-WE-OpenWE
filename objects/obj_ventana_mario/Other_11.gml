with (instance_create((x - 117), (y - 63), obj_window_mario_button))
{
    powerup = 1
    type_powerup = 1
    s_index = 96
    if (global.powerup == powerup)
        s_contorno = 1
}
with (instance_create((x - 92), (y - 63), obj_window_mario_button))
{
    powerup = 2
    type_powerup = 2
    s_index = 61
    if (global.powerup == powerup)
        s_contorno = 1
}
with (instance_create((x - 67), (y - 63), obj_window_mario_button))
{
    powerup = -21
    s_index = 130
    if (global.star_flash == 1)
        s_contorno = 1
}
with (instance_create((x - 42), (y - 63), obj_window_mario_button))
{
    powerup = -39
    type_powerup = 3
    s_index = 113
    if (global.powerup == powerup)
        s_contorno = 1
}
with (instance_create((x - 117), (y - 39), obj_window_mario_button))
{
    powerup = -29
    type_powerup = 4
    s_index = 184
    if (global.powerup == powerup)
        s_contorno = 1
}
with (instance_create((x - 92), (y - 39), obj_window_mario_button))
{
    powerup = -46
    type_powerup = 5
    s_index = 31
    if (global.powerup == powerup)
        s_contorno = 1
}

