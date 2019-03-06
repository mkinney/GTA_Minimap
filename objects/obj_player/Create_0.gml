/// @description 
//camera
view_enabled = true;

view_visible[0] = true;

var width = 320;
var height = 240;
var scale = 3;

var cam;
cam = camera_create_view(0, 0, width, height, 0, obj_player, -1, -1, width/2, height/2);

view_set_camera(0, cam);

window_set_size(width*scale, height*scale);

surface_resize(application_surface, width*scale, height*scale);

//movement
hsp = 0; vsp = 0;