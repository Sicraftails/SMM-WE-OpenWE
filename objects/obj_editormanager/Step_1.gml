if (global.instance_deactivate == 0)
{
    if (obj_levelmanager.editor == 0)
        instance_activate_object(obj_levelmanager)
    instance_activate_object(obj_player_trail)
    instance_activate_object(obj_solidtop)
    instance_activate_object(obj_deactivation)
    instance_activate_object(obj_parent_save)
    instance_activate_object(obj_parent_sound_o)
}
if (zoom == 0)
{
    if (x < (__view_get((0 << 0), 0) + (__view_get((2 << 0), 0) / 2)))
    {
        x = (__view_get((0 << 0), 0) + (__view_get((2 << 0), 0) / 2))
        if (hspeed < 0)
            hspeed = 0
    }
    else if (x > ((__view_get((0 << 0), 0) + __view_get((2 << 0), 0)) - (__view_get((2 << 0), 0) / 2)))
    {
        x = ((__view_get((0 << 0), 0) + __view_get((2 << 0), 0)) - (__view_get((2 << 0), 0) / 2))
        if (hspeed > 0)
            hspeed = 0
    }
    if (y < (__view_get((1 << 0), 0) + (__view_get((3 << 0), 0) / 2)))
    {
        y = (__view_get((1 << 0), 0) + (__view_get((3 << 0), 0) / 2))
        if (vspeed < 0)
            vspeed = 0
    }
    else if (y > ((__view_get((1 << 0), 0) + __view_get((3 << 0), 0)) - (__view_get((3 << 0), 0) / 2)))
    {
        y = ((__view_get((1 << 0), 0) + __view_get((3 << 0), 0)) - (__view_get((3 << 0), 0) / 2))
        if (vspeed > 0)
            vspeed = 0
    }
}
else if (zoom == 2)
{
    if (x < (__view_get((0 << 0), 0) + 80))
    {
        x = (__view_get((0 << 0), 0) + 80)
        if (hspeed < 0)
            hspeed = 0
    }
    else if (x > ((__view_get((0 << 0), 0) + __view_get((2 << 0), 0)) - 80))
    {
        x = ((__view_get((0 << 0), 0) + __view_get((2 << 0), 0)) - 80)
        if (hspeed > 0)
            hspeed = 0
    }
    if (y < (__view_get((1 << 0), 0) + 48))
    {
        y = (__view_get((1 << 0), 0) + 48)
        if (vspeed < 0)
            vspeed = 0
    }
    else if (y > ((__view_get((1 << 0), 0) + __view_get((3 << 0), 0)) - 48))
    {
        y = ((__view_get((1 << 0), 0) + __view_get((3 << 0), 0)) - 48)
        if (vspeed > 0)
            vspeed = 0
    }
}
if (expand_open != 0)
{
    hspeed = 0
    vspeed = 0
}
switch zoom
{
    case 1:
        var R = (__view_get((14 << 0), 0) / __view_get((13 << 0), 0))
        if (__view_get((2 << 0), 0) >= 704)
        {
            __view_set((2 << 0), 0, (__view_get((2 << 0), 0) + 8))
            __view_set((3 << 0), 0, (__view_get((3 << 0), 0) + (8 * R)))
        }
        else
        {
            __view_set((2 << 0), 0, (__view_get((2 << 0), 0) + 16))
            __view_set((3 << 0), 0, (__view_get((3 << 0), 0) + (16 * R)))
        }
        if (__view_get((2 << 0), 0) >= 768)
        {
            __view_set((2 << 0), 0, 768)
            __view_set((3 << 0), 0, 432)
            zoom = 2
            if (!instance_exists(obj_zoomclose))
                instance_create(((__view_get((0 << 0), 0) + __view_get((2 << 0), 0)) - 40), (__view_get((1 << 0), 0) + 8), obj_zoomclose)
        }
        break
    case 3:
        R = (__view_get((14 << 0), 0) / __view_get((13 << 0), 0))
        if (__view_get((2 << 0), 0) <= 256)
        {
            __view_set((2 << 0), 0, (__view_get((2 << 0), 0) - 8))
            __view_set((3 << 0), 0, (__view_get((3 << 0), 0) - (8 * R)))
        }
        else
        {
            __view_set((2 << 0), 0, (__view_get((2 << 0), 0) - 16))
            __view_set((3 << 0), 0, (__view_get((3 << 0), 0) - (16 * R)))
        }
        if (__view_get((2 << 0), 0) <= 384)
        {
            __view_set((2 << 0), 0, 384)
            __view_set((3 << 0), 0, 216)
            zoom = 0
            global.play_lock = 0
            with (obj_cursor)
            {
                if (cont_panel_right == 3)
                    cont_panel_right = 2
                if (cont_panel_left == 3)
                    cont_panel_left = 2
                if (cont_panel_top == 3)
                    cont_panel_top = 2
                cont_panel_creator = 2
            }
            if instance_exists(obj_zoomclose)
            {
                with (obj_zoomclose)
                    instance_destroy()
            }
        }
        break
}