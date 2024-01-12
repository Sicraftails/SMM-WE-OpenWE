/// @description Create

_headers = ds_map_create()
_headers[? "Content-Type"] = "application/json";
_headers[? "Host"] = "canary.discordapp.com";

_createURL();
