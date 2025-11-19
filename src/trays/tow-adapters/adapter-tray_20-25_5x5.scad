use <bases/bm4.scad>
use <trays/grids.scad>
use <trays/trays.scad>

targetBaseSize = 25;
baseSize = 20;
gridSize = [5, 5];
traySize = gridSize * targetBaseSize;
margin = 2;

TraySandwich(3) {
  Tray(traySize) {
    Grid(size=gridSize, spacing=targetBaseSize) {
      translate([2.5, 2.5]) BM4_Sockets(baseSize);
    }
  }
  Tray(traySize) {
    Grid(size=gridSize, spacing=targetBaseSize) {
      translate([2.5, 2.5]) {
        translate([margin / -2, margin / -2]) square(baseSize + margin);
      }
    }
  }
}
