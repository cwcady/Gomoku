// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_find_win(){

var i, j;
for(i = 0; i< 10; i+=1){
	for(j=0;j<10; j+=1){
		if(field[i,j] == 0){
			
			field[i,j] = 2;
			if(scr_check_comp_win()){return true;}
			field[i,j] = 0;

		}
	}
}
return false;
}