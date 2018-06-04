if (score >= 500)
{
    draw_set_color(c_black);
    draw_set_font(f_endgame);
    draw_text(room_width / 2 - 345, room_height / 2 - 75, 
        string_hash_to_newline("Congratulations! Press " + "R" + " to restart! Press N to go next!"));
}

