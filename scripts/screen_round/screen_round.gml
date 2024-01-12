/// @func screen_round(value)
/// @desc Rounds value to decimal that matches screen size
/// @param {real} value What to round to screen

function screen_round(value) {
		return round(value * 4 / 4);
}