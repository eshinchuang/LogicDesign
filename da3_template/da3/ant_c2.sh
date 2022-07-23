#!/bin/sh
ncverilog \
  header.v \
  header_maze15x15-2.v \
  AntVengers.v maze_universe.v ant_suit_c2.v \
  +debug=2 \
  +define+CHALLENGE \
  +access+r
