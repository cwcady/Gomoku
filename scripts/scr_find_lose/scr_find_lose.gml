// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_find_lose(){
var i, j;
for(i = 0; i< 10; i+=1){ //parse the array
	for(j=0;j<10; j+=1){
		if(field[i,j] == 0){ //check for playable positions
			
			field[i,j] = 1; //check positions if it was 1
			if(scr_check_win()){ //check if player wins if 1 was there
			field[i, j] = 2; //put a 2 there instead
			return true;
			}
			field[i,j] = 0; //otherwise return to 0

		}
	}
}
return false; 
}