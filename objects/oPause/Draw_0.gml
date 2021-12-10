draw_set_font(Font1);
draw_set_halign(fa_center);
// draw_set_valign(fa_center);
draw_set_color(c_black);

if(paused){
    draw_text(view_wview, view_hview, "Game Paused");
}