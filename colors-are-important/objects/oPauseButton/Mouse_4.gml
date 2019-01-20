if(oGame.pauseMode = false)
{
	oGame.pauseMode = true;	
}
else
{
	oGame.pauseMode = false;		
}
if(image_xscale = 1)
{
	image_xscale = 8;
	x = 960;
	y = 540;
}
else
{
	image_xscale = 1;	
	x = 30;
	y = 1056;
}
image_yscale = image_xscale;