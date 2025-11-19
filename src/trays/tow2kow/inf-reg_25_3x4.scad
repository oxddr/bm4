use <bases/bm4.scad>
use <trays/grids.scad>
use <trays/trays.scad>

traySize = [5, 4] * 20;
gridSize = [4, 3];
baseSize = 25;
margin = 2;

TraySandwich(3) {
  BM4_Tray(size=traySize, gridSize=gridSize, baseSize=baseSize);
  Tray(size=traySize) {
    Grid(size=gridSize, spacing=baseSize) {
      translate([margin / -2, margin / -2]) square(baseSize + margin); // add some extra room for bases for a better fit
    }
  }
}
