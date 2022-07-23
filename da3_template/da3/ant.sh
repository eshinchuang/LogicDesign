#!/bin/sh
ncverilog \
  header.v \
  header_maze09x07.v \
  AntVengers.v maze_universe.v ant_suit.v \
  +debug=1 \
  +access+r
