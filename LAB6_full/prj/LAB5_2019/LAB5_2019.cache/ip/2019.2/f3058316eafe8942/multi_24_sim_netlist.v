// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct 13 14:41:47 2025
// Host        : FB47 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ multi_24_sim_netlist.v
// Design      : multi_24
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "multi_24,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [23:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [41:0]P;

  wire [23:0]A;
  wire [17:0]B;
  wire CLK;
  wire [41:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "24" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "41" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16 U0
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
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "18" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "41" *) 
(* C_OUT_LOW = "0" *) (* C_ROUND_OUTPUT = "0" *) (* C_ROUND_PT = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16
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
  input [17:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [41:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [23:0]A;
  wire [17:0]B;
  wire CLK;
  wire [41:0]P;
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
  (* C_B_WIDTH = "18" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "41" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16_viv i_mult
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
cNoULCe2bbEwgcDAb4J7m3emt5Nbs/uTJVmK1nFvjiLC1y7fbh+sWrJ6h6SxWjU8gMctNpxtuuc6
98g3i4AQYRu0q73kW3F8rY9tU1Nt/oI9SG5m721PCMSTpDMKC5eM0xdj3xLe97jTqRZtEr2/2lxR
KdmA801DxLhq6czip05/2Pxi/RVDYHg3t+uUj57nzF8G9kM1dlTbZelu2DjDihNiS7anLnKvA2RL
iWXWcZrGYhOiiPFl/OFPKZGueS2NpjV5IWIYTLing65z8aEkY3eSpR9cgsqQfDTHGxUhM/Z/QKez
ZWgP/vQFgvnkKRHgPOQg4EeQzXdiUSne9xWFsQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TthBnMvJ8lZbwlxxJrdrycgm18IxE3190JL+nBg/L2tyVZA59ozWxunokBAjre4c58IbJW2QXr+w
aSJc6TOVkd0rQ9G7iQtAYhm6ll0XPDkCcnSDhSaJJG9QVKGRJ5QGnnAjTfTxi9AzoXj/ge0J6nKh
BhXtBpCG1ADj5wtsaG68QEMcBrYAuB89sFFbeVCrHNAMTWD9fpUIWHS11fNFuV9MN3jNdwuP/kbi
9QINCut2BWShFFC1HTRmC1+y8WmONJhtAbwLxNy5uJdZzIpL9LALVnvry/x9ygcJGlUA15BO6lcn
gAe3mC9TGOpiaBnilCGOoxtXse94xL20jkFPDg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7184)
`pragma protect data_block
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
OC0=
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
