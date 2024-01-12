if (can_anim == 1)
{
    if (anim < 1)
        anim += 0.07
    else
    {
        event_user(obj_editormanager.panel_circle)
        ready = 1
        anim = 1
        can_anim = 0
    }
    image_xscale = anim
    image_yscale = anim
}
if (left == 1)
{
    image_xscale = scale_down
    image_yscale = scale_down
    if (scale_down > 0.6)
        scale_down -= 0.05
}
if (right == 1)
{
    image_xscale = scale_up
    image_yscale = scale_up
    if (scale_down < 1)
        scale_down += 0.05
}

