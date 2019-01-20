dscr = lerp(dscr,scr,0.1);
if(mouse_wheel_down())
{
	scr -= 500;	
}
if(mouse_wheel_up())
{
	scr += 500;	
}
if(scr > nextlv)
{
	lvs++;
	nextlv += 7500 * lvs;
}

if(pauseTime > 0)
{
pauseTime--;	
}
if(keyboard_check_pressed(ord("P")))
{
	if(pauseMode)
	{
		pauseMode = false;	
	}
	else
	{
		pauseMode = true;	
	}
}
if(pauseMode)
{
pauseTime = 3;	
}
if(keyboard_check_pressed(ord("R")))
{
	room_restart();
}
if(!instance_exists(oBad) and !levelComplete)
{
	levelComplete = true;
	level++;
}
if(levelComplete)
{
switch(level)
{
	case 2:	
		for(i=0;i<3;i++)
		{
			instance_create_depth(0,0,-10,oEnemy3);	
		}
		instance_create_depth(0,0,-10,oEnemy2);
	break;
	case 3:
		for(i=0;i<3;i++)
		{
			instance_create_depth(0,0,-10,oEnemy);	
		}
		for(i=0;i<5;i++)
		{
			instance_create_depth(0,0,-10,oEnemy3);	
		}
		instance_create_depth(0,0,-10,oEnemy2);
	break;
	case 4:
	
	break;
	case 5:

	break;
	case 6:
	
	break;
	case 7:
	
	break;
	default:
	
	break;
}
levelComplete = false;
}