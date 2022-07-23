  module ant_suit (
    input wire clk,
    input wire rst_n,
    input wire ant_r,
    input wire ant_l,
    input wire hit,
    input wire escape,
  // challenge mode
  `ifdef CHALLENGE
    output reg [`PH_WIDTH - 1:0] ph_drop,
    input wire [`PH_WIDTH - 1:0] ph_detected,
  `endif
    output reg [1:0] move
  );
    reg state, next_state;
    reg step, next_step;
    // parameters: action
    parameter [1:0] halt       = `HALT;
    parameter [1:0] turn_right = `RIGHT;
    parameter [1:0] turn_left  = `LEFT;
    parameter [1:0] forward    = `FORWARD;
    parameter cyc = `CYC;
    parameter delay = `DELAY;
    // replace the initial block with YOUR DESIGN
    initial begin
      #cyc;
      #cyc;
      @(posedge rst_n); 
      next_state = 0;
      next_step = 0;  // move after reset
      // while (!ant_l && !ant_r) begin
      //   @(posedge clk)move = forward;
      // end
    end
    
  
    always @(posedge clk) begin
        state <= next_state;
        step <= next_step;
    end

    always @* begin
      if(state == 0) begin
        move = forward;
        if(ant_l || ant_r) begin
          move = halt;
          next_state = 1;
        end
      end else begin
        if(hit == 1) move = turn_right;
        else if(ant_l && ant_r) move = turn_right;
        else if(ant_l && !ant_r) move = forward;
        else if(!ant_l && ant_r) move = turn_right;
        else if(!ant_l && !ant_r) begin
          if (step == 0)begin
            move = turn_left;
            next_step = 1;
          end else begin
            move = forward;
            next_step = 0;
          end
        end
      end
    end
  // challenge mode: deploy pheromone immediate after
  // no pheromone being detected
  `ifdef CHALLENGE
    always @* begin
      if (ph_detected == 0) ph_drop = 2'b1;
      else ph_drop = 0;
    end
  `endif

  endmodule
