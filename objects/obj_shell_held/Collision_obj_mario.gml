if (bbox_bottom < ((other.bbox_top - other.vspeed) + 5) && vspeed > 0 && global.apariencia != 3 && other.helmet == 0 && (sprite_index == spr_shell_buzzy_empty || sprite_index == spr_SMB3_shell_empty || sprite_index == spr_SMB3_shell_empty_night || sprite_index == spr_SMB_shell_empty || sprite_index == spr_SMB_shell_empty_night))
{
    audio_play_sound(snd_helmet_add, 0, false)
    obj_mario.helmet = 1
    instance_create(obj_mario.x, (obj_mario.y + 15), obj_helmet)
    instance_destroy()
}
else if (bbox_bottom < ((other.bbox_top - other.vspeed) + 5) && vspeed > 0 && global.apariencia != 3 && other.helmet == 0 && (sprite_index == spr_SMB_shell_empty_spiny || sprite_index == spr_SMB3_shell_spiny_empty || sprite_index == spr_shell_spiny_empty))
{
    audio_play_sound(snd_helmet_spiny_add, 0, false)
    obj_mario.helmet = 1
    instance_create(obj_mario.x, (obj_mario.y + 15), obj_helmet_spiny)
    with (instance_create((obj_mario.x - 4), (obj_mario.y + 14), obj_smoke))
        sprite_index = spr_sparkles_helmet
    instance_destroy()
}
else if (inmune == 0)
    event_inherited()

