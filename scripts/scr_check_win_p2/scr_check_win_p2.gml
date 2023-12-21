// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_win_p2(){
	var i, j;

	
		// Case 1
		// if 5 diagonal (45 degree) field elements are all 1, then return true
	for (i = 0; i <= 5; i+=1) {
        for (j = 0; j <= 5; j+=1) {
                if (field_pvp[i, j] == 2 && field_pvp[i+1, j+1] == 2 && field_pvp[i+2, j+2] == 2 && field_pvp[i+3, j+3] == 2) && field_pvp[i+4, j+4] ==2 {
                    return true;  
				}
		// if 5 diagonal (-45 degree) field elements are all 1, then return true
                if (field_pvp[9-i, j] == 2 && field_pvp[8-i, j+1 ] == 2 && field_pvp[7-i, j+2] == 2 && field_pvp[6-i, j+3] == 2 && field_pvp[5-i, j+4] == 2) {
                    return true;
				}
		}
	}
	//vertically
		for (i = 0; i < 10; i+=1) {
		 for (j = 0; j <= 5; j+=1) {
				if (field_pvp[i, j] == 2 && field_pvp[i, j+1] == 2 && field_pvp[i, j+2] == 2 && field_pvp[i, j+3] == 2 && field_pvp[i, j+4] == 2) {
                    return true;
				}
		 }
		}
		//horitontally
		for (i = 0; i <= 5; i+=1) {
			for (j = 0; j < 10; j+=1) {
				 if (field_pvp[i, j] == 2 && field_pvp[i+1, j] == 2 && field_pvp[i+2, j] == 2 && field_pvp[i+3, j] == 2 && field_pvp[i+4, j] ==2) {
                    return true;  
				}
        }
		}
	// rerturn false if nothing happens above.
return false;


}