if(!done)
{
x = lerp(x,0,0.1);
}
else
{
x = lerp(x,-1920,0.1);	
}
if(x >= -8)
{
	room_goto(whereTo);	
	done = true;
}
if(x < -1912 and done)
{
instance_destroy();	
}