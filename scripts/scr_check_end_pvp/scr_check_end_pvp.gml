// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_end_pvp(){
if (scr_check_win_p1()){
	score_player1 += 1;
	audio_play_sound(snd_win, 1, false);
	show_message("Player 1 wins!");
	scr_init_pvp();
}

if (scr_check_win_p2()){
	score_player2 += 1;
	audio_play_sound(snd_win, 1, false);
	show_message("Player 2 wins!");
	scr_init_pvp();
}
if(scr_check_draw_pvp()){
	score_draw += 1;
	audio_play_sound(snd_draw, 1, false);
	show_message("Tie Game!!");
	scr_init_pvp();
}
//reset game when player or computer get 3 points
if(score_player2 == 3 || score_player1 == 3){
	scr_init_vars()
}
}