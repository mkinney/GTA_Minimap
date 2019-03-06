/// @description 
if (!surface_exists(map_surface)){
	map_surface = surface_create(map_width, map_height);
}
if (!surface_exists(minimap_surface)){
	minimap_surface = surface_create(85, 85);
}