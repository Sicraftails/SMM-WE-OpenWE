if (global.pp == 0)
{
	if global.controller == 1{
    for (var gp_count = 0; gp_count < 5; gp_count += 1)
    {
        if gamepad_is_connected(gp_count)
        {
            if (gp_stick[gp_count][0] == 0 && gamepad_axis_value(gp_count, gp_axislv) <= -0.5)
            {
                gp_stick[gp_count][0] = 1
                keyboard_key_press(global.arriba)
            }
            else if (gp_stick[gp_count][0] == 1 && gamepad_axis_value(gp_count, gp_axislv) > -0.5)
            {
                gp_stick[gp_count][0] = 0
                keyboard_key_release(global.arriba)
            }
            if (gp_stick[gp_count][1] == 0 && gamepad_axis_value(gp_count, gp_axislv) >= 0.5)
            {
                gp_stick[gp_count][1] = 1
                keyboard_key_press(global.abajo)
            }
            else if (gp_stick[gp_count][1] == 1 && gamepad_axis_value(gp_count, gp_axislv) < 0.5)
            {
                gp_stick[gp_count][1] = 0
                keyboard_key_release(global.abajo)
            }
            if (gp_stick[gp_count][2] == 0 && gamepad_axis_value(gp_count, gp_axislh) <= -0.5)
            {
                gp_stick[gp_count][2] = 1
                keyboard_key_press(global.izquierda)
            }
            else if (gp_stick[gp_count][2] == 1 && gamepad_axis_value(gp_count, gp_axislh) > -0.5)
            {
                gp_stick[gp_count][2] = 0
                keyboard_key_release(global.izquierda)
            }
            if (gp_stick[gp_count][3] == 0 && gamepad_axis_value(gp_count, gp_axislh) >= 0.5)
            {
                gp_stick[gp_count][3] = 1
                keyboard_key_press(global.derecha)
            }
            else if (gp_stick[gp_count][3] == 1 && gamepad_axis_value(gp_count, gp_axislh) < 0.5)
            {
                gp_stick[gp_count][3] = 0
                keyboard_key_release(global.derecha)
            }
            if gamepad_button_check(gp_count, gp_padu)
                keyboard_key_press(global.arriba)
            else if gamepad_button_check_released(gp_count, gp_padu)
                keyboard_key_release(global.arriba)
            if gamepad_button_check(gp_count, gp_padd)
                keyboard_key_press(global.abajo)
            else if gamepad_button_check_released(gp_count, gp_padd)
                keyboard_key_release(global.abajo)
            if gamepad_button_check(gp_count, gp_padl)
                keyboard_key_press(global.izquierda)
            else if gamepad_button_check_released(gp_count, gp_padl)
                keyboard_key_release(global.izquierda)
            if gamepad_button_check(gp_count, gp_shoulderl)
                keyboard_key_press(global.saltar_spin)
            else if gamepad_button_check_released(gp_count, gp_shoulderl)
                keyboard_key_release(global.saltar_spin)
            if gamepad_button_check(gp_count, gp_shoulderlb)
                keyboard_key_press(global.saltar_spin)
            else if gamepad_button_check_released(gp_count, gp_shoulderlb)
                keyboard_key_release(global.saltar_spin)
            if gamepad_button_check(gp_count, gp_padr)
                keyboard_key_press(global.derecha)
            else if gamepad_button_check_released(gp_count, gp_padr)
                keyboard_key_release(global.derecha)
            if gamepad_button_check(gp_count, gp_shoulderr)
                keyboard_key_press(global.saltar_spin)
            else if gamepad_button_check_released(gp_count, gp_shoulderr)
                keyboard_key_release(global.saltar_spin)
            if gamepad_button_check(gp_count, gp_shoulderrb)
                keyboard_key_press(global.saltar_spin)
            else if gamepad_button_check_released(gp_count, gp_shoulderrb)
                keyboard_key_release(global.saltar_spin)
            if (gp_count == 4)
            {
                if gamepad_button_check_pressed(gp_count, gp_face1)
                    keyboard_key_press(global.lanzar_agarrar)
                else if gamepad_button_check_released(gp_count, gp_face1)
                    keyboard_key_release(global.lanzar_agarrar)
                if gamepad_button_check_pressed(gp_count, gp_face4)
                    keyboard_key_press(global.lanzar_agarrar)
                else if gamepad_button_check_released(gp_count, gp_face4)
                    keyboard_key_release(global.lanzar_agarrar)
                if gamepad_button_check_pressed(gp_count, gp_select)
                    keyboard_key_press(vk_space)
                else if gamepad_button_check_released(gp_count, gp_select)
                    keyboard_key_release(vk_space)
                if gamepad_button_check_pressed(gp_count, gp_face2)
                    keyboard_key_press(global.saltar)
                else if gamepad_button_check_released(gp_count, gp_face2)
                    keyboard_key_release(global.saltar)
                if gamepad_button_check_pressed(gp_count, gp_start)
                    keyboard_key_press(vk_return)
                else if gamepad_button_check_released(gp_count, gp_start)
                    keyboard_key_release(vk_return)
                if gamepad_button_check_pressed(gp_count, gp_face3)
                    keyboard_key_press(global.saltar)
                else if gamepad_button_check_released(gp_count, gp_face3)
                    keyboard_key_release(global.saltar)
            }
            else
            {
                if gamepad_button_check_pressed(gp_count, gp_face3)
                    keyboard_key_press(global.lanzar_agarrar)
                else if gamepad_button_check_released(gp_count, gp_face3)
                    keyboard_key_release(global.lanzar_agarrar)
                if gamepad_button_check_pressed(gp_count, gp_face4)
                    keyboard_key_press(global.lanzar_agarrar)
                else if gamepad_button_check_released(gp_count, gp_face4)
                    keyboard_key_release(global.lanzar_agarrar)
                if gamepad_button_check_pressed(gp_count, gp_select)
                    keyboard_key_press(vk_space)
                else if gamepad_button_check_released(gp_count, gp_select)
                    keyboard_key_release(vk_space)
                if gamepad_button_check_pressed(gp_count, gp_face2)
                    keyboard_key_press(global.saltar)
                else if gamepad_button_check_released(gp_count, gp_face2)
                    keyboard_key_release(global.saltar)
                if gamepad_button_check_pressed(gp_count, gp_start)
                    keyboard_key_press(vk_return)
                else if gamepad_button_check_released(gp_count, gp_start)
                    keyboard_key_release(vk_return)
                if gamepad_button_check_pressed(gp_count, gp_face1)
                    keyboard_key_press(global.saltar)
                else if gamepad_button_check_released(gp_count, gp_face1)
                    keyboard_key_release(global.saltar)
            }
        }
    }
}
}