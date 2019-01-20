if(!instance_exists(oTransition))
{
	with(instance_create_depth(x,y,-100,oTransition))
	{
		whereTo = rm_credits;	
	}
}
sound(choose(button1,button2,button3,button4,button5));
