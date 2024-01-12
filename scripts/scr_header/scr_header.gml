function scr_header(argument0){
if argument0 = 1{
if obj_panel_expand.header = 1
	return 105;
else if obj_panel_expand.header = 2
	return 77;
else
	return 49;
}
else if argument0 = 2{
if  obj_panel_expand.header = 0
	return 260;
else if obj_panel_expand.header = 2
	return 105;
else
	return 77;
}
else if argument0 = 3{
if  obj_panel_expand.header = 0
	return 288;
else if  obj_panel_expand.header = 1
	return 260;
else
	return 105;
}
else if argument0 = 4{
if  obj_panel_expand.header = 0
	return 316;
else if  obj_panel_expand.header = 1
	return 288;
else if obj_panel_expand.header = 2
	return 260;
else
	return 0;
}

}