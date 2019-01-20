image_index = irandom_range(0,2)
image_xscale = 0;
image_yscale = 0;
xgoal = random_range(1,2);
ygoal = random_range(1,2);
image_angle = random_range(-180,180);
oCamera.shake += 10;
image_blend = make_color_rgb(random_range(170,255),random_range(170,255),random_range(170,255))