if(oGame.paintSplatterTime > 0)
{
	for(i=0;i<irandom_range(1,4);i++)
	{
		with(instance_create_depth(x,y,-10,oColorSplatter))
		{
			image_blend = instance_nearest(x,y,oColorBullet).image_blend;	
		}
	}
}
instance_create_depth(x,y,-100,oPop);