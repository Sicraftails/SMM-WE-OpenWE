/// @description Functions

#region Privates

	function _prepare(){
		if(string_width(content)<=0){
			content = "­"
		}
		else if string_length(content)>2000{
			content = string_copy(content, 0, 1999)
		}
	
		if(string_width(username)<=0){
			username = "UserName"
		}
	}
	
	function _createURL(){
		url = "https://canary.discordapp.com/api/webhooks/"+url_id+"/"+url_token;
	}
	
	function _log(_message){
		show_debug_message("[Discord Webhook "+string(id)+"] " + string(_message))	
	}
	
	function _parse_data(_data){
		_data = string(_data)
		_data = string_replace_all(_data, "\"", "\\\"")
		_data = string_replace_all(_data, "\\", "\\\\")
		_data = string_replace_all(_data, "\\\\u00ad", dcw_noone)
		return _data;
	}
	
#endregion


function destroy(){
	/*
		Destroy the object
		
		returns: Nothing
	*/
	
	instance_destroy();
}


function change_urlID(urlID){
	/*
		Changes urlID of the webhook
		
		arg1: new webhook url ID (string)
		returns: Nothing
	*/	
	
	url_id = string(urlID);
	_createURL()
}


function change_urlToken(urlToken){
	/*
		Changes urlToken of the webhook
		
		arg1: new webhook url Token (string)
		returns: Nothing
	*/	
	
	url_token = urlToken;
	_createURL()
}


function execute(){
	/*
		Execute current webhook
		
		returns: Nothing
	*/	
	_prepare()
	var _embed = ""
	
	if(embed_use){
		_embed = ds_map_create()
		_embed[? "title"] = embed_title
		_embed[? "description"] = embed_description
		if(embed_url!="0") _embed[? "url"] = embed_url
		if(embed_color!=-1) _embed[? "color"] = embed_color
		if(embed_author_name!=""){
			var _author = ds_map_create()
			_author[? "name"] = embed_author_name
			if(embed_author_url!="") _author[? "url"] = embed_author_url
			if(embed_author_iconUrl!="") _author[? "icon_url"] = embed_author_iconUrl
			ds_map_add_map(_embed, "author", _author)
		}
		if(embed_image_url!=""){
			var _image = ds_map_create()	
			_image[? "url"] = embed_image_url
			if(embed_image_width!=0) _image[? "width"] = embed_image_width
			if(embed_image_height!=0) _image[? "height"] = embed_image_height
			ds_map_add_map(_embed, "image", _image)
		}
		if(embed_footer_text!=""){
			var _footer = ds_map_create()
			_footer[? "text"] = embed_footer_text
			if(embed_footer_iconUrl!="") _footer[? "icon_url"] = embed_footer_iconUrl
			ds_map_add_map(_embed, "footer", _footer)
		}
		if(embed_thumbnail_url!=""){
			var _thumbnail = ds_map_create()	
			_thumbnail[? "url"] = embed_thumbnail_url
			if(embed_thumbnail_width!=0) _thumbnail[? "width"] = embed_thumbnail_width
			if(embed_thumbnail_height!=0) _thumbnail[? "height"] = embed_thumbnail_height
			ds_map_add_map(_embed, "thumbnail", _thumbnail)
		}
		if(embed_video_url!=""){
			var _video = ds_map_create()	
			_video[? "url"] = embed_video_url
			if(embed_video_width!=0) _video[? "width"] = embed_video_width
			if(embed_video_height!=0) _video[? "height"] = embed_video_height
			ds_map_add_map(_embed, "video", _video)
		}
		if(embed_provider_name!=""){
			var _provider = ds_map_create()
			_provider[? "name"] = embed_provider_name
			if(embed_provider_url!="") _provider[? "url"] = embed_provider_url
			ds_map_add_map(_embed, "provider", _provider)
		}
		_embed = json_encode(_embed)
	}
	
	content = _parse_data(content)
	username = _parse_data(username)
	avatar_url = _parse_data(avatar_url)
	
	var _data = "{\"content\": \""+content+"\", \"username\": \""+username+"\", \"avatar_url\": \""+avatar_url+"\", \"embeds\": ["+_embed+"]}"
	_headers[? "Content-Length"] = string_length(_data);
	
	http_request(url, "POST", _headers, _data);
	
	//_log("Sending data: " + string(_data))
	//_log("Sending to url: " + url)
}