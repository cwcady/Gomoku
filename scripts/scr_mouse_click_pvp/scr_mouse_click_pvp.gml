// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_mouse_click_pvp(){
// *** Step 1
// initialize all elements of field[i,j] as 0 for new play
var i, j;

i = floor (mouse_x/32);
j = floor (mouse_y/32);

if (turn % 2 == 0){
field_pvp[i,j] = 1;
}
else {
	field_pvp[i,j] = 2;
}
turn++;
audio_play_sound(snd_click, 1, false);


}