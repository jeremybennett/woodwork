# Makefile for laptop stand
#
# Copyright (C) 2021 Jeremy Bennett <jeremy@jeremybennett.com>
# Contributor Jeremy Bennett <jeremy@jeremybennett.com>
#
# This is part of the open source laptop stand
#
# SPDX-License-Identifier: CC-BY-SA-4.0

# Generate STL and PNG from OpenSCAD

# Tools
OPENSCAD = openscad

# Top level Sources
SCADS := back-board.scad \
         base-back.scad \
         base-board.scad \
         base-side.scad \
         base-support.scad \
         hinge-backstop.scad \
         ledge.scad \
         slot-support.scad \
         strut.scad

# Generated outputs
STLS := $(SCADS:.scad=.stl)
PNGS := $(SCADS:.scad=.png)

.PHONY: all
all: $(STLS) $(PNGS)

# OpenSCAD pattern rules
%.stl : %.scad
	$(OPENSCAD) -o $@ $<

%.png : %.scad
	$(OPENSCAD) -o $@ $<

.PHONY: clean
clean:
	$(RM) $(STLS) $(PNGS)
