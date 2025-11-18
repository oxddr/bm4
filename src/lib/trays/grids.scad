module Grid(size = [ 1, 1 ], spacing = [ 0, 0 ]) {
  for (i = [0:size[0] - 1], j = [0:size[1] - 1]) {
    translate([ i * spacing[0], j * spacing[1] ]) { children(0); }
  }
}