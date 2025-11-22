// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Oct 21 20:04:30 2025
// Host        : FB47 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               Y:/Code/github/ASIC-PYNQ/LAB6/prj/LAB5_2019/LAB5_2019.srcs/sources_1/ip/multi_24/multi_24_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [25:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [33:0]P;

  wire [25:0]A;
  wire [7:0]B;
  wire CLK;
  wire [33:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "26" *) 
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
  (* C_OUT_HIGH = "33" *) 
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

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "26" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "33" *) 
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
  input [25:0]A;
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [33:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [25:0]A;
  wire [7:0]B;
  wire CLK;
  wire [33:0]P;
  wire [47:0]PCASC;
  wire [1:0]NLW_i_mult_ZERO_DETECT_UNCONNECTED;

  assign ZERO_DETECT[1] = \<const0> ;
  assign ZERO_DETECT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "26" *) 
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
  (* C_OUT_HIGH = "33" *) 
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
        .PCASC(PCASC),
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
D+00Ubz1H6YqWW5A7ZqvTLYbJeAXy34OIkCFc30aBDRih28vb8G3Sv1/qf9JnvXr5b9Czzb5v4IV
UOLc+/XnCuhbkK9+pKCqMwhV0+ofWM1UlEqN9Zk6FNrJmoKCUdvJaQ98n5SXuhX5FEP2PU0d6Qoi
mRJX7tD68EibXzTsJg+VHk1QFPKU22+R2yDUDTkIIuuIctTlR0y6yeJWpPa85ywKD+IXbQ9V9PLF
ap3vl048m4KQ7aLanpL+CTdnCe12yOeluv7rfhCVpIs776Wdub+naOL3r1MbdCHGTpz5RnCJiMAG
mM1KA2Q/T2wU7bHvDT/53ogYv96QdNDOsY+s1Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oMG+UjAvaV1FgqkkQVsZl4YpAy/gpLda7GvY9AM69hrVoN0NEe8XP14oYJeS9x1BgxjqGNNSghRn
jqgoL1KYXfWtCAhsaymi+sgQTYhzTmi9o2FHky3iTIA1D7TmQVm6kQpcyPkakA4A/qj9NDlnjl4y
OZpdTxrkbTJBEVnmhwWzGP3XZUlUwAtAmhvStBV8lgSYFkAWRh59BmTaMfSdnjVzuSVUmODA6BLh
39dFU7GXqQpxeO/dS/kU/qDaROXv1cc1dfYLs5yvWtKk9gTCJD+8uA/zCq971U3s2A5J3aycqCQD
AIFzfhzf62/6xc2ufQzo1pD/HEkr2JkNk3UY+g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14224)
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
