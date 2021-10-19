// Base side support
//
// Copyright (C) 2021 Jeremy Bennett <jeremy@jeremybennett.com>
// Contributor Jeremy Bennett <jeremy@jeremybennett.com>
//
// This is part of the open source laptop stand
//
// SPDX-License-Identifier: CC-BY-SA-4.0

// The support for the side of the base

include <screw-hole.scad>

EPS = 0.01;
D = 18.0;

difference () {
     // The board
     cube (size = [160 - D, 70.0, D], center = false);
     // 4.0mm side screw to backboard
     translate (v = [9.0, 20.0, D + EPS])
	  screw_hole (4.0, true);
}
