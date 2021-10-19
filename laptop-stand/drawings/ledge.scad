// Laptop ledge
//
// Copyright (C) 2021 Jeremy Bennett <jeremy@jeremybennett.com>
// Contributor Jeremy Bennett <jeremy@jeremybennett.com>
//
// This is part of the open source laptop stand
//
// SPDX-License-Identifier: CC-BY-SA-4.0

// The grooved ledge against which the edge of the laptop rests

include <screw-hole.scad>

EPS = 0.01;
D1 = 10.0;
D2 = 18.0;
L = 345.0;
W1 = 25.0;
W2 = 6.0;

// The ledge
union () {
     cube (size = [L, W1, D1], center = false);
     cube (size = [L, W2, D2], center = false);
}
