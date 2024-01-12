if (instance_exists(obj_iname) && obj_iname.new_texto != "" && obj_iname.new_texto != " " && (!instance_exists(obj_toast)) && press == 0)
{
    audio_play_sound(snd_aceptar, 0, false)
    image_index = 1
    global.my1 = obj_iname.new_texto
    press = 1
    mensaje = ""
    codigo = ""
    with (obj_persistent)
        event_user(7)
    room_goto(rm_title)
}
else
    audio_play_sound(snd_wrong, 0, false)