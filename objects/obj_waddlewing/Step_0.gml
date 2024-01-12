event_inherited()
//Jump and fly
event_user(6)
//Check for a wall collision
event_user(8)

if gravity != 0 and doublejump != 1{
	doublejump = 2
	fly_anim = 1
	hspeed = (0.5 * direct)
	hspeed += 0.6*direct
}