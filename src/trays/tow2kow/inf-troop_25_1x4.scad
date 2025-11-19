use <bases/bm4.scad>
use <trays/grids.scad>
use <trays/trays.scad>

traySize = [5, 2] * 20;
gridSize = [4, 1];
baseSize = 25;
margin = 2;

TraySandwich(3) {
  BM4_Tray(size=traySize, gridSize=gridSize, baseSize=baseSize, gridT=[0, 7.5]);
  Tray(size=traySize) {
    translate(v=[0, 7.5]) {
      Grid(size=gridSize, spacing=baseSize) {
        translate([margin / -2, margin / -2]) square(baseSize + margin); // add some extra room for bases for a better fit
      }
    }
  }
}
