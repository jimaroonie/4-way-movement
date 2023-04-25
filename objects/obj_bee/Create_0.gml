/// @description ini

bee_idle_speed = 2;
bee_attack_speed = 6;
trigger_distance = 120;
counter = 0;
alert_timer = 60;
attack_timer = 5 * 60;
ignore_timer = 2 * 60;
state = "IDLE";

//random image index
var total_frames = image_number - 1;
image_index = irandom(total_frames);

//move along path
bee_path = pth_circle;

function reset_idle_path()
{
	path_start(bee_path, bee_idle_speed, path_action_continue, false);
	path_orientation = random(360);
	var reverse = choose(-1, 1);
	path_speed *= reverse;
}

reset_idle_path();