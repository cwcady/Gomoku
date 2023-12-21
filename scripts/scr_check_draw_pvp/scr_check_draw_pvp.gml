// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_draw_pvp() {
  var i, j;
  for (i = 0; i < 10; i += 1) {
    for (j = 0; j < 10; j += 1) {
      if (field_pvp[i, j] == 0) {
        // If there is an empty cell, return false
        return false;
      }
    }
  }
  // If all cells are filled, return true
  return true;
}
