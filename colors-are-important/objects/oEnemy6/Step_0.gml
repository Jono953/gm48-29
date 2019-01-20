if(oGame.pauseTime = 0)
{
if(refreshTime = 0)
{	
	if(irandom(100) > 40){
		for(i=0;i<10;i++){
			with(instance_create_depth(x,y,-10,oEnemyBullet))
			{
				sprite_index = sBullet1;
			}
		}
	}
	else
	{
		instance_create_depth(x,y,-10,oEnemyBullet);
	}
	teleportStart = true;
	teleportFinish = false;
	refreshTime = 300;
	respond = false;
	if(irandom(1000) > 950)
	{
		instance_create_depth(x,y,-10,oEnemy5);	
	}
}

if(refreshTime > 0)
{
	refreshTime--;	
}

blasterScale = lerp(blasterScale,abs(sin(time/32)/4+0.5)*image_xscale,0.1);
time++;
x += hsp;
y += vsp;
if(teleportStart)
{
	image_xscale = lerp(image_xscale,0,0.1);
}
if(image_xscale < 0.01)
{
	teleportStart = false;
	x = irandom(1920);
	y = irandom(1080);
	teleportFinish = true;
}
if(teleportFinish)
{
	image_xscale = lerp(image_xscale,1,0.1);
}
if(place_meeting(x,y,oColorBullet))
{
	if(instance_nearest(x,y,oColorBullet).image_blend = image_blend)
	{
		oGame.pauseTime += 1;
		with(instance_nearest(x,y,oColorBullet))
		{
			instance_destroy();	
		}
		if(hp > 0)
		{
		image_blend = choose(oGame.red,oGame.orange,oGame.yellow,oGame.green,oGame.blue,oGame.purple);
		add_score(250,0.1);
		hp--;
		}
		else
		{
		dead = true;	
		}
	}
}
if(oGame.bonusTime > 0 and !respond)
{
	hsp /= 2;
	vsp /= 2;
	respond = true;
}
else if(oGame.bonusTime = 0 and respond)
{
	hsp *= 2;
	vsp *= 2;
	respond = false;	
}
if(dead)
{
	image_alpha = lerp(image_alpha,0,0.025);
	image_angle = lerp(image_angle,180,0.025);
	hsp = lerp(hsp,0,0.2);
	vsp = lerp(vsp,0,0.2);
	refreshTime = 9;
	
		if(irandom(100) > 90)
	{
		instance_create_depth(x+random_range(-128,128),y+random_range(-128,128),-100,oExplosion);
	}
}
if(image_alpha < 0.01)
{	
	if(oGame.bonusTime > 0)
	{
		oGame.bonusTime += 60;	
	}
	instance_create_depth(x,y,-10,oPowerUp);	
	add_score(4000,2);
	oGame.kills += 20;	
	instance_create_depth(x,y,-10,oBam);
	for(i=0;i<16;i++)
	{
		instance_create_depth(x+random_range(-256,256),y+random_range(-256,256),-100,oExplosion);
		instance_create_depth(x,y,-10,oDebris);
	}
	instance_destroy();	

}
}