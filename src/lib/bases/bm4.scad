module BM4_Base(size, height = 3) {
  linear_extrude(height = height) {
    difference() {
      square(size)
      union() {
        BM4Sockets(size);
        // children();
      }
    }
  }
}

module Socket_Grid(size, only_diagonal = false) {
  translate([ 5, size[1] - 5 ]) children(0);
  translate([ size[0] - 5, 5 ]) children(0);

  if (!only_diagonal) {
    translate([ 5, 5 ]) children(0);
    translate([ size[0] - 5, size[1] - 5 ]) children(0);
  }
}

module Magnet() { // d = default_magnet_diameter, offset = 0) {
  circle(3);
}

module BM4_Sockets(size, only_diagonal = false) {
  Socket_Grid(size, only_diagonal) {
    Magnet();
  }
}