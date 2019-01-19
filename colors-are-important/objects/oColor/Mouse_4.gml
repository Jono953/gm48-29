with(instance_create_depth(x,y,-10,oColorOnMouse))
{
	image_blend = instance_nearest(x,y,oColor).image_blend;	
	startColor = image_blend;
	startx = instance_nearest(x,y,oColor).x;
	starty = instance_nearest(x,y,oColor).y;
}
instance_destroy();