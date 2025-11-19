module Grid(size = [1, 1], spacing = [0, 0]) {
  s = is_list(spacing) ? spacing : [spacing, spacing];

  for (i = [0:size[0] - 1], j = [0:size[1] - 1]) {
    translate([i * s[0], j * s[1]]) { children(0); }
  }
}
