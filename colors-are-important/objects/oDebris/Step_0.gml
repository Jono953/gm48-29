if(oGame.pauseTime = 0)
{
x += hsp;
y += vsp;
image_alpha = lerp(image_alpha,0,0.01);
if(image_alpha < 0.01)
{
	instance_destroy();	
}
depth = 0;
}