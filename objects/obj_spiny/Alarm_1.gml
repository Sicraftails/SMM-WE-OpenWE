with (instance_create(x, (y - 9), obj_espina))
    vspeed = -0.7
with (instance_create((x + 18), (y + 8), obj_espina))
{
    hspeed = 0.7
    rotacion = 270
}
with (instance_create(x, (y + 18), obj_espina))
{
    vspeed = 0.7
    rotacion = 180
}
with (instance_create((x - 18), (y + 8), obj_espina))
{
    hspeed = -0.7
    rotacion = 90
}
alarm[3] = 30

