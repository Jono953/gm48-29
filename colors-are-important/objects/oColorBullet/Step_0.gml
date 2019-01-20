if(hspeed != 0 or vspeed != 0)
{
	gthsp = hspeed;
	gtvsp = vspeed;
	hsp = 0;
	vsp = 0;
	hspeed = 0;
	vspeed = 0;
}
if(oGame.pauseTime = 0)
{
hsp = lerp(hsp,gthsp,0.1);
vsp = lerp(vsp,gtvsp,0.1);
x += hsp;
y += vsp;
}
time++;
if(time > 120)
{
	instance_destroy();
}