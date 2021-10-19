// Base board
//
// Copyright (C) 2021 Jeremy Bennett <jeremy@jeremybennett.com>
// Contributor Jeremy Bennett <jeremy@jeremybennett.com>
//
// This is part of the open source laptop stand
//
// SPDX-License-Identifier: CC-BY-SA-4.0

// The board on top of the base

include <screw-hole.scad>

EPS = 0.01;
D = 25.4 * 5.0 / 16.0;		// 5/16 inches in mm

difference () {
     // The board
     cube (size = [345, 160, D], center = false);
     // 3.0mm through holes for hinges
     for (off = [45.0 : 26.0 / 2.0 : 71.0])
	  translate (v = [off, 5.0, 0])
	       cylinder (r = 3.0 / 2.0, h = D * 4.0, center = true, $fn = 45);
     for (off = [274.0 : 26.0 / 2.0 : 300.0])
	  translate (v = [off, 5.0, 0])
	       cylinder (r = 3.0 / 2.0, h = D * 4.0, center = true, $fn = 45);
     // 4.0mm side screws to base
     for (xoff = [9.0, 345.0 - 9.0])
	  for (yoff = [20.0, 80.0, 140.0])
	       translate (v = [xoff, yoff, D + EPS])
		    screw_hole (4.0, true);
     // 4.0mm back screws to base
     for (off = [40.0, 125.0, 345.0 - 125.0, 345.0 - 40.0])
	  translate (v = [off, 160.0 - 9.0, D + EPS])
	       screw_hole (4.0, true);
     // Support base holes
     for (xoff = [58.0, 345.0 - 58.0])
	  for (yoff = [80.0, 135.0])
	       translate (v = [xoff, yoff, -EPS])
		    screw_hole (4.0, false);
}
