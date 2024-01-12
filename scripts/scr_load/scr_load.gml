function scr_load() {
	var file = file_text_open_read("dsm_342.dat")
	global.lives = real(base64_decode(file_text_read_string(file)))
	file_text_readln(file)
	global.completed_levels = real(base64_decode(file_text_read_string(file)))
	file_text_readln(file)
	global.level_group = real(base64_decode(file_text_read_string(file)))
	file_text_readln(file)
	global.DSM_2 = real(base64_decode(file_text_read_string(file)))
	file_text_readln(file)
	global.difficultyd = real(base64_decode(file_text_read_string(file)))
	file_text_readln(file)
	global.difficulty = real(base64_decode(file_text_read_string(file)))
	file_text_readln(file)
    for (var i = 0; i < array_length(global.dsm_entorno); i++)
    {
        var theme = global.dsm_entorno[i];
		global.dsm_entorno[i] = base64_decode(file_text_read_string(file))
		file_text_readln(file)
    }
	file_text_close(file)
}
