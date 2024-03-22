/////////////////////////////////////////////////////
// RTL for UPF and Low-Power Design
// Author: team LAV
// ECE-4/581 and can be used ECE-530
// Top level instantiate 4 sub-modules
// Top level has some logic elements
// Each module connects to other modules
////////////////////////////////////////////////////

module ece581_ip_top(
            input [7:0]lav_in1,
		    input[7:0]lav_in2,
			input lav_c,lav_en,upf_clk,lav_reset,
			output [7:0]lav_A2D,
			output	lav_Cout_BC,lav_B2A,lav_B2D,lav_out_C1,lav_out_C2,lav_out_C3,lav_D_eq_2B,lav_done,lav_Dout);
/* synthesis syn_preserve=1 */
//logic lav_A_enable, lav_B_enable, lav_C_enable, lav_D_enable;
logic lav_D_cin_2A,lav_D_less_2C,lav_B_out0_2C,lav_out_C2B_1,lav_out_C2B_2,lav_out_C2B_3,lav_out_C2B_4,lav_out_C2B_5,lav_C2A,lav_C2D;

//Instantiate 4 sub-modules at the top level
modA A_inst(upf_clk,lav_reset,lav_in1,lav_in2,lav_D_cin_2A,lav_B2A,lav_C2A, lav_A2D,lav_Cout_BC);
modB B_inst(upf_clk,{lav_D_eq_2B,lav_c,lav_Cout_BC,lav_out_C2B_1,lav_out_C2B_2,lav_out_C2B_3,lav_out_C2B_4,lav_out_C2B_5},lav_en,lav_B_out0_2C,lav_B2A,lav_B2D,lav_done); 
modC C_inst({lav_B_out0_2C,lav_Cout_BC,lav_D_less_2C},upf_clk,lav_reset,lav_out_C1,lav_out_C2,lav_out_C3,lav_out_C2B_1,lav_out_C2B_2,lav_out_C2B_3,lav_out_C2B_4,lav_out_C2B_5,lav_C2A,lav_C2D);
modD D_inst(lav_A2D,lav_in2,upf_clk,lav_B2D,lav_C2D, lav_D_eq_2B,lav_D_cin_2A,lav_D_less_2C,lav_Dout); 

endmodule


// Implement logic for each module of lav_your choice
// Each module should sent out signal to other 3 modules
// Each module should use the signals coming from other modules


module modA(
    input logic upf_clk,
    input logic lav_reset,
    input logic [7:0] lav_in1,lav_in2,
    input logic lav_Cin,	
    input logic lav_B2A,
    input logic lav_C2A,
    output logic [7:0] lav_A2D,
    output logic lav_Cout_BC
);
/* synthesis syn_preserve=1 */
    logic [7:0] lav_G, lav_P;
    logic [7:0] lav_C;

    always @(posedge upf_clk) 
	begin
        if (lav_reset)
           lav_G <= 4'b0;
        else 
		begin
            lav_G[0] <= lav_in1[0] & lav_in2[0];
            lav_G[1] <= lav_in1[1] & lav_in2[1];
            lav_G[2] <= lav_in1[2] & lav_in2[2];
            lav_G[3] <= lav_in1[3] & lav_in2[3];
	    lav_G[4] <= lav_in1[4] & lav_in2[4];
            lav_G[5] <= lav_in1[5] & lav_in2[5];
            lav_G[6] <= lav_in1[6] & lav_in2[6];
            lav_G[7] <= lav_in1[7] & lav_in2[7];
        end
    end

    always @(posedge upf_clk) 
	begin
        if (lav_reset)
            lav_P <= 8'b0;
        else 
		begin
            lav_P[0] <= lav_in1[0] | lav_in2[0];
            lav_P[1] <= lav_in1[1] | lav_in2[1];
            lav_P[2] <= lav_in1[2] | lav_in2[2];
            lav_P[3] <= lav_in1[3] | lav_in2[3];
            lav_P[4] <= lav_in1[4] | lav_in2[4];
            lav_P[5] <= lav_in1[5] | lav_in2[5];
            lav_P[6] <= lav_in1[6] | lav_in2[6];
            lav_P[7] <= lav_in1[7] | lav_in2[7];
        end
    end
    
    always @(posedge upf_clk) 
	begin
        if (lav_reset)
            lav_C <= lav_G[3] | lav_P[3];
        else 
		begin
            lav_C[0] <= lav_G[3] | (lav_P[3] & (lav_G[2] | (lav_P[2] & (lav_G[1] | (lav_P[1] & (lav_G[0] | (lav_P[0] & lav_Cin)))))));
            lav_C[1] <= lav_G[0] | (lav_P[0] & lav_Cin);
            lav_C[2] <= lav_G[3] | (lav_P[3] & (lav_G[2] | (lav_P[2] & (lav_G[1] | (lav_P[1] & (lav_G[0] | (lav_P[0] & lav_Cin)))))));
            lav_C[3] <= lav_G[2] | (lav_P[2] & (lav_G[1] | (lav_P[1] & (lav_G[0] | (lav_P[0] & lav_Cin)))));
            lav_C[4] <= lav_G[3] | (lav_P[3] & (lav_G[2] | (lav_P[2] & (lav_G[1] | (lav_P[1] & (lav_G[0] | (lav_P[0] & lav_Cin)))))));
            lav_C[5] <= lav_G[3] | (lav_P[3] & (lav_G[0] | (lav_P[2] & (lav_G[0] | (lav_P[1] & (lav_G[2] | (lav_P[4] & lav_Cin)))))));
            lav_C[6] <= lav_G[0] | (lav_P[3] & lav_Cin);
            lav_C[7] <= lav_G[3] | (lav_P[3] & (lav_G[1] | (lav_P[2] & (lav_G[2] | (lav_P[1] & (lav_G[1] | (lav_P[0] & lav_Cin)))))));
        end
    end

    always @(posedge upf_clk) 
	begin
        if (lav_reset)
            lav_Cout_BC <= 1'b0;
        else
            lav_Cout_BC <= lav_C[4];
    end

    always @(posedge upf_clk) 
	begin
        if (lav_reset || lav_B2A || lav_C2A)
            lav_A2D <= lav_in1[0] ^ lav_in2[0] ^ lav_C[0];
        else 
		begin
            lav_A2D[0] <= lav_in1[0] ^ lav_in2[0] ^ lav_C[0];
            lav_A2D[1] <= lav_in1[1] ^ lav_in2[1] ^ lav_C[1];
            lav_A2D[2] <= lav_in1[2] ^ lav_in2[2] ^ lav_C[2];
            lav_A2D[3] <= lav_in1[3] ^ lav_in2[3] ^ lav_C[3];
            lav_A2D[4] <= lav_in1[4] ^ lav_in2[4] ^ lav_C[4];
            lav_A2D[5] <= lav_in1[5] ^ lav_in2[5] ^ lav_C[5];
            lav_A2D[6] <= lav_in1[6] ^ lav_in2[6] ^ lav_C[6];
            lav_A2D[3] <= lav_in1[7] ^ lav_in2[7] ^ lav_C[7];
        end
    end


