if (global.apariencia == 3 && global.bg_level == "ground" && global.modo_noche == 0)
{
    if (editor == 0)
        spd += 0.1
    else
        spd = 0
    __background_set( e__BG.X, 0, (camera_get_view_x(view_camera[0])))
    __background_set( e__BG.X, 1, lerp(0,camera_get_view_x(view_camera[0]), 0.9) -spd ) 
	__background_set( e__BG.X, 2, lerp(0,camera_get_view_x(view_camera[0]), 0.8)) 
	__background_set( e__BG.X, 3, lerp(0,camera_get_view_x(view_camera[0]), 0.7)) 
	__background_set( e__BG.X, 4, lerp(0,camera_get_view_x(view_camera[0]), 0.6)) 
	__background_set( e__BG.X, 5, lerp(0,camera_get_view_x(view_camera[0]), 0.5)) 
	__background_set( e__BG.X, 7, lerp(0,camera_get_view_x(view_camera[0]), 0.4)) 
}
else if (global.apariencia == 3 && global.modo_noche == 0 && editor == 0 && (global.bg_level == "sky"))
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0))) )
	else if (global.apariencia == 3 && global.modo_noche == 1 && editor == 0 && (global.bg_level == "airship"))
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0))) )
else if (global.apariencia == 3 && global.modo_noche == 0 && (global.bg_level == "forest"))
{
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0))) )
    __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.9) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.7) )
    __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.6) )
    __background_set( e__BG.X, 5, (camera_get_view_x(view_get_camera(0)) * 0.5) )
    __background_set( e__BG.X, 7, (camera_get_view_x(view_get_camera(0)) * 0.4) )
}
else if (global.apariencia == 3 && global.modo_noche == 0 && (editor == 1 && (global.bg_level == "sky")))
{
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0))) )
    __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.9) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.7) )
    __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.6) )
    __background_set( e__BG.X, 5, (camera_get_view_x(view_get_camera(0)) * 0.5) )
    __background_set( e__BG.X, 7, (camera_get_view_x(view_get_camera(0)) * 0.4) )
}
else if (global.apariencia == 3 && global.modo_noche == 1 && (editor == 1 && (global.bg_level == "airship")))
{
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0))) )
    __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.9) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.7) )
    __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.6) )
    __background_set( e__BG.X, 5, (camera_get_view_x(view_get_camera(0)) * 0.5) )
    __background_set( e__BG.X, 7, (camera_get_view_x(view_get_camera(0)) * 0.4) )
}
else if (global.apariencia == 3 && global.bg_level == "snow")
{
    if (global.modo_noche == 0)
    {
        if (editor == 0)
            spd += 0.1
        else
            spd = 0
        __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0)) * 0.9) )
        __background_set( e__BG.X, 1, ((camera_get_view_x(view_get_camera(0)) * 0.8) - spd) )
        __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.7) )
        __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.6) )
        __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.5) )
        __background_set( e__BG.X, 5, (camera_get_view_x(view_get_camera(0)) * 0.4) )
    }
    else
    {
        __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0)) * 0.7) )
        __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.6) )
        __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.5) )
        __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.4) )
        __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.3) )
    }
}
else if (global.apariencia == 3 && global.bg_level == "desert" && global.modo_noche == 0)
{
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0)) * 1) )
    __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.9) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.7) )
    __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.6) )
}
else if (global.apariencia == 3 && global.bg_level == "beach" && global.modo_noche == 0)
{
    if (editor == 0)
        spd += 0.1
    else
        spd = 0
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0)) * 1) )
    __background_set( e__BG.X, 1, ((camera_get_view_x(view_get_camera(0)) * 0.9) - spd) )
    __background_set( e__BG.X, 2, ((camera_get_view_x(view_get_camera(0)) * 0.8) - (spd * 2)) )
    __background_set( e__BG.X, 3, ((camera_get_view_x(view_get_camera(0)) * 0.7) - (spd * 3)) )
    __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.6) )
    __background_set( e__BG.X, 5, (camera_get_view_x(view_get_camera(0)) * 0.5) )
}
else if (global.apariencia == 3 && global.bg_level == "sky" && global.modo_noche == 0)
{
    if (editor == 0)
        spd += 0.1
    else
        spd = 0
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0)) * 1) )
    __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.9) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.7) )
    __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.6) )
    __background_set( e__BG.X, 5, (camera_get_view_x(view_get_camera(0)) * 0.5) )
	__background_set( e__BG.X, 7, (camera_get_view_x(view_get_camera(0)) * 0.4) )
}
else if (global.apariencia == 3 && global.bg_level == "airship" && global.modo_noche == 0)
{
    if (editor == 0)
        spd += 0.1
    else
        spd = 0
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0))) )
    __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.9) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.7) )
    __background_set( e__BG.X, 4, ((camera_get_view_x(view_get_camera(0)) * 0.6) - spd) )
    __background_set( e__BG.X, 5, ((camera_get_view_x(view_get_camera(0)) * 0.5) - (spd * 2)))
    __background_set( e__BG.X, 7, (camera_get_view_x(view_get_camera(0)) * 0.4) )
}
else if (global.apariencia == 3 && global.bg_level == "airship" && global.modo_noche == 1)
{
    if (editor == 0)
        spd += 0.1
    else
        spd = 0
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0)) * 1) )
    __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.9) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.7) )
    __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.6) )
    __background_set( e__BG.X, 5, (camera_get_view_x(view_get_camera(0)) * 0.5) )
    __background_set( e__BG.X, 7, (camera_get_view_x(view_get_camera(0)) * 0.4) )
}
else if (global.apariencia == 3 && global.bg_level == "mountain" && global.modo_noche == 0)
{
    if (editor == 0)
        spd += 0.1
    else
        spd = 0
	__background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0))) )
	__background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.9) ) 
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) ) 
    __background_set( e__BG.X, 3, ((camera_get_view_x(view_get_camera(0)) * 0.7 - spd) ) )
    __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.6) )
	__background_set( e__BG.X, 5, (camera_get_view_x(view_get_camera(0)) * 0.5) )
}
else if (global.apariencia == 3 && global.bg_level == "mountain" && global.modo_noche == 1)
{
   if (editor == 0)
        spd += 0.1
    else
        spd = 0
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0))) )
	__background_set( e__BG.X, 1, ((camera_get_view_x(view_get_camera(0)) * 0.9) ) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.7) )
    __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.6) )
    __background_set( e__BG.X, 5, (camera_get_view_x(view_get_camera(0)) * 0.5) )
    __background_set( e__BG.X, 7, (camera_get_view_x(view_get_camera(0)) * 0.4) )
}
else if (global.apariencia == 3 && global.bg_level == "fall" && global.modo_noche == 0)
{
    if (editor == 0)
        spd += 0.1
    else
        spd = 0
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0))) )
    __background_set( e__BG.X, 1, ((camera_get_view_x(view_get_camera(0)) * 0.9) - spd))
	__background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.7) )
}
else if (global.apariencia == 3 && global.bg_level != "sky" && global.bg_level != "airship" && global.bg_level != "mountain" && global.bg_level != "fall" && global.bg_level != "ground" && global.bg_level != "snow" && global.bg_level != "desert" && global.bg_level != "beach")
{
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.7) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.6) )
}
else if (global.apariencia == 2 && global.bg_level != "sky" && global.bg_level != "airship")
{
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0)) * 0.6) )
    __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.5) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.4) )
}
