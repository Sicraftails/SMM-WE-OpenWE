function string_split2(argument0, argument1, argument2) {
	var substr, str, substrl, slot, d_pos, d_count, i, copy, array_sample;
	     substr = argument0
	     str = argument1
	     substrl = string_length(substr)
	     slot = 0
	     d_pos = 0
	     d_count = string_count(substr, str)
	    str += substr
	    for (var i = 0; i <= d_count; i++)
	    {
	        d_pos = (string_pos(substr, str) + (substrl - 1))
	        var copy = string_copy(str, 1, (d_pos - substrl))
	        if (copy != "" || argument2 == 0)
	            array_sample[(i - slot)] = copy
	        else
	            slot++
	        str = string_delete(str, 1, d_pos)
	    }
	    return array_sample;





}
