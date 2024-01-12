#macro dcw_noone "\\u00ad"

function discord_webhook(url_id, url_token){
	/*
		Creates a new webhook object
		
		arg1: Webhook ID
		arg2: Webhook Token
		return: Wbhook object ID
	*/
	url_id = string(url_id)
	url_token = string(url_token)

	var _inst = instance_create_depth(0,0,0,obj_dcw);

	_inst.url_id = url_id
	_inst.url_token = url_token
	with(_inst){
		event_user(0)	
	}

	return _inst;
}