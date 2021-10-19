// Base support
//
// Copyright (C) 2021 Jeremy Bennett <jeremy@jeremybennett.com>
// Contributor Jeremy Bennett <jeremy@jeremybennett.com>
//
// This is part of the open source laptop stand
//
// SPDX-License-Identifier: CC-BY-SA-4.0

// Support on the base board

include <screw-hole.scad>

EPS = 0.01;
D = 18.0;
L = 100.0;
W = 30.0;

difference () {
     // The board
     cube (size = [L, W, D], center = false);
     // hole
     translate (v = [30, 13, 0])
	  cylinder (r = 3.0, h = D * 4, center = true, $fn = 34);
}
