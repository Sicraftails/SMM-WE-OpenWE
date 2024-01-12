function scr_restart() {
// Reset the level variables and restart the room
global.coins = 0
score = 0
global.powerup = 0
global.timer = 0
global.onoffblock = 0
global.liveleves = 0
global.keys = 0
global.ms = 0
room_restart()
}