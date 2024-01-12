function discord_init_dll() {
	dll = "discord-rpc-main.dll"
	global.__d_init = external_define(dll, "InitDiscord", 0, 0, 1, 1)
	global.__d_update = external_define(dll, "UpdatePresence", 0, 0, 4, 1, 1, 1, 1)
	global.__d_free = external_define(dll, "FreeDiscord", 0, 0, 0)



}
