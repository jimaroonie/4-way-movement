/// @description add shadow

draw_sprite_ext(spr_bee_shadow, image_index, x, y, 1, 1, 0, c_white, 0.2);
draw_self();


if keyboard_check(ord("H")) {
	draw_circle(x, y, trigger_distance, true);
	draw_text(x, y, state);
}