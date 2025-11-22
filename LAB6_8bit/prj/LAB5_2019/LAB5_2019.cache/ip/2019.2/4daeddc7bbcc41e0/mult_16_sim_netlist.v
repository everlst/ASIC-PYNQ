// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct 13 16:35:43 2025
// Host        : FB47 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_16_sim_netlist.v
// Design      : mult_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_16,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "16" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "23" *) 
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
P2Z+do40wzITELpHFEc6HZ1oKrZuEKh+cq/uq3SjA4odCWyTjjhXNJCEs3sOF1geeFCIrl5z+c62
eluZgSqRSX0FY/K/Y6Ehapqnh3575yomzkphT2fo2EFIvKlObU3TaoR9dvH8/MO0zGTOBTB5kz0K
mxhewNxOW5VMmyQQY2C25nFrKAMmPUifdQJj4DkkT4HaFQnijC2pASkVdPzi88zXn8or/a2RUKzn
bw3vdF2RdcraQG+s/oHfcf2wBCdwohUAwEcwELW7ufQfnlN24XNA6PeNPaYSQajFrgdIhiZr1xz/
wckH5zlKYwXc9EIRbKRW90eJ6iLxOO1/DF1pRQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CicVht5dep7a0643oABbUy4D6Tx1jPDxoyzETynoLfKptoYWvfQwp2uOVxP5T3suChb/hV+gwCns
GB8w7bWMKiVZbO/Fzi6ZOOSmCYnxp8rMGNjFSGmG7RNXhVoHnem8beGnz+bPSgiQC6Dw8IrCtLwp
dh+oUUTiaU5HhYJ6d+tonOq0LEaR1YtO6ZhuQK+G3m+HlVVAhTFtpZeg168DMd8dRWVaU8Ilc7NE
ncyQ4dL8nUhh1/8ZupLjXNR40UmKtwGqRZqWRdvP1v+TfsQsZ3K3GiplSXFA81ShXt19gO1PZUqO
GIiFM/r63Wxkf2yYKOW834EF1Jf8Ryiyjp3SMg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7248)
`pragma protect data_block
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
aUucx8nttgTR
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
