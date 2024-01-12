if (global.apariencia != 2)
    sprite_index = spr_windows_mario
audio_play_sound(snd_open_windows, 0, false)
if instance_exists(obj_card_item)
{
    with (obj_card_item)
        active = 0
}
global.select_resource = obj_resource_empty
obj_editormanager.expand_open = 2
can_anim = 1
can_anim2 = 0
anim = 0.8

