function scr_save(argument0) {
	var file;
	file = file_text_open_write(working_directory + "dsm_342.dat")
	file_text_write_string(file, base64_encode(string(global.lives)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(global.completed_levels)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(global.level_group)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(global.DSM_2)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(global.difficultyd)))
	file_text_writeln(file)
	file_text_write_string(file, base64_encode(string(argument0)))
	file_text_writeln(file)
    for (var i = 0; i < array_length(global.dsm_entorno); i++)
    {
        var theme = base64_encode(string(global.dsm_entorno[i]));
        file_text_write_string(file, theme); // Write the theme to the file
        file_text_writeln(file); // Move to the next line
    }
	file_text_close(file)
}
