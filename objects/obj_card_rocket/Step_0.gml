x = (((camera_get_view_x(view_get_camera(0)) + camera_get_view_width(view_get_camera(0))) - 26) + obj_cursor.anim_right)
y = (camera_get_view_y(view_get_camera(0)) + 184)
if (counter_draw == 1)
    counter_anim += 0.15
if (mouse_check_button(mb_left) && obj_levelmanager.editor == 1 && obj_editormanager.expand_open == 0)
{
    if (counter_anim >= 11.85)
    {
        audio_play_sound(snd_rocket_go, 0, false)
        sprite_index = spr_rocket
        image_speed = 0
        image_index = 0
        aud = 0
        ready = 0
        cont = 0
        counter_draw = 0
        counter_anim = 0
        with (instance_create(x, (y + 8), obj_smoke))
            sprite_index = spr_smoke
        global.instance_deactivate = 0
        alarm[0] = 2
    }
}
else if (mouse_check_button_released(mb_left) && sprite_index == spr_rocket_go)
{
    audio_stop_sound(snd_rocket_count)
    sprite_index = spr_rocket
    image_speed = 0
    image_index = 0
    aud = 0
    ready = 0
    cont = 0
    counter_draw = 0
    counter_anim = 0
}

