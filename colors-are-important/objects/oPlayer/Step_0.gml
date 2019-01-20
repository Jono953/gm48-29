if(oGame.pauseTime = 0)
{
blasterScale = lerp(blasterScale,(abs(sin(time/32)/16)+abs(hsp/4)+abs(vsp/8))*image_xscale,0.1);
time++;
if(hsp > 0)
{
image_xscale = 1;	
}
else if(hsp < 0)
{
image_xscale = -1;	
}
if((place_meeting(x,y,oEnemy) or place_meeting(x,y,oEnemyBullet)) and invun = 0)
{
	oGame.lvs -= 1;
	oGame.multi = 1;
	invun = 150;
}
if(invun > 0)
{

	if(image_alpha = 1)
	{
		image_alpha = 0;	
	}
	else
	{
		image_alpha = 1;	
	}
	invun--;	
}
else
{
	image_alpha = 1;	
}
if(mouse_check_button_pressed(mb_left) and !instance_exists(oColorOnMouse))
{
	gtx = mouse_x;
	gty = mouse_y;
	move_towards_point(gtx,gty,spd);
	hsp = hspeed;
	vsp = vspeed;
	hspeed = 0;
	vspeed = 0;
}
x += hsp;
y += vsp;
if(distance_to_point(gtx,gty) < 50)
{
hsp = lerp(hsp,0,0.05);
vsp = lerp(vsp,0,0.05);
}
with(oEnvironmentSpin)
{
	x += oPlayer.hsp / abs(depth/4);
	y += oPlayer.vsp / abs(depth/4);
}
moveRot += 2;
}