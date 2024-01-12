function sha1_string_utf8_hmac(argument0, argument1) {
	var _key, _message, _block_size, _hash_size, _inner_size, _outer_size, _key_buffer, _inner_buffer, _outer_buffer, _sha1_key, _i, _key_byte, _sha1_inner, _result;
	_key = argument0
	_message = argument1
	_block_size = 64
	_hash_size = 20
	_inner_size = (_block_size + string_byte_length(_message))
	_outer_size = (_block_size + _hash_size)
	_key_buffer = buffer_create(_block_size, buffer_fixed, 1)
	_inner_buffer = buffer_create(_inner_size, buffer_fixed, 1)
	_outer_buffer = buffer_create(_outer_size, buffer_fixed, 1)
	if (string_byte_length(_key) > _block_size)
	{
	    _sha1_key = sha1_string_utf8(_key)
	    for (_i = 0; _i < _hash_size; _i++)
	        buffer_write(_key_buffer, buffer_u8, hex_string_byte(_sha1_key, _i))
	}
	else
	    buffer_write(_key_buffer, buffer_text, _key)
	for (_i = 0; _i < _block_size; _i++)
	{
	    _key_byte = buffer_peek(_key_buffer, _i, buffer_u8)
	    buffer_poke(_inner_buffer, _i, buffer_u8, (54 ^ _key_byte))
	    buffer_poke(_outer_buffer, _i, buffer_u8, (92 ^ _key_byte))
	}
	buffer_seek(_inner_buffer, buffer_seek_start, _block_size)
	buffer_write(_inner_buffer, buffer_text, _message)
	_sha1_inner = buffer_sha1(_inner_buffer, 0, _inner_size)
	buffer_seek(_outer_buffer, buffer_seek_start, _block_size)
	for (_i = 0; _i < _hash_size; _i++)
	    buffer_write(_outer_buffer, buffer_u8, hex_string_byte(_sha1_inner, _i))
	_result = buffer_sha1(_outer_buffer, 0, _outer_size)
	buffer_delete(_key_buffer)
	buffer_delete(_inner_buffer)
	buffer_delete(_outer_buffer)
	return _result;



}
