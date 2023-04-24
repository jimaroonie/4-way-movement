/// @description debug rooms

var back = keyboard_check_pressed(ord("B"));
var next = keyboard_check_pressed(ord("N"));

if next {
	if room_exists(room_next(room)) {
		room_goto_next();
	} else {
		room_goto(room_first);
	}
}

if back {
	if room_exists(room_previous(room)) {
		room_goto_previous();
	} else {
		room_goto(room_last);
	}
}