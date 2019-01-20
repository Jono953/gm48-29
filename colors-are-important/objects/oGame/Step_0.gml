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
	nextlv += 10000 * multi;
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