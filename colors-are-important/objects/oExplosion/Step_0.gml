if(oGame.pauseTime = 0)
{
image_xscale = lerp(image_xscale,xgoal,0.2);
image_yscale = lerp(image_yscale,ygoal,0.2);
if(abs(xgoal) - abs(image_xscale) < 0.025)
{
image_alpha = lerp(image_alpha,0,0.025);	
}
if(image_alpha < 0.01)
{
instance_destroy();	
}
}