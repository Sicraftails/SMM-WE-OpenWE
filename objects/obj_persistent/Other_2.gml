var file;
if (os_type != os_android)
{
#macro DISCORD_APP_ID "699637175360421948"

pronto = false;

alarm[9] = room_speed * 5;
/*
if (!np_initdiscord(DISCORD_APP_ID, true, np_steam_app_id_empty))
{
	show_error("NekoPresence init fail.", true);
}
/**/
}
if (os_type == os_android)
	sleep_tm = 4

else
	sleep_tm = 10
if file_exists((working_directory + "Settings_new.dat"))
{
    file = file_text_open_read("Settings_new.dat")
    fullscreen = real(file_text_read_string(file))
    file_text_readln(file)
    filter = real(file_text_read_string(file))
    file_text_readln(file)
    global.vsync = real(file_text_read_string(file))
    file_text_readln(file)
    global.lanzar_agarrar = real(file_text_read_string(file))
    file_text_readln(file)
    global.saltar = real(file_text_read_string(file))
    file_text_readln(file)
    global.saltar_spin = real(file_text_read_string(file))
    file_text_readln(file)
    global.pause = real(file_text_read_string(file))
    file_text_readln(file)
    global.jugador = real(file_text_read_string(file))
    file_text_readln(file)
    global.arriba = real(file_text_read_string(file))
    file_text_readln(file)
    global.abajo = real(file_text_read_string(file))
    file_text_readln(file)
    global.izquierda = real(file_text_read_string(file))
    file_text_readln(file)
    global.derecha = real(file_text_read_string(file))
    file_text_readln(file)
    global.last_level = file_text_read_string(file)
    file_text_readln(file)
    global.name_users = file_text_read_string(file)
    file_text_readln(file)
    global.idioma = real(file_text_read_string(file))
    file_text_readln(file)
    global.w_scale = real(file_text_read_string(file))
    file_text_readln(file)
    global.audiomaster = real(file_text_read_string(file))
    file_text_readln(file)
    global.sm4j_style = real(file_text_read_string(file))
    file_text_readln(file)
	global.effect_star = real(file_text_read_string(file))
    file_text_readln(file)
    global.my1 = file_text_read_string(file)
    file_text_readln(file)
    global.hd = real(file_text_read_string(file))
	file_text_readln(file)
    global.controller = real(file_text_read_string(file))
	file_text_readln(file)
    audio_master_gain(global.audiomaster)
}
else
{
    fullscreen = 0
    filter = 1
    global.vsync = 1
    global.jugador = 0
    global.derecha = 68
    global.izquierda = 65
    global.arriba = 87
    global.abajo = 83
    global.saltar = 38
    global.saltar_spin = 40
    global.lanzar_agarrar = 37
    global.pause = 32
    global.w_scale = 1
}
alarm[5] = 1
audio_play_sound(snd_coin, 0, false)
alarm[4] = 260
alarm[11] = 1
if (os_type == os_android)
{
    if (os_check_permission("android.permission.WRITE_EXTERNAL_STORAGE") == os_permission_denied)
    {
        os_request_permission("android.permission.WRITE_EXTERNAL_STORAGE");
    }
}