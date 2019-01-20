if(oGame.pauseTime = 0)
{
	if(irandom(10000) > 9950)
	{
		xOffset = random_range(-150,150);
		yOffset = random_range(-150,150);	
	}
	x = lerp(x,oPlayer.x+(xOffset*oPlayer.image_xscale),0.01);
	y = lerp(y,oPlayer.y+(yOffset),0.01);
	image_xscale = oPlayer.image_xscale/2;
	blasterScale = lerp(blasterScale,(abs(sin(time/32)/16)+abs(oPlayer.hsp/4)+abs(oPlayer.vsp/8))*image_xscale,0.1);
	time++;
	timerShoot++;
	if(timerShoot >= 240)
	{
		if(instance_exists(oColorOnMouse))
		{
		color = oPlayer.pointerIconBlend;
			if(instance_nearest(x,y,oBad).image_blend = color)
				{
					with(instance_create_depth(x,y,-10,oColorBullet))
					{
						image_blend = instance_nearest(x,y,oBuddy).color;
						image_angle = point_direction(x,y,instance_nearest(x,y,oBad).x,instance_nearest(x,y,oBad).y);
						move_towards_point(instance_nearest(x,y,oBad).x,instance_nearest(x,y,oBad).y,32);
					}	
				}	
		}
		else if(instance_exists(oBad))
		{
			color = baseColor;
			if(instance_nearest(x,y,oBad).image_blend = color)
			{
				with(instance_create_depth(x,y,-10,oColorBullet))
				{
					image_blend = instance_nearest(x,y,oBuddy).color;
					image_angle = point_direction(x,y,instance_nearest(x,y,oBad).x,instance_nearest(x,y,oBad).y);
					move_towards_point(instance_nearest(x,y,oBad).x,instance_nearest(x,y,oBad).y,32);
				}	
			}
		}
		timerShoot = 0;
	}
	if(place_meeting(x,y,oEnemyBullet))
	{
		hp--;
		with(instance_nearest(x,y,oEnemyBullet))
		{
			instance_destroy();	
		}
	}
	if(hp <= 0)
	{
		instance_create_depth(x,y,-10,oPop);
		instance_destroy();	
	}
}