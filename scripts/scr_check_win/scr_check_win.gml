function scr_check_win() {
	// This returns true if there is 5 diagonal whites in the field[i,j].
	// Otherwise, return false;
	var i, j;

	
		// Case 1
		// if 5 diagonal (45 degree) field elements are all 1, then return true; issue is bottom and left 
	for (i = 0; i <= 5; i+=1) {
        for (j = 0; j <= 5; j+=1) {
                if (field[i, j] == 1 && field[i+1, j+1] == 1 && field[i+2, j+2] == 1 && field[i+3, j+3] == 1) && field[i+4, j+4] ==1 {
                    return true;  
				}
		// if 5 diagonal (-45 degree) field elements are all 1, then return true; issue is top and right
                if (field[9-i, j] == 1 && field[8-i, j+1 ] == 1 && field[7-i, j+2] == 1 && field[6-i, j+3] == 1 && field[5-i, j+4] == 1) {
                    return true;
				}
		}
	}
	//vertically issue is bottom
		for (i = 0; i < 10; i+=1) {
		 for (j = 0; j <= 5; j+=1) {
				if (field[i, j] == 1 && field[i, j+1] == 1 && field[i, j+2] == 1 && field[i, j+3] == 1 && field[i, j+4] == 1) {
                    return true;
				}
		 }
		}
		//horitontally issue is right
		for (i = 0; i <= 5; i+=1) {
			for (j = 0; j < 10; j+=1) {
				 if (field[i, j] == 1 && field[i+1, j] == 1 && field[i+2, j] == 1 && field[i+3, j] == 1 && field[i+4, j] ==1) {
                    return true;  
				}
        }
		}
	// rerturn false if nothing happens above.
return false;

}
