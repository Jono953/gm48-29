if(x < oPlayer.x)
{
	image_xscale = 1;	
}
else
{
	image_xscale = -1;	
}
x += hsp;
y += vsp;
if(place_meeting(x,y,oColorBullet))
{
	if(instance_nearest(x,y,oColorBullet).image_blend = image_blend)
	{
		with(instance_nearest(x,y,oColorBullet))
		{
			instance_destroy();	
		}
		instance_destroy();	
		oGame.scr += 500 * oGame.multi;
		oGame.multi += 0.1;
	}
}