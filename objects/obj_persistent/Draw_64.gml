/// @description Deals with the application surface and fading
gpu_set_blendenable(0)
if shock_enabled
{
    shader_set(shd_shockwave)
    var_time_var += 0.03
}
shader_set_uniform_f(uni_time, var_time_var)
shader_set_uniform_f(uni_mouse_pos, var_mouse_pos_x, var_mouse_pos_y)
shader_set_uniform_f(uni_resolution, var_resolution_x, var_resolution_y)
shader_set_uniform_f(uni_shock_amplitude, var_shock_amplitude)
shader_set_uniform_f(uni_shock_refraction, var_shock_refraction)
shader_set_uniform_f(uni_shock_width, var_shock_width)
draw_surface_stretched(application_surface, 0, port_y, (global.gw * (filter + 1)), (global.gh * (filter + 1)))
shader_reset()
gpu_set_blendenable(1)
if (done < 1)
{
    done += (1/30)
    if (mode == 0)
        draw_set_alpha((1 - done))
    else
        draw_set_alpha(done)
    draw_set_color(c_black)
    draw_rectangle(0, 0, 5000, 5000, false)
    draw_set_alpha(1)
    draw_set_color(c_white)
}
if global.showfps && room != rm_logo && room != rm_intro && room != rm_credito
{
    draw_set_font(global.font_google)
    if (fps >= 60)
        draw_text_colour(2, 2, string_hash_to_newline((string(fps) + " FPS")), c_lime, c_lime, c_lime, c_lime, 1)
    else if (fps < 60)
        draw_text_colour(2, 2, string_hash_to_newline((string(fps) + " FPS")), c_yellow, c_yellow, c_yellow, c_yellow, 1)
    else if (fps < 30)
        draw_text_colour(2, 2, string_hash_to_newline((string(fps) + " FPS")), c_red, c_red, c_red, c_red, 1)
		
}