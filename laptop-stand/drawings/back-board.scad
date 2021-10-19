// Baseboard
//
// Copyright (C) 2021 Jeremy Bennett <jeremy@jeremybennett.com>
// Contributor Jeremy Bennett <jeremy@jeremybennett.com>
//
// This is part of the open source laptop stand
//
// SPDX-License-Identifier: CC-BY-SA-4.0

include <screw-hole.scad>

EPS = 0.01;
D = 6.0;

difference () {
     // Board
     cube (size = [345, 226, D], center = false);
     // Ledge screws
     for (off = [20.0 : 305.0 / 4.0 : 325.0])
	  translate (v = [off, 226.0 - 5.0, D + EPS])
	       screw_hole (3.5, true);
     // through holes for hinges
     for (off = [45.0 : 26.0 / 2.0 : 71.0])
	  translate (v = [off, 226.0 - 5.0, 0])
	       cylinder (r = 3.0 / 2.0, h = D * 4.0, center = true, $fn = 45);
     for (off = [274.0 : 26.0 / 2.0 : 300.0])
	  translate (v = [off, 226.0 - 5.0, 0])
	       cylinder (r = 3.0 / 2.0, h = D * 4.0, center = true, $fn = 45);
     // Support base holes
     for (xoff = [58.0, 345.0 - 58.0])
	  for (yoff = [15.0, 165.0])
	       translate (v = [xoff, yoff, -EPS])
		    screw_hole (4.0, false);
}
