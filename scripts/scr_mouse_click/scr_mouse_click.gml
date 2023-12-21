// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_mouse_click(){
// *** Step 1
// initialize all elements of field[i,j] as 0 for new play
var i, j;

i = floor (mouse_x/32);
j = floor (mouse_y/32);
field[i,j] = 1;

audio_play_sound(snd_click, 1, false);

//add check end here
scr_check_end();
scr_find_move(); //computer turn
scr_check_end();
}