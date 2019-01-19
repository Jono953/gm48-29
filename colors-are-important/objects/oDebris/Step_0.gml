x += hsp;
y += vsp;
image_alpha = lerp(image_alpha,0,0.0025);
if(image_alpha < 0.01)
{
	instance_destroy();	
}
depth = 0;