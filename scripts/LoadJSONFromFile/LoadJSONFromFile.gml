function LoadJSONFromFile(argument0) {
	var _filename, _buffer, _string, _expected_hash, _hashless_string, _new_hash, _string_code, _json;
	_filename = argument0
	_buffer = buffer_load(_filename)
	_string = buffer_read(_buffer, buffer_string)
	buffer_delete(_buffer)
	_expected_hash = string_copy(_string, (string_length(_string) - 39), 40)
	_hashless_string = string_copy(_string, 1, (string_length(_string) - 40))
	_new_hash = sha1_string_utf8_hmac(global.drez, _hashless_string)
	if (_expected_hash == _new_hash)
	{
	    _string_code = base64_decode(_hashless_string)
	    _json = json_decode(_string_code)
	    return _json;
	}
	else
	    return 0;



}
