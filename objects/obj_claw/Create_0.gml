var i;
switch global.apariencia
{
    case 0:
        s_claw = spr_SMB_claw
        s_claw_chain = spr_SMB_claw_chain
        break
    case 1:
        s_claw = spr_SMB3_claw
        s_claw_chain = spr_SMB3_claw_chain
        break
    case 2:
        s_claw = spr_claw
        s_claw_chain = spr_claw_chain
        break
    case 3:
        s_claw = spr_NSMBU_claw
        s_claw_chain = spr_NSMBU_claw_chain
        break
}
base_x = x
base_y = (y - 41)
hold = 0
hold_obj = obj_lighting
posx = 0
posy = 0
hold_speed = 0
enemy = 0
release = 0
ready = 1
alarm[0] = 5
segmenten = 5
segmentlengte = 8
snelheidbaumgartefactor = 0.1
positiebaumgartefactor = 1
snelheiditeraties = 20
positieiteraties = 10
knoopmassa = 1
eindmassa = 5
zwaartekracht = 0.2
for (i = 0; i <= segmenten; i += 1)
{
    knopen_x[i] = base_x
    knopen_y[i] = (base_y + (i * segmentlengte))
    knopen_xspeed[i] = 0
    knopen_yspeed[i] = 0
    knopen_invmassa[i] = (1 / knoopmassa)
    knopen_r[i] = 3
}
knopen_invmassa[0] = 0
knopen_invmassa[segmenten] = (1 / eindmassa)
knopen_r[segmenten] = 10


