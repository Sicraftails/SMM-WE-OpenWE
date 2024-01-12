/// @description draw_sprite_autotiled(sprite,x,y,iw,obj)
/// @param sprite
/// @param x
/// @param y
/// @param iw
/// @param object

function draw_sprite_autotiled2(argument0,argument1,argument2,argument3,argument4,argument5,argument6) {
	//GM Auto tile script
	//Original script by Nocturne, modifications by ShaunJS
	//Link to original script: http://gmc.yoyogames.com/index.php?showtopic=416796?st=0

	var spr,vx,vy,obj,obj2,obj3,tile,iw,w_left,w_right,w_up,w_down,w_upleft,w_downleft,w_upright,w_downright;

	spr = argument0;
	vx = argument1;
	vy = argument2;
	iw = argument3;
	obj = argument4;
	obj2 = argument5;
	obj3 = argument6;
	
	w_left      = (collision_point(vx-iw,vy,object_index,0,0) || collision_point(vx-iw,vy,obj,0,0) || collision_point(vx-iw,vy,obj2,0,0) || collision_point(vx-iw,vy,obj3,0,0));
	w_right     = (collision_point(vx+iw,vy,object_index,0,0) || collision_point(vx+iw,vy,obj,0,0) || collision_point(vx+iw,vy,obj2,0,0) || collision_point(vx+iw,vy,obj3,0,0));
	w_up        = (collision_point(vx,vy-iw,object_index,0,0) || collision_point(vx,vy-iw,obj,0,0) || collision_point(vx,vy-iw,obj2,0,0) || collision_point(vx,vy-iw,obj3,0,0));;
	w_down      = (collision_point(vx,vy+iw,object_index,0,0) || collision_point(vx,vy+iw,obj,0,0) || collision_point(vx,vy+iw,obj2,0,0) || collision_point(vx,vy+iw,obj3,0,0));
	w_upleft    = (collision_point(vx-iw,vy-iw,object_index,0,0) || collision_point(vx-iw,vy-iw,obj,0,0) || collision_point(vx-iw,vy-iw,obj2,0,0) || collision_point(vx-iw,vy-iw,obj3,0,0));
	w_downleft  = (collision_point(vx-iw,vy+iw,object_index,0,0) || collision_point(vx-iw,vy+iw,obj,0,0) || collision_point(vx-iw,vy+iw,obj2,0,0) || collision_point(vx-iw,vy+iw,obj3,0,0));
	w_upright   = (collision_point(vx+iw,vy-iw,object_index,0,0) || collision_point(vx+iw,vy-iw,obj,0,0) || collision_point(vx+iw,vy-iw,obj2,0,0) || collision_point(vx+iw,vy-iw,obj3,0,0));
	w_downright = (collision_point(vx+iw,vy+iw,object_index,0,0) || collision_point(vx+iw,vy+iw,obj,0,0) || collision_point(vx+iw,vy+iw,obj2,0,0) || collision_point(vx+iw,vy+iw,obj3,0,0));

	if (vx-iw < 0            ) {w_left = 1; w_upleft = 1; w_downleft = 1;}
	if (vx+iw > room_width-iw   ) {w_right = 1; w_upright = 1; w_downright = 1;}
	if (vy-iw < 0            ) {w_up = 1; w_upright = 1; w_upleft = 1;}
	if (vy+iw > room_height-iw  ) {w_down = 1; w_downright = 1; w_downleft = 1;}
	
	/*if sprite_get_number(spr) = 56 {
	if w_upleft && (!collision_point(vx-iw*2,vy-iw,object_index,0,0) || !collision_point(vx-iw*2,vy-iw,obj,0,0))
	w_upleft = 0
	if w_upright && (!collision_point(vx+iw*2,vy-iw,object_index,0,0) || !collision_point(vx+iw*2,vy-iw,obj,0,0))
	w_upright = 0
	if w_downleft && (!collision_point(vx-iw*2,vy+iw,object_index,0,0) || !collision_point(vx-iw*2,vy+iw,obj,0,0))
	w_downleft = 0
	if w_downright && (!collision_point(vx+iw*2,vy+iw,object_index,0,0) || !collision_point(vx+iw*2,vy+iw,obj,0,0))
	w_downright = 0
	}*/

	tile=44
	if(w_up)
	{
	 tile=0
	 if(w_right)
	 {
	  tile=4
	  if(w_down)
	  {
	   tile=12
	   if(w_left)
	   {
	    tile=28
	    if(w_upright)
	    {
	     tile=29
	     if(w_downright)
	     {
	      tile=33
	      if(w_downleft)
	      {
	       tile=39
	       if(w_upleft) {
			if variant = 0
			tile=43
			else
			tile = 46+variant
		   }
	      }
	      else if(w_upleft)tile=40
	     }
	     else if(w_downleft)
	     {
	      tile=37
	      if(w_upleft)tile=41
	     }
	     else if(w_upleft)tile=36
	    }
	    else if(w_downright)
	    {
	     tile=30
	     if(w_downleft)
	     {
	      tile=34
	      if(w_upleft)tile=42
	     }
	     else if(w_upleft)tile=38
	    }
	    else if(w_downleft)
	    {
	     tile=31
	     if(w_upleft)tile=35
	    }
	    else if(w_upleft)tile=32
	   }
	   else if(w_upright)
	   {
	    tile=16
	    if(w_downright)
		tile=18
	   }
	   else if(w_downright)tile=17
	  }
	  else if(w_left)
	  {
	   tile=15
	   if(w_upright)
	   {
	    tile=25
	    if(w_upleft)tile=27
	   }
	   else if(w_upleft)tile=26
	  }
	  else if(w_upright)tile=8
	 }
	 else if(w_down)
	 {
	  tile=45
	  if(w_left)
	  {
	   tile=14
	   if(w_downleft)
	   {
	    tile=22
	    if(w_upleft)tile=24
	   }
	   else if(w_upleft)tile=23
	  }
	 }
	 else if(w_left)
	 {
	  tile=7
	  if(w_upleft)tile=11
	 }
	}
	else if(w_right)
	{
	 tile=1
	 if(w_down)
	 {
	  tile=5
	  if(w_left)
	  {
	   tile=13
	   if(w_downright)
	   {
	   tile=19
	    if(w_downleft)tile=21
	   }
	   else if(w_downleft)tile=20
	  }
	  else if(w_downright)tile=9
	 }
	 else if(w_left)
	 {
	  tile=46
	 }
	}
	else if(w_down)
	{
	 tile=2
	 if(w_left)
	 {
	  tile=6
	  if(w_downleft)tile=10
	 }
	}
	else if(w_left)
	{
	 tile=3
	}
	image_index = tile
	sprite_index = spr
draw_sprite_stretched_ext(spr,image_index,vx,vy,16,16,-1,1)

}