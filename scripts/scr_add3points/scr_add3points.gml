function scr_add3points(argument0, argument1, argument2) {
	var n_string, n_width, n_length, ntext, copy, new_string;
	n_string = argument0
	n_width = argument1
	n_length = argument2
	ntext = string_copy(n_string, 1, (string_length(n_string) - 4))
	if (string_width(string_hash_to_newline(ntext)) > n_width)
	{
	    copy = string_copy(ntext, 0, n_length)
	    new_string = (copy + "...")
	}
	else
	    new_string = ntext
	return new_string;



}
