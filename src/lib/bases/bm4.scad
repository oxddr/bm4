module BM4_Base(size, height = 3) {
  linear_extrude(height=height) {
    difference() {
      square(size);
      BM4_Sockets(size);
    }
  }
}

module Magnet() {
  // d = default_magnet_diameter, offset = 0) {
  circle(d=3);
}

module BM4_Sockets(size, only_diagonal = false) {
  translate([5, size[1] - 5]) Magnet();
  translate([size[0] - 5, 5]) Magnet();

  if (!only_diagonal) {
    translate([5, 5]) Magnet();
    translate([size[0] - 5, size[1] - 5]) Magnet();
  }
}
