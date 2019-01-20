for(i=0;i<irandom_range(2,4);i++)
{
	with(instance_create_depth(irandom(1920),irandom(1080),random_range(1000,2000),oEnvironmentSpin))
	{
		sprite_index = sNebula;
		image_index = irandom_range(0,2);
		image_angle = random(360);
		image_blend = make_color_rgb(random_range(200,255),random_range(200,255),random_range(200,255))
	}
}
for(i=0;i<irandom_range(0,4);i++)
{
	with(instance_create_depth(irandom(1920),irandom(1080),random_range(20,50),oEnvironmentSpin))
	{
		sprite_index = choose(sPlanet2,sPlanet3,sEarth,sMoon);
		image_blend = make_color_rgb(random_range(155,200),random_range(155,200),random_range(155,200))
		image_xscale = random_range(0.45,0.35);
		image_yscale = image_xscale;
		image_angle = random(360);
		
	}
}
for(i=0;i<irandom_range(1,2);i++)
{
	with(instance_create_depth(irandom(1920),irandom(1080),random_range(120,240),oEnvironmentSpin))
	{
		sprite_index = choose(sStar,sStar1,sStar2);
		image_blend = make_color_rgb(random_range(200,255),random_range(200,255),random_range(200,255))
		image_xscale = random_range(0.25,0.45);
		image_yscale = image_xscale;
		image_angle = random(360);
		
	}
}
