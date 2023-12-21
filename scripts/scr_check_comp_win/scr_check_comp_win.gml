// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_comp_win(){
	var i, j;

	
		// Case 1
		// if 5 diagonal (45 degree) field elements are all 1, then return true
	for (i = 0; i <= 5; i+=1) {
        for (j = 0; j <= 5; j+=1) {
                if (field[i, j] == 2 && field[i+1, j+1] == 2 && field[i+2, j+2] == 2 && field[i+3, j+3] == 2) && field[i+4, j+4] ==2 {
                    return true;  
				}
		// if 5 diagonal (-45 degree) field elements are all 1, then return true
                if (field[9-i, j] == 2 && field[8-i, j+1 ] == 2 && field[7-i, j+2] == 2 && field[6-i, j+3] == 2 && field[5-i, j+4] == 2) {
                    return true;
				}
		}
	}
	//vertically
		for (i = 0; i < 10; i+=1) {
		 for (j = 0; j <= 5; j+=1) {
				if (field[i, j] == 2 && field[i, j+1] == 2 && field[i, j+2] == 2 && field[i, j+3] == 2 && field[i, j+4] == 2) {
                    return true;
				}
		 }
		}
		//horitontally
		for (i = 0; i <= 5; i+=1) {
			for (j = 0; j < 10; j+=1) {
				 if (field[i, j] == 2 && field[i+1, j] == 2 && field[i+2, j] == 2 && field[i+3, j] == 2 && field[i+4, j] ==2) {
                    return true;  
				}
        }
		}
	// rerturn false if nothing happens above.
return false;


}