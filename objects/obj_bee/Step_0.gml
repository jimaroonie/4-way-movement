/// @description 

#region debug

if keyboard_check_pressed(ord("P")) {
	if path_index == -1  {
		reset_idle_path();
	} else {
		path_end();
	}
}

#endregion

var px = obj_player.x;
var py = obj_player.y;

//switch
switch (state) {
	
    case "IDLE" :
		var dist = point_distance(x, y, px, py);
	    if dist < trigger_distance {
			path_end();
			state = "ALERT";
		}
	    break;
	
	case "ALERT" :
		counter ++;
		if counter >= alert_timer {
			counter = 0;
			direction = point_direction(x, y, px, py);
			state = "ATTACK";
		}
		break;
    
	case "ATTACK" :
		//move_towards_point(px, py, bee_attack_speed);
		speed = bee_attack_speed;
		var dir = point_direction(x, y, px, py);
		var diff = angle_difference(dir, direction);
		direction += diff * 0.1;
		direction += random(10) - 5;
		break;
}

//depth 
depth = -y;