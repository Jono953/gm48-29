if(place_meeting(x,y,oColorBullet) or place_meeting(x,y,oPlayer))
{
	switch(type)
	{
	case 0:
		with(oEnemy)
		{
			image_blend = choose(oGame.red,oGame.yellow,oGame.blue);
		}
	break;
	case 1:
		with(oEnemy)
		{
			dead = true;	
		}
	break;
	case 2:
		with(oEnemy)
		{
			electric = true;
			hsp *= 0.25;
			vsp *= 0.25;
		}
	break;
	case 3:
		with(oEnemy)
			{
				image_blend = oGame.red;
			}
	break;
	case 4:
		with(oEnemy)
			{
				image_blend = oGame.yellow;
			}
	break;
	case 5:
		with(oEnemy)
			{
				image_blend = oGame.blue;
			}
	break;
	case 6:
		instance_create_depth(x,y,-30,oBuddy);
	break;
	case 7:
		with(oGame)
			{
				paintSplatterTime = 900;	
			}
	break;
	case 8:
		with(oGame)
			{
				speedBoostTime = 900;
			}
	break;
	}
	repeat(irandom_range(1,3))
	{
		instance_create_depth(x+random_range(-64,64),y+random_range(-64,64),-10,oPop);
	}
	add_score(2500,0.5);
	instance_destroy();
	oCamera.shake += 16;
}