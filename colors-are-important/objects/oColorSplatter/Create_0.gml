image_xscale = 0.7;
image_yscale = 0.7;
gtx = random_range(0,1920);
gty = random_range(0,1080);
image_angle = point_direction(x,y,gtx,gty);
move_towards_point(gtx,gty,8);
hsp = hspeed;
vsp = vspeed;
hspeed = 0;
vspeed = 0;