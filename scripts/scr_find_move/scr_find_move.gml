// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_find_move(){
	
	if(scr_find_win()) exit; //priority 1
	if(scr_find_lose()) exit; //priority 2
	scr_find_random(); //prioirty 3
}