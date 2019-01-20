if(oGame.pauseTime = 0)
{
	x += hsp;
	y += vsp;
	if(place_meeting(x,y,oBad))
	{
		if(!instance_nearest(x,y,oBad).dead)
		{
			with(instance_nearest(x,y,oBad))
			{
				image_blend = instance_nearest(x,y,oColorSplatter).image_blend;
			}
			instance_destroy();
		}
	}
}