// Base back support
//
// Copyright (C) 2021 Jeremy Bennett <jeremy@jeremybennett.com>
// Contributor Jeremy Bennett <jeremy@jeremybennett.com>
//
// This is part of the open source laptop stand
//
// SPDX-License-Identifier: CC-BY-SA-4.0

// The support for the back of the base

include <screw-hole.scad>

EPS = 0.01;
D = 18.0;
L = 345.0 - 2 * D;

difference () {
     // The board
     cube (size = [L, 70.0, D], center = false);
     // Cutouts for cables
     for (xoff = [60.0, L - 60])
	  translate (v = [xoff, 70.0 / 2, 0])
	       cylinder (r = 35.0 / 2.0, h = D * 4, center = true, $fn = 120);
     translate (v = [L / 2, 70.0 / 4, 0])
	  cylinder (r = 35.0 / 2.0, h = D * 4, center = true, $fn = 120);
     translate (v = [L/2, 0, 0])
	  cube (size = [35.0, 35.0, D * 4], center = true);
}
