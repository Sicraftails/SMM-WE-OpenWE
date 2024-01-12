if (color == 0)
{
    with (instance_create(x, y, obj_yoshi_abandon))
    {
        if (other.mouthholder != noone)
        {
            mouthholder = other.mouthholder
            mouthsprite = other.mouthsprite
        }
        direct = other.direct
    }
}
else if (color == 1)
{
    with (instance_create(x, y, obj_yoshi_abandon))
    {
        color = 1
        if (other.mouthholder != noone)
        {
            mouthholder = other.mouthholder
            mouthsprite = other.mouthsprite
        }
        direct = other.direct
    }
}
else if (color == 2)
{
    with (instance_create(x, y, obj_yoshi_abandon))
    {
        color = 2
        if (other.mouthholder != noone)
        {
            mouthholder = other.mouthholder
            mouthsprite = other.mouthsprite
        }
        direct = other.direct
    }
}
instance_destroy()
