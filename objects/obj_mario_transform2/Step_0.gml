if instance_exists(obj_mario)
{
    with (obj_mario)
    {
        disablecontrols = 1
        gravity = 0
        hspeed = 0
        if (link_transform == 0)
        {
            sprite_index = other.m_sprite
            image_speed = 0
            image_index = other.m_index
        }
        x = other.m_x
        y = other.m_y
        state = other.m_state
        skidnow = other.m_skidnow
    }
}
if instance_exists(obj_cap_mario)
{
    with (obj_cap_mario)
        image_speed = 0
}
if (ready == 1 || ready == 2)
{
    timeline_running = 0
    if instance_exists(obj_smoke_cap)
        obj_smoke_cap.visible = true
    if instance_exists(obj_cap_mario)
    {
        with (obj_cap_mario)
            cap_invisible = 0
    }
    if instance_exists(obj_kuriboshoe)
    {
        with (obj_kuriboshoe)
            visible = true
    }
    if instance_exists(obj_yoshi2)
    {
        with (obj_yoshi2)
            visible = true
    }
    if instance_exists(obj_helmet)
    {
        with (obj_helmet)
            visible = true
    }
    if instance_exists(obj_autoscroll)
    {
        with (obj_autoscroll)
            hspeed = 0
    }
}


