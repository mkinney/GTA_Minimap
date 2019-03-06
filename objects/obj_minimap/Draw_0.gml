/// @description 
//draw to map surface
surface_set_target(map_surface);
//draw minimap
draw_sprite(spr_minimap, 0, 0, 0);
//draw player icon
draw_sprite_ext(spr_player_icon, 0, map_player_x, map_player_y, 1, 1, obj_player.image_angle, c_white, 1);

surface_reset_target();

//draw map to surface
var map_size_x = surface_get_width(minimap_surface);
var map_size_y = surface_get_height(minimap_surface);
var map_x = map_player_x-map_size_x/2;
var map_y = map_player_y-map_size_y/2;

map_x = clamp(map_x, 0, map_width-map_size_x);
map_y = clamp(map_y, 0, map_height-map_size_y);

surface_set_target(minimap_surface);

draw_sprite(spr_circle, 0, 0, 0);

gpu_set_blendmode_ext(bm_dest_color, bm_zero);
draw_surface_part(map_surface, map_x, map_y, map_size_x, map_size_y, 0, 0);
gpu_set_blendmode(bm_normal);

surface_reset_target();