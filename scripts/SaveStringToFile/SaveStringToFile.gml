function SaveStringToFile(argument0, argument1) {
	var _filename, _string, _buffer;
	_filename = argument0
	_string = argument1
	_buffer = buffer_create((string_byte_length(_string) + 1), buffer_fixed, 1)
	buffer_write(_buffer, buffer_string, _string)
	buffer_save(_buffer, _filename)
	buffer_delete(_buffer)



}
