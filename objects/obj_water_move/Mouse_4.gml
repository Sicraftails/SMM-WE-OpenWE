if (global.play == 0 && global.resource_create == 0)
{
    if (global.editor_activity == 1 && (!place_meeting(obj_creation_preview.x, obj_creation_preview.y, obj_water_move_limit)))
    {
        if (global.cursor == 0)
        {
            audio_play_sound(snd_drag, 0, false)
            drag = 1
            obj_cursor.move = 1
            global.cursor = 1
            with (obj_cursor)
                event_user(0)
            alarm[0] = 1
        }
    }
}

