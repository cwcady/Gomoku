// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_pvp(){
var i, j;
for( i=0; i<10; i+=1){
	for(j=0; j<10; j+=1){
		if (field_pvp[i,j] ==1){
			draw_sprite(spr_white, 0, i*32, j*32);
		}
		if (field_pvp[i,j] ==2){
			draw_sprite(spr_red, 0, i*32, j*32)
		}
	}
 }

draw_set_halign(fa_right);
draw_set_color(c_blue);
draw_text(580, 10, "Player1 Wins: " + string(score_player1));
draw_set_color(c_red);
draw_text(580, 30, "Player2 Wins: " + string(score_player2));
draw_set_color(c_white);
draw_text(580, 50, "Draws: " + string(score_draw));
/*
for( i=0; i<10; i+=1){
	for(j=0; j<10; j+=1){
		draw_set_color(c_blue);
draw_text(i*32+32, j*32, string(field[i,j]));
draw_text(i*32+32, j*32+15, string(i) + "" + string(j))
	}}
	*/
	
/*
// **** Step 2
// if the clicked is true, and the drawn is false, then 
// set the drawn as true;
if (clicked == true && drawn ==false){
	drawn = true;
}*/

}