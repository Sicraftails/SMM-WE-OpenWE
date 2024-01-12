if ((!instance_exists(obj_settings_panel)) && !instance_exists(obj_edit_menu) && global.cursor == 0 && can_press == 1 && global.press_load == 0 && (!instance_exists(obj_gb_level)) && obj_guardabot.active == 1)
    room_restart()
