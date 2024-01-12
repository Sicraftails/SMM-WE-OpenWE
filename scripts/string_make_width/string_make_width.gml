function string_make_width(argument0, argument1) {
	var str, length, ret, i, word, ret2;
	str = (argument0 + " ")
	length = string_count(" ", str)
	ret = ""
	for (i = 0; i < length; i++)
	{
	    word = string_copy(str, 1, (string_pos(" ", str) - 1))
	    str = string_copy(str, (string_pos(" ", str) + 1), string_length(str))
	    ret2 = ((ret + word) + " ")
	    if (string_width(string_hash_to_newline(ret2)) > argument1)
	        ret2 = (((ret + "#") + word) + " ")
	    ret = ret2
	}
	return ret;



}
