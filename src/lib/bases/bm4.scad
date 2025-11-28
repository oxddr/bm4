module BM4_Base(size, height = 3) {
  linear_extrude(height=height) {
    difference() {
      square(size);
      union() {
        BM4_Sockets(size);
        children();
      }
    }
  }
}

module Magnet() {
  circle(d=3 + 0.15);
}

module BM4_Sockets(size, only_diagonal = false) {
  s = is_list(size) ? size : [size, size];

  translate([5, s[1] - 5]) Magnet();
  translate([s[0] - 5, 5]) Magnet();

  if (!only_diagonal) {
    translate([5, 5]) Magnet();
    translate([s[0] - 5, s[1] - 5]) Magnet();
  }
}

module HorseSlots(baseSize) {
  slotWidth = 2.5;
  slotLength = 35;
  slotSpacing = 2.8;
  translate(baseSize * 0.5) {
    translate([(slotSpacing + slotWidth) * 0.5, 0]) square([slotWidth, slotLength], center=true);
    translate([(slotSpacing + slotWidth) * -0.5, 0]) square([slotWidth, slotLength], center=true);
  }
}
