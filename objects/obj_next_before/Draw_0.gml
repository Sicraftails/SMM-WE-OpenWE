if instance_exists(obj_panel_expand)
{
    if (image_index == 0)
    {
        if (obj_panel_expand.value != 1)
            draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    }
    else if (obj_panel_expand.value != 14)
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
