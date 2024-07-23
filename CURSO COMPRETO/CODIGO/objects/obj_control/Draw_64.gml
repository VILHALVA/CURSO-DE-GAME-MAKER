/// @description Place

// Draw Place
draw_set_font(fnt_place);
draw_text(obj_place.sprite_width / 2 - 20, 20, "Place: " + string(int64(place)));
draw_text(obj_place.sprite_width / 2 - 20, 35, "Level: " + string(int64(level)));

// Draw Levels GUI
draw_sprite(spr_level, level - 1, room_width / 2, 60);

