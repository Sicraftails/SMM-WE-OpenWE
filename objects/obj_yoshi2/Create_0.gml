if (global.apariencia != 2)
{
    instance_destroy()
    exit
}
global.yoshi = 1
color = 0
turn = 0
turning = 0
licking = 0
locked = 0
direct = 1
sprite_mario = 0
index_mario = 0
x_mario = 0
y_mario = 0
mouthholder = noone
mouthsprite = noone
mouthnumb = 0
powerup = noone
berry = noone
anim = 0
jumping = 0
flying = 0
flyanim = 0
flutter = 0
fluttertime = 0
f = 0
myy = 0
stateprev = 0
wings = 1
jump = 0
if (global.carrieditem != noone)
{
    mouthholder = global.carrieditem
    global.carrieditem = noone
    mouthsprite = global.carriedsprite
    global.carritedsprite = noone
}
s_yoshi_jump = spr_yoshi_jump
s_yoshi_swallow = spr_yoshi_swallow
s_yoshi_lick = spr_yoshi_lick
s_yoshi_fm_wait = spr_yoshi_fm_wait
s_yoshi_wait = spr_yoshi_wait
s_yoshi_fm = spr_yoshi_fm
s_yoshi = spr_yoshi
s_yoshi_fm_jump = spr_yoshi_fm_jump

