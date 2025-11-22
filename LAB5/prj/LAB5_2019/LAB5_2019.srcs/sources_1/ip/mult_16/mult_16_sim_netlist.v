// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct 13 16:35:44 2025
// Host        : FB47 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               y:/Code/github/ASIC-PYNQ/LAB5/prj/LAB5_2019/LAB5_2019.srcs/sources_1/ip/mult_16/mult_16_sim_netlist.v
// Design      : mult_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_16,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module mult_16
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [23:0]P;

  wire [15:0]A;
  wire [7:0]B;
  wire CLK;
  wire [23:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "23" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_16_mult_gen_v12_0_16 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "23" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_16_mult_gen_v12_0_16
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [15:0]A;
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [23:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [15:0]A;
  wire [7:0]B;
  wire CLK;
  wire [23:0]P;
  wire [47:0]NLW_i_mult_PCASC_UNCONNECTED;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign PCASC[47] = \<const0> ;
  assign PCASC[46] = \<const0> ;
  assign PCASC[45] = \<const0> ;
  assign PCASC[44] = \<const0> ;
  assign PCASC[43] = \<const0> ;
  assign PCASC[42] = \<const0> ;
  assign PCASC[41] = \<const0> ;
  assign PCASC[40] = \<const0> ;
  assign PCASC[39] = \<const0> ;
  assign PCASC[38] = \<const0> ;
  assign PCASC[37] = \<const0> ;
  assign PCASC[36] = \<const0> ;
  assign PCASC[35] = \<const0> ;
  assign PCASC[34] = \<const0> ;
  assign PCASC[33] = \<const0> ;
  assign PCASC[32] = \<const0> ;
  assign PCASC[31] = \<const0> ;
  assign PCASC[30] = \<const0> ;
  assign PCASC[29] = \<const0> ;
  assign PCASC[28] = \<const0> ;
  assign PCASC[27] = \<const0> ;
  assign PCASC[26] = \<const0> ;
  assign PCASC[25] = \<const0> ;
  assign PCASC[24] = \<const0> ;
  assign PCASC[23] = \<const0> ;
  assign PCASC[22] = \<const0> ;
  assign PCASC[21] = \<const0> ;
  assign PCASC[20] = \<const0> ;
  assign PCASC[19] = \<const0> ;
  assign PCASC[18] = \<const0> ;
  assign PCASC[17] = \<const0> ;
  assign PCASC[16] = \<const0> ;
  assign PCASC[15] = \<const0> ;
  assign PCASC[14] = \<const0> ;
  assign PCASC[13] = \<const0> ;
  assign PCASC[12] = \<const0> ;
  assign PCASC[11] = \<const0> ;
  assign PCASC[10] = \<const0> ;
  assign PCASC[9] = \<const0> ;
  assign PCASC[8] = \<const0> ;
  assign PCASC[7] = \<const0> ;
  assign PCASC[6] = \<const0> ;
  assign PCASC[5] = \<const0> ;
  assign PCASC[4] = \<const0> ;
  assign PCASC[3] = \<const0> ;
  assign PCASC[2] = \<const0> ;
  assign PCASC[1] = \<const0> ;
  assign PCASC[0] = \<const0> ;
  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "8" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "23" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mult_16_mult_gen_v12_0_16_viv i_mult
       (.A(A),
        .B(B),
        .CE(1'b0),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_i_mult_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_i_mult_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
HPMPLvpmoX7LOmPj78BMT9X1rCnPz6PdhVGZQ307N9haGfAdMGVirvGR3e0Glyn2ieoWqXA6qOQL
t0xn28+h0g==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Nxv/BnutRgdmHnLyK7kvDGjm7WGfFKW2mxQ6xUKF14zS4ziz5pSV0ueW4VqAzUyEPsErIAEuyV6F
m5KCqRBB197Q2NbZa7O7tdAqboX6tPAJzbB6u4U/MmNS1AQcSgtfj5srMbdBzDa5pR4V3HrI0MRj
0xhV1BWf725FYPP4av0=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F5KGJgEDQsX2btdjtRUlSmNtuyodIhGXEa3/AXv1Y7qgSO8gknBfiqj5HcIaVA9b4npQpDnNcmq+
1ONAqLeLhdOm9TES+GsTAkh/lClvl89bzfqgOV33iqwQHYIHwSsWMRXT9JSUx+YWu+g6xKpT1Ycn
8BCPsq4QUJIqL6W16fheEHB/lkMgnespIWEYJJG6R6zvv2zG8GiU6cG8zHrRjdvAj8kOkhmiMvSd
YjGXJSMfjw7ojCPSUF+nb6WWhUEmoMA/6lgSVaXRm00YHSZ09k7rKTJWSXFSpTmkL2WOsQhNS0ek
jdTK2KF5K6z2YOK4zkfHgZ+fB0KJyANaLLJH/Q==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lFuQXeJ0hi7qnIKAR+37XCSOwp8bGLukonngcICceOVpL87+rxvhP5TyNJ/zXpAWDF0BaRYlGr7d
isPiUStrvUthNyOqCr4vFZyhCdY8n+Mrv3OCvLoLQSarxVXbaKbXb0tPsXJCUdXTrCt9mr5x0Nda
6DAI8FBPlFMAiqnFXnYMwlUiSlkNWUpInuNw7+1eD8kUdckEUV1PDwZ0yjpFqMokMH9oJjN6z0Yy
65D8Tqo288ZMfZQuIimjski+X6EK157XbpyuoZIuYLJ7j6oaATdintgfZpgGzVvhCZtMbx6/SJtR
efW5vLBGiGs7rPBPE2T8fosHGOvmeC9QBSj8Ww==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q8VVvHzTNgU3tZr4+8ia7ylST+kbNPWskONHDOT1dTkB7cHZIAWyzXpQZPuEgk2wJq21PoqmVlG9
t08IYzkfC8vYQ2LRf2Co3SXc7p3gF2OFMC68J9Nf9D+/PXJCJy3QO4H8oO39l6bn8c56K2ARnK0R
mMIALbCWSBDGCWGQmXWZJ+xmDGs1KgTeiSW3bZRftWJ6K8l8BhMit8BLOY2Mi3jJ0WRhN8kKd6JT
D4NU1jTZT6jEtmI7Gnj/AXG6auTqDPHsVQzf+ZzBsLTfw83CFoO70xM997L5cZXlqz8fEDmxezkr
wWxPwJbJeVkRV3tUxlo2Bs2x1uVkXQeNVMI8jg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oUeTLA0HA2uKORUHo1HidNC3lw54gxwlLUkv28qRPv1pz7AEVUbIJ7wsyu2Scju+EkC2Ivi8HbBn
jxkeqRDTAwAbAqIKnY3AdyfojN9Hb8SMLcLnpWLLCpb6E0vwA09r7uqKRZ8wYAgT9CPFvzpQ3zKt
9DTLgQ3rZtFxx2nfCug=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Fayrlym1l14Y48yZ195XboT9ZQmp/mAzUyHby3Y9qJTzDF+m6mRQ/ZbebObo8bu4VAm45JeETPx1
YI4UZNOK4IqKv0BZsAlzUfAYAmqmkmIJYbn2gWUCwXyKX5AoA4ONnlxEHxzZhqtsmEXvxwTEs25/
R7iLzeoMfmwwNHgPNQkteiR4zDlB76CYmgu6EOSUX5Nnitq1oh7qRuU8WqWN7lLfgIC6T7qNHwGD
RPze2yiP06fSG45jPrOn2fvBX9SRbUXjNtiFgmqim4anwJU46v7y3ubit/I6giZhz5PJMZfkDaFX
ag+uCMq4Q8ZEolqMBmjUjat86BdVd4Nmr0yUaA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kIpxh3qIIkWUg8aLJSPKvKhKTPFH7T8fisti5RtNaftS7xh3KDsGLYnF1lYhH2RVXgzbdaVqvtED
5QJazVo6wUFI91xgFeOR5jX+Ny5UBUX2MngsK+UZyZg5+EdtSiDtiJNtQqgjq1Rn+XQCGF3xP80n
7YvuVMbgRHCAfWrWw7ZJ7Y3raRzeIkx+koPFio7XnC+QdRJ0ItO1YtQgF4Sg1Ihr5TH8/RrNn903
kPa+anH9spo3SFCf2Ts11UXAGLdIBmOLMtEAKjjCUbtmjGSeSc0gn2q2I+xRTFcegLevlr/iuLTw
3lFndBAoW40xOiCDjWZ6Rz7J+jZhsRl3D0Bhwg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ae/E/hVHdEtWwSO07bSNSv0zzg32ZoZytRbYEsSR98VnENfA6v6EkNnKnhovsdFpF+sH4mUse+YI
hNcsX+dl9Hu2CZSfQABXRLZF2LufWXUzy+43/SrQPSi3bqFCr+Oo5CAGkeKRWMGBRjjS9XSum//l
3QzMNSiTbb9LdhqvnLYpSygVmh4HyAK4xZ8WL3T1Ky+IMo0UT85m6oMjkTr7fkQxcZ94NrMSlUft
is37tSukoUj5r/+GW07PCoa1yTqY5l6Y2FFNs8VWwIYkGeTn4Xk1+JVvckEiQmRhJMdz7Q65nHEh
CCeOUBc7Ev4ilJHdy5a9FAriABI2mZFxra2gNA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TaHvxhGTfzqlQjwXW+yqcXgasEI6lQxDiEE95K7y9nGYbewTCOlHxwsY7m1dCv7fwMAPwOvx7hcM
A4Z4oa4a1WsUZusc15/TEmbZzTlqRU8xeI4fLeQSDI5ZG7HwgxxQxb0FNxY4g7Cu5Riz2tnyXDnW
8/L7k1typ52EebezWuqA56K4ti5xFRKsfl/ugND1HCDWDSGUkkKvigOlQyrfhylG0TRHMj++YcWj
b1mWLX9R5NGG1O4bxxZdqQKG6MnauQ3GVlkGAi7e7xynzvMUjjabJYnBXRDatcZ8j8IvvEjgFBmk
KgO8qPP1y1ZrgRWez7p6yLann0+Gip3w3g0sOw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7216)
`pragma protect data_block
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
`pragma protect end_protected
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
