x = mouse_x;
y = mouse_y;
if(mouse_check_button_released(mb_left))
{
	with(instance_create_depth(startx,starty,-10,oColor))
	{
		image_blend = oColorOnMouse.startColor;
	}
	oColor.image_alpha = 1;
	with(instance_create_depth(oPlayer.x,oPlayer.y,-10,oColorBullet))
	{
		image_blend = oColorOnMouse.image_blend;
		move_towards_point(oColorOnMouse.x,oColorOnMouse.y,32);
	}
	instance_destroy();
}
if(place_meeting(x,y,oColor))
{
	colorOther = instance_nearest(x,y,oColor).image_blend;
	if((image_blend = oGame.yellow and colorOther = oGame.red) or (colorOther = oGame.yellow and image_blend = oGame.red))
	{
		image_blend = oGame.orange;
		with instance_nearest(x,y,oColor)
		{
			image_alpha = 0;	
		}
	}
	if((image_blend = oGame.yellow and colorOther = oGame.blue) or (colorOther = oGame.yellow and image_blend = oGame.blue))
	{
		image_blend = oGame.green;
		with instance_nearest(x,y,oColor)
		{
			image_alpha = 0;	
		}
	}
	if((image_blend = oGame.red and colorOther = oGame.blue) or (colorOther = oGame.red and image_blend = oGame.blue))
	{
		image_blend = oGame.purple;
		with instance_nearest(x,y,oColor)
		{
			image_alpha = 0;	
		}
	}
}