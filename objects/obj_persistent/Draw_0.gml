/// @description Draws the screenshot shown when fading to black
if sprite_exists(back)
{
    gpu_set_blendenable(0)
    var sx = 0.5
    draw_sprite_ext(back, 0, camera_get_view_x(view_get_camera(0)), camera_get_view_y(view_get_camera(0)), sx, sx, 0, c_white, 1)
    gpu_set_blendenable(1)
}
draw_set_font(global.font_google)
if (vk_movimientos == 1)
{
	
    if (global.sm4j_style == 1)
    {
        if keyboard_check(global.arriba)
            draw_sprite_ext(spr_keyup_sm4j, 1, (camera_get_view_x(view_get_camera(0)) + 32), (camera_get_view_y(view_get_camera(0)) + 80), 1, 1, 0, c_white, 0.2)
        else
            draw_sprite_ext(spr_keyup_sm4j, 0, (camera_get_view_x(view_get_camera(0)) + 32), (camera_get_view_y(view_get_camera(0)) + 80), 1, 1, 0, c_white, 0.2)
        if keyboard_check(global.abajo)
            draw_sprite_ext(spr_keydown_sm4j, 1, (camera_get_view_x(view_get_camera(0)) + 32), (camera_get_view_y(view_get_camera(0)) + 178), 1, 1, 0, c_white, 0.2)
        else
            draw_sprite_ext(spr_keydown_sm4j, 0, (camera_get_view_x(view_get_camera(0)) + 32), (camera_get_view_y(view_get_camera(0)) + 178), 1, 1, 0, c_white, 0.2)
        if keyboard_check(global.izquierda)
            draw_sprite_ext(spr_keyleft_sm4j, 1, (camera_get_view_x(view_get_camera(0)) - 34), (camera_get_view_y(view_get_camera(0)) + 144), 1, 1, 0, c_white, 0.2)
        else
            draw_sprite_ext(spr_keyleft_sm4j, 0, (camera_get_view_x(view_get_camera(0)) - 34), (camera_get_view_y(view_get_camera(0)) + 144), 1, 1, 0, c_white, 0.2)
        if keyboard_check(global.derecha)
            draw_sprite_ext(spr_keyright_sm4j, 1, (camera_get_view_x(view_get_camera(0)) + 66), (camera_get_view_y(view_get_camera(0)) + 144), 1, 1, 0, c_white, 0.2)
        else
            draw_sprite_ext(spr_keyright_sm4j, 0, (camera_get_view_x(view_get_camera(0)) + 66), (camera_get_view_y(view_get_camera(0)) + 144), 1, 1, 0, c_white, 0.2)
    }
    else if (keyboard_check(global.arriba) || keyboard_check(global.abajo) || keyboard_check(global.izquierda) || keyboard_check(global.derecha))
        draw_sprite_ext(spr_pad_3ds, 1, (camera_get_view_x(view_get_camera(0)) + 14), (camera_get_view_y(view_get_camera(0)) + 118), 1, 1, 0, c_white, 0.2)
    else
        draw_sprite_ext(spr_pad_3ds, 0, (camera_get_view_x(view_get_camera(0)) + 14), (camera_get_view_y(view_get_camera(0)) + 118), 1, 1, 0, c_white, 0.2)
}
if (vk_saltos == 1)
{
    if (global.sm4j_style == 1)
    {
        if keyboard_check(global.saltar){
            draw_sprite_ext(spr_key_a_sm4j, 1, (camera_get_view_x(view_get_camera(0)) + 320), (camera_get_view_y(view_get_camera(0)) + 158), 1, 1, 0, c_white, 0.2)
			global.jump = 1
		}
        else{
            draw_sprite_ext(spr_key_a_sm4j, 0, (camera_get_view_x(view_get_camera(0)) + 320), (camera_get_view_y(view_get_camera(0)) + 158), 1, 1, 0, c_white, 0.2)
			global.jump = 0
		}
        if keyboard_check(global.saltar_spin)
            draw_sprite_ext(spr_key_al_sm4j, 1, (camera_get_view_x(view_get_camera(0)) + 320), (camera_get_view_y(view_get_camera(0)) + 30), 1, 1, 0, c_white, 0.2)
        else
            draw_sprite_ext(spr_key_al_sm4j, 0, (camera_get_view_x(view_get_camera(0)) + 320), (camera_get_view_y(view_get_camera(0)) + 30), 1, 1, 0, c_white, 0.2)
        if (keyboard_check(global.lanzar_agarrar) || global.key_br == 1)
            draw_sprite_ext(spr_keyu_b_sm4j, 1, (camera_get_view_x(view_get_camera(0)) + 256), (camera_get_view_y(view_get_camera(0)) + 158), 1, 1, 0, c_white, 0.2)
        else
            draw_sprite_ext(spr_keyu_b_sm4j, 0, (camera_get_view_x(view_get_camera(0)) + 256), (camera_get_view_y(view_get_camera(0)) + 158), 1, 1, 0, c_white, 0.2)
        if (global.key_br == 1)
            draw_sprite_ext(spr_key_br_sm4j, 1, (camera_get_view_x(view_get_camera(0)) + 320), (camera_get_view_y(view_get_camera(0)) + 94), 1, 1, 0, c_white, 0.2)
        else
            draw_sprite_ext(spr_key_br_sm4j, 0, (camera_get_view_x(view_get_camera(0)) + 320), (camera_get_view_y(view_get_camera(0)) + 94), 1, 1, 0, c_white, 0.2)
        if (room != rm_editor)
            draw_sprite_ext(spr_key_p_sm4j, 0, (camera_get_view_x(view_get_camera(0)) + 336), camera_get_view_y(view_get_camera(0)), 1, 1, 0, c_white, 0.2)
    }
    else
    {
        if keyboard_check(global.saltar)
            draw_sprite_ext(spr_nkey_a, 1, (camera_get_view_x(view_get_camera(0)) + 300), (camera_get_view_y(view_get_camera(0)) + 158), 1, 1, 0, c_white, 0.2)
        else
            draw_sprite_ext(spr_nkey_a, 0, (camera_get_view_x(view_get_camera(0)) + 300), (camera_get_view_y(view_get_camera(0)) + 158), 1, 1, 0, c_white, 0.2)
        if keyboard_check(global.saltar_spin)
            draw_sprite_ext(spr_nkey_z, 1, (camera_get_view_x(view_get_camera(0)) + 340), (camera_get_view_y(view_get_camera(0)) + 182), 1, 1, 0, c_white, 0.2)
        else
            draw_sprite_ext(spr_nkey_z, 0, (camera_get_view_x(view_get_camera(0)) + 340), (camera_get_view_y(view_get_camera(0)) + 182), 1, 1, 0, c_white, 0.2)
        if keyboard_check(global.lanzar_agarrar)
            draw_sprite_ext(spr_nkey_b, 1, (camera_get_view_x(view_get_camera(0)) + 337), (camera_get_view_y(view_get_camera(0)) + 51), 1, 1, 0, c_white, 0.2)
        else
            draw_sprite_ext(spr_nkey_b, 0, (camera_get_view_x(view_get_camera(0)) + 337), (camera_get_view_y(view_get_camera(0)) + 51), 1, 1, 0, c_white, 0.2)
        if (room != rm_editor)
            draw_sprite_ext(spr_nkey_pause, 0, (camera_get_view_x(view_get_camera(0)) + 184), (camera_get_view_y(view_get_camera(0)) + 193), 1, 1, 0, c_white, 0.2)
    }
}

