view_set_visible(0, true)
view_enabled = true
view_set_wport(0, (global.gw * 2))
view_set_hport(0, (global.gh * 2))
camera_set_view_size(view_get_camera(0),  global.gh, camera_get_view_height(view_get_camera(0)))
camera_set_view_size(view_get_camera(0),  global.gw, camera_get_view_width(view_get_camera(0)))
camera_set_view_border(view_get_camera(0), (global.gh / 2), camera_get_view_border_y(view_get_camera(0)))
camera_set_view_border(view_get_camera(0), (global.gw / 2), camera_get_view_border_x(view_get_camera(0)))
if (room != rm_guardabot && room != rm_guardabot_play && room != rm_title)
{
    global.etiqueta1_temp = -1
    global.etiqueta2_temp = -1
}
if (room != rm_guardabot_play && room != rm_title)
{
    global.condiciones = 0
    global.condiciones_clear = 0
    global.condiciones_type = 0
    global.condiciones_object = 0
    global.condiciones_count = 0
}
if (room != rm_guardabot_play)
{
    global.map_consult = -4
    global.type_consult = -4
    global.pages_nm = 1
    global.tabvalue = 0
}
if (room == rm_logo)
    alarm[4] = 240
if (room != rm_guardabot_play)
{
    global.level_g = 0
    global.nm_play = 0
    global.level_id = ""
}
if room == rm_editor or room == rm_title or room == rm_guardabot  or room = rm_course_world or room == rm_credito 
{
	global.dsm = 0
}
/*
if (room == rm_title)
	{
		np_update();
        np_setpresence("Menú Principal", (("¡Jugando SMM:WE " + global.ver) + "!"), "menu", "small_logo")
	}
    else if (room == rm_editor)
    {
		np_update();
        var texto = choose(("Construyendo una aventura - " + global.my1), ("Contruyendo un nivel - " + global.my1), ("Creando un nivel - " + global.my1), ("Creando una aventura - " + global.my1))
        np_setpresence("Editor de Niveles", texto, "makinglevel", "small_logo")
		
    }
    else if (room == rm_guardabot)
	{
		np_update();
        np_setpresence("Guardabot", "Revisando niveles", "guardabot_menu", "small_guardabot")
	}

	{
		np_update();
        np_setpresence("Niveles Mundiales", "Revisando niveles", "surfingstages", "small_globe")
	}
    else if (room == rm_guardabot_play)
    {
		np_update();
        if (global.nm_play != 0)
        {
            switch global.style_course
            {
                case 0:
                    var style = "start_smb1"
                    break
                case 1:
                    style = "start_smb3"
                    break
                case 2:
                    style = "start_smw"
                    break
                case 3:
                    style = "start_nsmbu"
                    break
            }

            np_setpresence("Niveles Mundiales", ("Jugando " + global.level_name), style, "small_globe")
        }
        else
        {
            var ntext = string_copy(global.levelguardabot, 1, (string_length(global.levelguardabot) - 4))
            np_setpresence("Guardabot", ("Jugando " + ntext), "guardabot_level", "small_guardabot")
        }
    }
*/
if (mode == 1)
    event_user(0)
