if(oGame.pauseTime = 0)
{
x = lerp(x,goalx,0.1);
y = lerp(y,goaly,0.1);
if(distance_to_point(goalx,goaly) < 3)
{
	image_alpha = lerp(image_alpha,0,0.05);	
}
if(image_alpha <= 0.01)
{
	instance_destroy();	
}
image_angle = lerp(image_angle,20*angledir,0.05);
image_xscale = lerp(image_xscale,2,0.05);
image_yscale = lerp(image_yscale,3,0.05);
}
