/// @description (Old DnD) - set motion
/// @param dir direction
/// @param spd speed
function action_set_motion(argument0, argument1) {
	var dir = argument0;
	var spd = argument1;
	if (global.__argument_relative) {
		dir += direction;
		spd += speed;
	}  // end if
	direction = dir;
	speed = spd;



}
