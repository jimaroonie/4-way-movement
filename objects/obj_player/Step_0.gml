//check for input
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

//calculate movement
x_speed = right - left;
y_speed = down - up;

//normalise
if x_speed != 0 && y_speed != 0 {
	var dist = point_distance(0, 0, x_speed, y_speed);
	x_speed = x_speed / dist;
	y_speed = y_speed / dist;
}

x_speed = x_speed * move_speed;
y_speed = y_speed * move_speed;

//animate sprite
if x_speed != 0 || y_speed != 0 {
	sprite_index = spr_run;
} else {
	sprite_index = spr_idle;
}

if x_speed < 0 {
	//image_xscale = -1;
	scale_target = -1;
} else if x_speed > 0 {
	//image_xscale = 1;
	scale_target = 1;
}

x_scale = approach(x_scale, scale_target, 0.4);

//update position
//x += x_speed;
//y += y_speed;

//move and collide
move_and_collide(x_speed, y_speed, all);

//change depth
depth = -y;