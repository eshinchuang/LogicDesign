module AntVengers;
  reg clk;
  reg rst_n;
  wire [1:0] move;
// challenge mode
`ifdef CHALLENGE
  wire [`PH_WIDTH - 1:0] ph_drop;
  wire [`PH_WIDTH - 1:0] ph_detected;
`endif
  wire ant_r;
  wire ant_l;
  wire hit;
  wire escape;

  parameter delay = `DELAY;
  parameter cyc = `CYC;

  maze_universe MU1 (
    .clk(clk),
    .rst_n(rst_n),
    .move(move),
// challenge mode
`ifdef CHALLENGE
    .ph_drop(ph_drop),
    .ph_detected(ph_detected),
`endif
    .ant_r(ant_r),
    .ant_l(ant_l),
    .hit(hit),
    .escape(escape)
  );

  ant_suit A1 (
    .clk(clk),
    .rst_n(rst_n),
    .ant_r(ant_r),
    .ant_l(ant_l),
    .hit(hit),
    .escape(escape),
// challenge mode
`ifdef CHALLENGE
    .ph_drop(ph_drop),
    .ph_detected(ph_detected),
`endif
    .move(move)
  );

  // clocking
  always #(cyc/2) clk = ~ clk;

  initial begin
    clk = 1;
    rst_n = 1;
    #(cyc/2) rst_n = 0;
    #cyc;
    #cyc;
    #cyc;
    #cyc rst_n = 1;


    // if escape goes high
    @(posedge escape)
      $display(">>> Congratulations! Escape at time [%t]\n", $time);

    #(cyc * 5)
      $finish;
  end

  // Abort the simulation after a predefnied period.
  // You might extend the period for a large maze
  initial begin
    #(cyc * `ABORT)
      $display(">>> Simulation aborted after %d cycles...", `ABORT);
      $display(">>> By default `ABORT is defnied as [%d]", `ABORT);
      $display(">>> Extend it in header.v if necessary");
    $finish;
  end

endmodule
