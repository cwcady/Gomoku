function scr_check_win_p1() {
	// This returns true if there is 5 diagonal whites in the field[i,j].
	// Otherwise, return false;
	var i, j;
		// Case 1
		// if 5 diagonal (45 degree) field elements are all 1, then return true; issue is bottom and left 
	for (i = 0; i <= 5; i+=1) {
        for (j = 0; j <= 5; j+=1) {
                if (field_pvp[i, j] == 1 && field_pvp[i+1, j+1] == 1 && field_pvp[i+2, j+2] == 1 && field_pvp[i+3, j+3] == 1) && field_pvp[i+4, j+4] ==1 {
                    return true;  
				}
		// if 5 diagonal (-45 degree) field elements are all 1, then return true; issue is top and right
                if (field_pvp[9-i, j] == 1 && field_pvp[8-i, j+1 ] == 1 && field_pvp[7-i, j+2] == 1 && field_pvp[6-i, j+3] == 1 && field_pvp[5-i, j+4] == 1) {
                    return true;
				}
		}
	}
	//vertically issue is bottom
		for (i = 0; i < 10; i+=1) {
		 for (j = 0; j <= 5; j+=1) {
				if (field_pvp[i, j] == 1 && field_pvp[i, j+1] == 1 && field_pvp[i, j+2] == 1 && field_pvp[i, j+3] == 1 && field_pvp[i, j+4] == 1) {
                    return true;
				}
		 }
		}
		//horitontally issue is right
		for (i = 0; i <= 5; i+=1) {
			for (j = 0; j < 10; j+=1) {
				 if (field_pvp[i, j] == 1 && field_pvp[i+1, j] == 1 && field_pvp[i+2, j] == 1 && field_pvp[i+3, j] == 1 && field_pvp[i+4, j] ==1) {
                    return true;  
				}
        }
		}
	// rerturn false if nothing happens above.
return false;

}
