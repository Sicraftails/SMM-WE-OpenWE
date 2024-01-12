if (modo_sonidos == 0)
{
    modo_sonidos = 1
    sprite_index = spr_card_block_sounds
    image_speed = 0.15
    obj_levelmanager.editor_sonidos = 1
    instance_create(camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), obj_modo_sonidos_control)
    event_user(0)
}
else
{
    modo_sonidos = 0
    sprite_index = spr_card_block_blocks
    image_speed = 0
    obj_editormanager.expand_open = 0
    obj_levelmanager.editor_sonidos = 0
    if instance_exists(obj_modo_sonidos_control)
    {
        with (obj_modo_sonidos_control)
            instance_destroy()
    }
    event_user(1)
}


