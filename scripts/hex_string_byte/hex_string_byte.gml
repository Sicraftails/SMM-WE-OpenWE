function hex_string_byte(argument0, argument1) {
	var _hex_string, _byte, _value, _high_char, _low_char;
	_hex_string = argument0
	_byte = argument1
	_value = 0
	_high_char = ord(string_char_at(_hex_string, ((2 * _byte) + 1)))
	_low_char = ord(string_char_at(_hex_string, ((2 * _byte) + 2)))
	if (_low_char >= 48 && _low_char <= 57)
	    _value += (_low_char - 48)
	else if (_low_char >= 97 && _low_char <= 102)
	    _value += (_low_char - 87)
	if (_high_char >= 48 && _high_char <= 57)
	    _value += ((_high_char - 48) << 4)
	else if (_high_char >= 97 && _high_char <= 102)
	    _value += ((_high_char - 87) << 4)
	return _value;



}
