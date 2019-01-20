hsp = lerp(hsp,gthsp,0.05);
vsp = lerp(vsp,gtvsp,0.05);
x += hsp;
y += vsp;
time++;
if(time > 480)
{
	instance_destroy();	
}
if(place_meeting(x,y,oColorBullet))
{
	add_score(50,0);
	instance_destroy();
	instance_create_depth(x,y,-10,oPop);
}