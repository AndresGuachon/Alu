////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: ALU_8BITS_synthesis.v
// /___/   /\     Timestamp: Sun Jun 19 12:31:14 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim ALU_8BITS.ngc ALU_8BITS_synthesis.v 
// Device	: xc3s50-5-pq208
// Input file	: ALU_8BITS.ngc
// Output file	: C:\Xilinx\ALU_EJEMPLO\netgen\synthesis\ALU_8BITS_synthesis.v
// # of Modules	: 1
// Design Name	: ALU_8BITS
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module ALU_8BITS (
d_o, a_i, b_i, opcode_i
);
  output [7 : 0] d_o;
  input [7 : 0] a_i;
  input [7 : 0] b_i;
  input [1 : 0] opcode_i;
  wire Mmux_d_o10;
  wire Mmux_d_o12;
  wire Mmux_d_o14;
  wire Mmux_d_o16;
  wire Mmux_d_o2;
  wire Mmux_d_o4;
  wire Mmux_d_o6;
  wire Mmux_d_o8;
  wire a_i_0_IBUF_31;
  wire a_i_1_IBUF_32;
  wire a_i_2_IBUF_33;
  wire a_i_3_IBUF_34;
  wire a_i_4_IBUF_35;
  wire a_i_5_IBUF_36;
  wire a_i_6_IBUF_37;
  wire a_i_7_IBUF_38;
  wire b_i_0_IBUF_47;
  wire b_i_1_IBUF_48;
  wire b_i_2_IBUF_49;
  wire b_i_3_IBUF_50;
  wire b_i_4_IBUF_51;
  wire b_i_5_IBUF_52;
  wire b_i_6_IBUF_53;
  wire b_i_7_IBUF_54;
  wire d_o_0_OBUF_63;
  wire d_o_1_OBUF_64;
  wire d_o_2_OBUF_65;
  wire d_o_3_OBUF_66;
  wire d_o_4_OBUF_67;
  wire d_o_5_OBUF_68;
  wire d_o_6_OBUF_69;
  wire d_o_7_OBUF_70;
  wire d_o_mux0000;
  wire opcode_i_0_IBUF_82;
  wire opcode_i_1_IBUF_83;
  wire [6 : 0] Maddsub_d_o_addsub0000_cy;
  wire [7 : 0] Maddsub_d_o_addsub0000_lut;
  wire [7 : 0] d_o_addsub0000;
  MUXCY   \Maddsub_d_o_addsub0000_cy<0>  (
    .CI(d_o_mux0000),
    .DI(a_i_0_IBUF_31),
    .S(Maddsub_d_o_addsub0000_lut[0]),
    .O(Maddsub_d_o_addsub0000_cy[0])
  );
  XORCY   \Maddsub_d_o_addsub0000_xor<0>  (
    .CI(d_o_mux0000),
    .LI(Maddsub_d_o_addsub0000_lut[0]),
    .O(d_o_addsub0000[0])
  );
  MUXCY   \Maddsub_d_o_addsub0000_cy<1>  (
    .CI(Maddsub_d_o_addsub0000_cy[0]),
    .DI(a_i_1_IBUF_32),
    .S(Maddsub_d_o_addsub0000_lut[1]),
    .O(Maddsub_d_o_addsub0000_cy[1])
  );
  XORCY   \Maddsub_d_o_addsub0000_xor<1>  (
    .CI(Maddsub_d_o_addsub0000_cy[0]),
    .LI(Maddsub_d_o_addsub0000_lut[1]),
    .O(d_o_addsub0000[1])
  );
  MUXCY   \Maddsub_d_o_addsub0000_cy<2>  (
    .CI(Maddsub_d_o_addsub0000_cy[1]),
    .DI(a_i_2_IBUF_33),
    .S(Maddsub_d_o_addsub0000_lut[2]),
    .O(Maddsub_d_o_addsub0000_cy[2])
  );
  XORCY   \Maddsub_d_o_addsub0000_xor<2>  (
    .CI(Maddsub_d_o_addsub0000_cy[1]),
    .LI(Maddsub_d_o_addsub0000_lut[2]),
    .O(d_o_addsub0000[2])
  );
  MUXCY   \Maddsub_d_o_addsub0000_cy<3>  (
    .CI(Maddsub_d_o_addsub0000_cy[2]),
    .DI(a_i_3_IBUF_34),
    .S(Maddsub_d_o_addsub0000_lut[3]),
    .O(Maddsub_d_o_addsub0000_cy[3])
  );
  XORCY   \Maddsub_d_o_addsub0000_xor<3>  (
    .CI(Maddsub_d_o_addsub0000_cy[2]),
    .LI(Maddsub_d_o_addsub0000_lut[3]),
    .O(d_o_addsub0000[3])
  );
  MUXCY   \Maddsub_d_o_addsub0000_cy<4>  (
    .CI(Maddsub_d_o_addsub0000_cy[3]),
    .DI(a_i_4_IBUF_35),
    .S(Maddsub_d_o_addsub0000_lut[4]),
    .O(Maddsub_d_o_addsub0000_cy[4])
  );
  XORCY   \Maddsub_d_o_addsub0000_xor<4>  (
    .CI(Maddsub_d_o_addsub0000_cy[3]),
    .LI(Maddsub_d_o_addsub0000_lut[4]),
    .O(d_o_addsub0000[4])
  );
  MUXCY   \Maddsub_d_o_addsub0000_cy<5>  (
    .CI(Maddsub_d_o_addsub0000_cy[4]),
    .DI(a_i_5_IBUF_36),
    .S(Maddsub_d_o_addsub0000_lut[5]),
    .O(Maddsub_d_o_addsub0000_cy[5])
  );
  XORCY   \Maddsub_d_o_addsub0000_xor<5>  (
    .CI(Maddsub_d_o_addsub0000_cy[4]),
    .LI(Maddsub_d_o_addsub0000_lut[5]),
    .O(d_o_addsub0000[5])
  );
  MUXCY   \Maddsub_d_o_addsub0000_cy<6>  (
    .CI(Maddsub_d_o_addsub0000_cy[5]),
    .DI(a_i_6_IBUF_37),
    .S(Maddsub_d_o_addsub0000_lut[6]),
    .O(Maddsub_d_o_addsub0000_cy[6])
  );
  XORCY   \Maddsub_d_o_addsub0000_xor<6>  (
    .CI(Maddsub_d_o_addsub0000_cy[5]),
    .LI(Maddsub_d_o_addsub0000_lut[6]),
    .O(d_o_addsub0000[6])
  );
  XORCY   \Maddsub_d_o_addsub0000_xor<7>  (
    .CI(Maddsub_d_o_addsub0000_cy[6]),
    .LI(Maddsub_d_o_addsub0000_lut[7]),
    .O(d_o_addsub0000[7])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  d_o_mux00002 (
    .I0(opcode_i_0_IBUF_82),
    .I1(opcode_i_1_IBUF_83),
    .O(d_o_mux0000)
  );
  IBUF   a_i_7_IBUF (
    .I(a_i[7]),
    .O(a_i_7_IBUF_38)
  );
  IBUF   a_i_6_IBUF (
    .I(a_i[6]),
    .O(a_i_6_IBUF_37)
  );
  IBUF   a_i_5_IBUF (
    .I(a_i[5]),
    .O(a_i_5_IBUF_36)
  );
  IBUF   a_i_4_IBUF (
    .I(a_i[4]),
    .O(a_i_4_IBUF_35)
  );
  IBUF   a_i_3_IBUF (
    .I(a_i[3]),
    .O(a_i_3_IBUF_34)
  );
  IBUF   a_i_2_IBUF (
    .I(a_i[2]),
    .O(a_i_2_IBUF_33)
  );
  IBUF   a_i_1_IBUF (
    .I(a_i[1]),
    .O(a_i_1_IBUF_32)
  );
  IBUF   a_i_0_IBUF (
    .I(a_i[0]),
    .O(a_i_0_IBUF_31)
  );
  IBUF   b_i_7_IBUF (
    .I(b_i[7]),
    .O(b_i_7_IBUF_54)
  );
  IBUF   b_i_6_IBUF (
    .I(b_i[6]),
    .O(b_i_6_IBUF_53)
  );
  IBUF   b_i_5_IBUF (
    .I(b_i[5]),
    .O(b_i_5_IBUF_52)
  );
  IBUF   b_i_4_IBUF (
    .I(b_i[4]),
    .O(b_i_4_IBUF_51)
  );
  IBUF   b_i_3_IBUF (
    .I(b_i[3]),
    .O(b_i_3_IBUF_50)
  );
  IBUF   b_i_2_IBUF (
    .I(b_i[2]),
    .O(b_i_2_IBUF_49)
  );
  IBUF   b_i_1_IBUF (
    .I(b_i[1]),
    .O(b_i_1_IBUF_48)
  );
  IBUF   b_i_0_IBUF (
    .I(b_i[0]),
    .O(b_i_0_IBUF_47)
  );
  IBUF   opcode_i_1_IBUF (
    .I(opcode_i[1]),
    .O(opcode_i_1_IBUF_83)
  );
  IBUF   opcode_i_0_IBUF (
    .I(opcode_i[0]),
    .O(opcode_i_0_IBUF_82)
  );
  OBUF   d_o_7_OBUF (
    .I(d_o_7_OBUF_70),
    .O(d_o[7])
  );
  OBUF   d_o_6_OBUF (
    .I(d_o_6_OBUF_69),
    .O(d_o[6])
  );
  OBUF   d_o_5_OBUF (
    .I(d_o_5_OBUF_68),
    .O(d_o[5])
  );
  OBUF   d_o_4_OBUF (
    .I(d_o_4_OBUF_67),
    .O(d_o[4])
  );
  OBUF   d_o_3_OBUF (
    .I(d_o_3_OBUF_66),
    .O(d_o[3])
  );
  OBUF   d_o_2_OBUF (
    .I(d_o_2_OBUF_65),
    .O(d_o[2])
  );
  OBUF   d_o_1_OBUF (
    .I(d_o_1_OBUF_64),
    .O(d_o[1])
  );
  OBUF   d_o_0_OBUF (
    .I(d_o_0_OBUF_63),
    .O(d_o[0])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_d_o_addsub0000_lut<0>  (
    .I0(a_i_0_IBUF_31),
    .I1(b_i_0_IBUF_47),
    .I2(opcode_i_0_IBUF_82),
    .I3(opcode_i_1_IBUF_83),
    .O(Maddsub_d_o_addsub0000_lut[0])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_d_o_addsub0000_lut<1>  (
    .I0(a_i_1_IBUF_32),
    .I1(b_i_1_IBUF_48),
    .I2(opcode_i_0_IBUF_82),
    .I3(opcode_i_1_IBUF_83),
    .O(Maddsub_d_o_addsub0000_lut[1])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_d_o_addsub0000_lut<2>  (
    .I0(a_i_2_IBUF_33),
    .I1(b_i_2_IBUF_49),
    .I2(opcode_i_0_IBUF_82),
    .I3(opcode_i_1_IBUF_83),
    .O(Maddsub_d_o_addsub0000_lut[2])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_d_o_addsub0000_lut<3>  (
    .I0(a_i_3_IBUF_34),
    .I1(b_i_3_IBUF_50),
    .I2(opcode_i_0_IBUF_82),
    .I3(opcode_i_1_IBUF_83),
    .O(Maddsub_d_o_addsub0000_lut[3])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_d_o_addsub0000_lut<4>  (
    .I0(a_i_4_IBUF_35),
    .I1(b_i_4_IBUF_51),
    .I2(opcode_i_0_IBUF_82),
    .I3(opcode_i_1_IBUF_83),
    .O(Maddsub_d_o_addsub0000_lut[4])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_d_o_addsub0000_lut<5>  (
    .I0(a_i_5_IBUF_36),
    .I1(b_i_5_IBUF_52),
    .I2(opcode_i_0_IBUF_82),
    .I3(opcode_i_1_IBUF_83),
    .O(Maddsub_d_o_addsub0000_lut[5])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_d_o_addsub0000_lut<6>  (
    .I0(a_i_6_IBUF_37),
    .I1(b_i_6_IBUF_53),
    .I2(opcode_i_0_IBUF_82),
    .I3(opcode_i_1_IBUF_83),
    .O(Maddsub_d_o_addsub0000_lut[6])
  );
  LUT4 #(
    .INIT ( 16'h9996 ))
  \Maddsub_d_o_addsub0000_lut<7>  (
    .I0(a_i_7_IBUF_38),
    .I1(b_i_7_IBUF_54),
    .I2(opcode_i_0_IBUF_82),
    .I3(opcode_i_1_IBUF_83),
    .O(Maddsub_d_o_addsub0000_lut[7])
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  Mmux_d_o21 (
    .I0(opcode_i_0_IBUF_82),
    .I1(b_i_0_IBUF_47),
    .I2(a_i_0_IBUF_31),
    .O(Mmux_d_o2)
  );
  MUXF5   Mmux_d_o2_f5 (
    .I0(d_o_addsub0000[0]),
    .I1(Mmux_d_o2),
    .S(opcode_i_1_IBUF_83),
    .O(d_o_0_OBUF_63)
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  Mmux_d_o41 (
    .I0(opcode_i_0_IBUF_82),
    .I1(b_i_1_IBUF_48),
    .I2(a_i_1_IBUF_32),
    .O(Mmux_d_o4)
  );
  MUXF5   Mmux_d_o4_f5 (
    .I0(d_o_addsub0000[1]),
    .I1(Mmux_d_o4),
    .S(opcode_i_1_IBUF_83),
    .O(d_o_1_OBUF_64)
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  Mmux_d_o61 (
    .I0(opcode_i_0_IBUF_82),
    .I1(b_i_2_IBUF_49),
    .I2(a_i_2_IBUF_33),
    .O(Mmux_d_o6)
  );
  MUXF5   Mmux_d_o6_f5 (
    .I0(d_o_addsub0000[2]),
    .I1(Mmux_d_o6),
    .S(opcode_i_1_IBUF_83),
    .O(d_o_2_OBUF_65)
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  Mmux_d_o81 (
    .I0(opcode_i_0_IBUF_82),
    .I1(b_i_3_IBUF_50),
    .I2(a_i_3_IBUF_34),
    .O(Mmux_d_o8)
  );
  MUXF5   Mmux_d_o8_f5 (
    .I0(d_o_addsub0000[3]),
    .I1(Mmux_d_o8),
    .S(opcode_i_1_IBUF_83),
    .O(d_o_3_OBUF_66)
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  Mmux_d_o101 (
    .I0(opcode_i_0_IBUF_82),
    .I1(b_i_4_IBUF_51),
    .I2(a_i_4_IBUF_35),
    .O(Mmux_d_o10)
  );
  MUXF5   Mmux_d_o10_f5 (
    .I0(d_o_addsub0000[4]),
    .I1(Mmux_d_o10),
    .S(opcode_i_1_IBUF_83),
    .O(d_o_4_OBUF_67)
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  Mmux_d_o121 (
    .I0(opcode_i_0_IBUF_82),
    .I1(b_i_5_IBUF_52),
    .I2(a_i_5_IBUF_36),
    .O(Mmux_d_o12)
  );
  MUXF5   Mmux_d_o12_f5 (
    .I0(d_o_addsub0000[5]),
    .I1(Mmux_d_o12),
    .S(opcode_i_1_IBUF_83),
    .O(d_o_5_OBUF_68)
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  Mmux_d_o141 (
    .I0(opcode_i_0_IBUF_82),
    .I1(b_i_6_IBUF_53),
    .I2(a_i_6_IBUF_37),
    .O(Mmux_d_o14)
  );
  MUXF5   Mmux_d_o14_f5 (
    .I0(d_o_addsub0000[6]),
    .I1(Mmux_d_o14),
    .S(opcode_i_1_IBUF_83),
    .O(d_o_6_OBUF_69)
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  Mmux_d_o161 (
    .I0(opcode_i_0_IBUF_82),
    .I1(b_i_7_IBUF_54),
    .I2(a_i_7_IBUF_38),
    .O(Mmux_d_o16)
  );
  MUXF5   Mmux_d_o16_f5 (
    .I0(d_o_addsub0000[7]),
    .I1(Mmux_d_o16),
    .S(opcode_i_1_IBUF_83),
    .O(d_o_7_OBUF_70)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

