with (instance_create((x + 14), (y - 7), obj_espina))
{
    vspeed = -0.7
    hspeed = 0.7
    rotacion = 315
}
with (instance_create((x + 14), (y + 23), obj_espina))
{
    vspeed = 0.7
    hspeed = 0.7
    rotacion = 225
}
with (instance_create((x - 14), (y + 23), obj_espina))
{
    vspeed = 0.7
    hspeed = -0.7
    rotacion = 135
}
with (instance_create((x - 14), (y - 7), obj_espina))
{
    vspeed = -0.7
    hspeed = -0.7
    rotacion = 45
}
alarm[3] = 30

