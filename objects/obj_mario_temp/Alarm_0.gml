var marioU;
if (global.apariencia == 3)
    marioU = obj_marioU
else
    marioU = obj_mario
with (instance_create(x, y, marioU))
{
    direct = other.direct
    event_user(6)
}
event_user(0)
instance_destroy()

