use <bases/bm4.scad>
use <trays/grids.scad>
use <trays/trays.scad>

union() {
  linear_extrude(height=3) {
    Tray([5, 2] * 25) {
      Grid(size=[5, 2], [25, 25]) {
        translate([2.5, 2.5]) BM4_Sockets(20);
      }
    }
  }
  translate(v=[0, 0, 3]) {
    linear_extrude(height=3) {
      difference() {
        Tray([5, 2] * 25);
        Grid(size=[5, 2], spacing=[25, 25]) {
        translate([2.5, 2.5]) square(20);
      }
      }
    }
    // TrayGrid(unitType="infantry", unitSize="horde", gridSize=[5, 2]);
  }
}
