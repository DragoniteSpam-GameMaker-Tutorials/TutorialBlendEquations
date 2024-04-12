draw_set_colour(#000000);
draw_rectangle(0, 0, room_width / 3, room_height, false);
draw_set_colour(#808080);
draw_rectangle(room_width / 3, 0, room_width * 2 / 3, room_height, false);
draw_set_colour(#ffffff);
draw_rectangle(room_width * 2 / 3, 0, room_width, room_height, false);

draw_sprite_ext(spr_tree, 0, 256, 256, 8, 8, 0, c_white, 1);
draw_sprite_ext(spr_tree, 0, 256 + room_width / 3, 256, 8, 8, 0, c_white, 1);
draw_sprite_ext(spr_tree, 0, 256 + room_width * 2 / 3, 256, 8, 8, 0, c_white, 1);

draw_sprite_ext(spr_duck, 0, mouse_x, mouse_y, 8, 8, 0, c_white, 1);