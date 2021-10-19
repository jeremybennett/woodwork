// Strut
//
// Copyright (C) 2021 Jeremy Bennett <jeremy@jeremybennett.com>
// Contributor Jeremy Bennett <jeremy@jeremybennett.com>
//
// This is part of the open source laptop stand
//
// SPDX-License-Identifier: CC-BY-SA-4.0

// Struts connecting base board to backboard

include <screw-hole.scad>

EPS = 0.01;
D = 6.0;
L = 170.0;
W = 30.0;

difference () {
     // The strut
     hull () {
	  for (xoff = [W / 2, L - W / 2])
	       translate (v = [xoff, W / 2, 0])
		    cylinder (r = W / 2, h = D, center = false, $fn = 120);
     }
     // holes
     for (xoff = [W /2, L - W/2])
	  translate (v = [xoff, W / 2, 0])
	       cylinder (r = 3.0, h = D * 4, center = true, $fn = 45);
}
