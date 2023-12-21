// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_end(){
if (scr_check_win()){
	score_player += 1;
	audio_play_sound(snd_win, 1, false);
	show_message("You win!");
	scr_init();
}

if (scr_check_comp_win()){
	score_computer += 1;
	audio_play_sound(snd_lose, 1, false);
	show_message("Computer Wins! AI is taking over!");
	scr_init();
}
if(scr_check_draw()){
	score_draw += 1;
	audio_play_sound(snd_draw, 1, false);
	show_message("Tie Game!!");
	scr_init();
}
//reset game when player or computer get 3 points
if(score_player == 3 || score_computer == 3){
	scr_init_vars()
}
}