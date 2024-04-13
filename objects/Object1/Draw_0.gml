draw_set_colour(#000000);
draw_rectangle(0, 0, room_width / 3, room_height, false);
draw_set_colour(#808080);
draw_rectangle(room_width / 3, 0, room_width * 2 / 3, room_height, false);
draw_set_colour(#ffffff);
draw_rectangle(room_width * 2 / 3, 0, room_width, room_height, false);

draw_sprite_ext(spr_tree, 0, 256, 256, 8, 8, 0, c_white, 1);
draw_sprite_ext(spr_tree, 0, 256 + room_width / 3, 256, 8, 8, 0, c_white, 1);
draw_sprite_ext(spr_tree, 0, 256 + room_width * 2 / 3, 256, 8, 8, 0, c_white, 1);

if (keyboard_check_pressed(vk_tab)) {
    current_equation = ++current_equation % array_length(equations);
}

gpu_set_blendmode(bm_add);
gpu_set_blendequation_sepalpha(equations[current_equation], bm_eq_add);
draw_sprite_ext(spr_duck, 0, mouse_x, mouse_y, 8, 8, 0, c_white, 1);
gpu_set_blendequation(bm_eq_add);
gpu_set_blendmode(bm_normal);

draw_set_font(fnt_font);
font_enable_effects(fnt_font, true, {
    outlineEnable: true,
    outlineDistance: 4,
    outlineColour: c_black,
    outlineAlpha: 1
});
draw_text(32, 32, equation_name[current_equation]);