endmodule

///////////////////////////////////

module modB (
    input logic upf_clk, // Clock input
    input logic [7:0] lav_d, // Input data
       input logic lav_notEN, // lav_Active-low enable input
    output logic lav_B_out0_2C, lav_B2A, lav_B2D, // Output prioritlav_y signals
    output logic lav_done // Output done signal
);
/* synthesis syn_preserve=1 */
logic [7:0] i; // Register to hold input data

always @(posedge upf_clk)
begin
    if (lav_notEN == 0)
	begin
        i <= lav_d; // Update input register when enable is active
        lav_done <= |i; // Set Done signal if anlav_y input is high
    end
end

always @* begin
    if (lav_done) 
	begin
        lav_B_out0_2C = i[7]|i[6]|i[5]|i[4];
        lav_B2A = i[7]|i[6]|i[3]|i[2];
        lav_B2D = i[7]|i[5]|i[3]|i[1];
    end
    else
	begin
        lav_B_out0_2C = i[2]; // Output default low when not done
        lav_B2A = i[0];
        lav_B2D = i[3];
    end
end

endmodule

//////////////////////////////////////////

module modC (
    input logic [2:0] lav_in1,
    input logic upf_clk,
    input logic lav_reset,
    output logic lav_out_C1,lav_out_C2,lav_out_C3,lav_out_C2B_1,lav_out_C2B_2,lav_out_C2B_3,lav_out_C2B_4,lav_out_C2B_5,
	output logic lav_C2A,lav_C2D
);
/* synthesis syn_preserve=1 */
    always_ff @(posedge upf_clk) begin
        if (lav_reset) begin
            lav_out_C1 <= lav_in1[0] + lav_in1[1]; // Reset to first active
		lav_C2A <= lav_in1[1] + lav_in1[2];
			lav_C2D <= lav_in1[1];// Reset to first active         
			end 
	else begin
           
                 lav_out_C1 <= lav_in1[0] + lav_in1[1];
                 lav_out_C2 <= lav_in1[1] + lav_in1[2];
                 lav_out_C3 <= lav_in1[2] + lav_in1[0];
                 lav_out_C2B_1 <= lav_in1[0] + lav_in1[1] + lav_in1[2];
                 lav_out_C2B_2 <= lav_in1[1] + lav_in1[2] * lav_in1[1];
                 lav_out_C2B_3 <= lav_in1[2] * lav_in1[0];
                 lav_out_C2B_4 <= lav_in1[0] * lav_in1[1];
                 lav_out_C2B_5 <= lav_in1[1] * lav_in1[2];
            
        end
    end

endmodule
////////////////////////////////////////////////

module modD(
    input logic [7:0] lav_A2D,
    input logic [7:0] lav_in2,
    input logic upf_clk,
    input logic lav_B2D,
    input logic lav_C2D,
    output logic lav_D_eq_2B,
    output logic lav_D_cin_2A,
    output logic lav_D_less_2C,
    output logic lav_Dout
);
/* synthesis syn_preserve=1 */

always @(posedge upf_clk) 
begin
	if (lav_B2D || lav_C2D) 
		begin lav_Dout <= lav_A2D[0];
	end else 
		begin lav_Dout <=lav_A2D[1];
	end

    if (lav_A2D == lav_in2) 
begin
        lav_D_eq_2B <= lav_A2D[0];
        lav_D_cin_2A <= lav_A2D[1];
        lav_D_less_2C <= lav_A2D[2];
    end else if (lav_A2D > lav_in2) 
begin
        lav_D_eq_2B <= lav_A2D[4];
        lav_D_cin_2A <= lav_A2D[3];
        lav_D_less_2C <= lav_A2D[5];
    end else begin
        lav_D_eq_2B <= lav_A2D[6];
        lav_D_cin_2A <= lav_A2D[7];
        lav_D_less_2C <= lav_A2D[1];
    end
end

endmodule

///////////////////////////////////////





