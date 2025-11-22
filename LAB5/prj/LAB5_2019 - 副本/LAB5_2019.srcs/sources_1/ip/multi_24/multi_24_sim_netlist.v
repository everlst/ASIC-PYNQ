// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct 13 16:29:45 2025
// Host        : FB47 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               y:/Code/github/ASIC-PYNQ/LAB5/prj/LAB5_2019/LAB5_2019.srcs/sources_1/ip/multi_24/multi_24_sim_netlist.v
// Design      : multi_24
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multi_24,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module multi_24
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [23:0]A;
  wire [7:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "24" *) 
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
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multi_24_mult_gen_v12_0_16 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "24" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module multi_24_mult_gen_v12_0_16
   (CLK,
    A,
    B,
    CE,
    SCLR,
    ZERO_DETECT,
    P,
    PCASC);
  input CLK;
  input [23:0]A;
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [31:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [23:0]A;
  wire [7:0]B;
  wire CLK;
  wire [31:0]P;
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
  (* C_A_WIDTH = "24" *) 
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
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  multi_24_mult_gen_v12_0_16_viv i_mult
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
miEW9I77liZXVsP3KMeJskWtKGvTN++czdzmGbn2OdJ6VH0tJ5VuYwG4np5bnmDlMjZdahCL2Pue
rMLrAX/LBYBvqscad3yYXEpmWxPFmroT/9F8+JIxLs3Zft71j1/sOMtvoN3u6aqWOD9HVFuEsx6O
mt0A/6Aun/De6t2297JkO1SdURv5DbvK18H1PT2P+H/1AHLdxGStjxwgvPS23X06puDps+RL35eD
qqeaxjOgMhDvspqCLG7Mt8A2amZUiwMB2iPmxFBlJvpjJhvSDBKhbxIw8gqIxdzJclg/j3nWYVca
4DAM6bqY7a+6A4noEd+V+Q86adMqLa6YysdUrA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
51M/Ew5ymvSblBfYLKquDevCjunCNsryGOBoKL2iQiahMu04loqo3pi4xxxrN/ETz/E44B8qd+5H
Go0jsVGj+3xNAxNvaa+GEN6hBm+jyxYbEBrsWlzLItSbLAMkyQM/A5jmGIUk2dUUZdo8wXBufTVJ
v1k1ZDINVJ/Y5nNKAC/zBGhuvqzNLo340+xT+wiUfa6aFsJcDcT1QZHV0fbITj7jZghetvali8VS
PWrLkcluFOz/ikNHrhOD9aA7bpR84KqiwnnhQeO3AlSFutMxk+Sak1qNwFD61XX5ryFmtc4s1Lbi
K8ZcCc030BatNlH7QhMG7HU0z78/XNOJZ9xFtg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7168)
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
