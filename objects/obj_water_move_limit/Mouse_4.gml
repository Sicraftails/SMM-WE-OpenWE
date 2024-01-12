if (global.play == 0 && global.resource_create == 0)
{
    if (global.editor_activity == 1)
    {
        if (global.cursor == 0)
        {
            audio_play_sound(snd_drag, 0, false)
            drag = 1
            obj_cursor.move = 1
            can_cont = 1
            global.cursor = 1
            with (obj_cursor)
                event_user(0)
            alarm[0] = 1
        }
    }
}

