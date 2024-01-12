var blend;
if (cp < 2)
    cp++
else
    cp = 0
blend = color[cp]
if instance_exists(obj_mario) {
if (obj_mario.visible == true)
        obj_mario.blend_star = blend
alarm[3] = 5
}
else
	exit
	