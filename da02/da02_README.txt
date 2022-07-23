cd hw2
ncverilog da02a_t.v da02a.v +access+r
ncverilog da02b_t_v da02b.v +access+r
nWave
design_vision


file>>read>>da02a_t.v >> da02a.v
attribute >> Specify Clock 
Design>>Compile Design
Design>>Report Area
Timing>>Report Timing Paths
create Schematic of Selected Objects >> Schematic View
File >> Save as "da02a_syn.v"
TCL command:write_sdf -version 1.0 da02a_syn.sdf
ncverilog da02a_t.v da02a_syn.v header.v -v/theda21_2/CBDK_IC_Contest/cur/Verilog/tsmc13.v
