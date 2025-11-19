use <bases/bm4.scad>
use <trays/grids.scad>

module Tray(size) {
  difference() {
    square(size);
    children();
  }
}

module BM4_Tray(size, gridSize, baseSize, gridT = [0, 0]) {
  Tray(size) {
    translate(v=gridT) {
      Grid(size=gridSize, spacing=baseSize) {
        BM4_Sockets(baseSize);
      }
    }
  }
}

module TraySandwich(height) {
  h = is_list(height) ? height : [height, height];
  linear_extrude(height=h[0]) {
    children(0);
  }
  translate(v=[0, 0, h[0]]) {
    linear_extrude(height=h[1]) {
      children(1);
    }
  }
}
