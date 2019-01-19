shakex = random_range(-shake,shake);
shakey = random_range(-shake,shake);
shake = lerp(shake,0,0.1);
vm = matrix_build_lookat(x+shakex,y+shakey,-10,x+shakex,y+shakey,0,0,1,0);
pm = matrix_build_projection_ortho(1920,1080,-10000,10000);
camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);