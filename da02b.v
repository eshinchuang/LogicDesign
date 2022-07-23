module GCD (
  input wire CLK,
  input wire RST_N,
  input wire [7:0] A,
  input wire [7:0] B,
  input wire START,
  output reg [7:0] Y,
  output reg DONE,
  output reg ERROR
);

parameter [1:0] IDLE   = 2'b00;
parameter [1:0] CALC   = 2'b01;
parameter [1:0] FINISH = 2'b10;
reg found, err, next_found;
reg [7:0] reg_a, reg_b, data_a, data_b, next_a, next_b;
reg [7:0] diff;
reg error_next;
reg [1:0] state, state_next;

always @(posedge CLK or negedge RST_N) begin
  if (!RST_N) begin
    state <= IDLE;
    reg_a <= 0;
    reg_b <= 0;
    found <= 0;
  end
  else begin
    state <= state_next;
    reg_a <= next_a;
    reg_b <= next_b;
    found <= next_found;
    ERROR <= error_next;
  end
end

always @* begin 
    case(state)
      IDLE: begin
          error_next = 0;
          next_a = A;
          next_b = B;
          next_found = 0;
          DONE = 0;
          if(START) begin
            state_next = CALC;
          end else begin
            state_next = IDLE;
          end
      end
      CALC: begin
        if(A == 0 || B == 0) begin
          error_next = 1;
          state_next = FINISH;
        end
        else begin
          if(reg_b == 0) begin
            Y = reg_a;
            state_next = FINISH;
          end else begin
            state_next = CALC;
            next_a = reg_b;
            next_b = reg_a % reg_b;
          end
        end
      end
      FINISH: begin
          DONE = 1;
          state_next = IDLE;
      end
    endcase
end
endmodule