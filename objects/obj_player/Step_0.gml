/// @description 
var hor, ver;
hor = (keyboard_check(ord("D"))-keyboard_check(ord("A")))*10;
ver = (keyboard_check(ord("W"))-keyboard_check(ord("S")))*3;

vsp = lerp(vsp, ver, 0.05);

//if (ver<0) hor = hor-(hor*2);

speed = vsp;

direction = lerp(direction, direction-(hor*vsp), 0.2);

image_angle = direction;