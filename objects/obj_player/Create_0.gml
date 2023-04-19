randomize();

move_speed = 6;
x_speed = 0;
y_speed = 0;

x_scale = 1;
scale_target = 1;

function approach(current, target, amount) {
	if (current < target) {
		return min(current + amount, target);
	} else {
		return max(current - amount, target);
	}
}