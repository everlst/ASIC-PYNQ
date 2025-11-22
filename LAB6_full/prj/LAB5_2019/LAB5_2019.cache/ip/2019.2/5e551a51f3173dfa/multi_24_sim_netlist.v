// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct 13 16:29:44 2025
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
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "31" *) 
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
IDwWZQsxOyYAhmTpbZ1pavQqVCat5TfxYF0pN0z21NMbhrygNaeikLmtfHF9TDOATIfZS6h9SoEj
KKfVt1o3nERQfQRVrks88Cq4zmKRWfyK3lT/ak1cnS2+8poWVU49b5XQLBxeM+bC2CFUfOKdPTOT
VWGj1PD6suTJ+6KwzMD0okjGM3GPk91mh37BUY11EGXHk1rNCEhkglKSDNPBjPcG1we/qAMEGJyZ
7kN5aJkDjuLnnXIN4n+Ca23REWIVNR02LJ5l0wvjThY9tQvFv/4dBxECQmrNWD/FPZGTjhalkjO2
P68GHg2PCgiygz5cIAduA7J/KpKJHH5A74HEew==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
c94R7PrnkjbYf9VEHYbxyGIZfD4LxahPDA4KF0f6fj57Ii7Ic4kICjEUBtAtY9TTChhcJi8XtCB9
3EiYkcY3jP7V2fCq08MoI6fomC/0mqR2dKOVT+7gbYUVhI0rF+ne8ZAsvPe843J8zNew/xNZ53I3
Me8NOFitrKkmCetuZkNQVCeVooAB7XUpm7njieJqKuNCSXfch7kv9vGMqTPwidLAFnwcTEU+sgr5
oU2eL3l9nvsbsbqm83YySNBtj0HNLpKW2Cl97N/dfv0QuOnveFqzTG1e5Nxm7ktIqXFDVSlfBlYd
QHIJB5yIR+7aryAd/rR3ek4w5ZlNscvCHM9+rA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7200)
`pragma protect data_block
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
pByPKYjjYgRS4RgUD6bly+v/
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
