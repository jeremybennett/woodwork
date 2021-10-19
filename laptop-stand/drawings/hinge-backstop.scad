// Hinge backstop
//
// Copyright (C) 2021 Jeremy Bennett <jeremy@jeremybennett.com>
// Contributor Jeremy Bennett <jeremy@jeremybennett.com>
//
// This is part of the open source laptop stand
//
// SPDX-License-Identifier: CC-BY-SA-4.0

// A strip behind the baseboard to take the ends of the hinge screws

include <screw-hole.scad>

EPS = 0.01;
D = 25.4 * 5.0 / 16.0;		// 5/16 inches in mm
L = 345.0 - 18.0 * 2;
W = 10.0;

// The board
cube (size = [L, W, D], center = false);
