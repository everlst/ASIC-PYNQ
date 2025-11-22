// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Oct 21 19:49:15 2025
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [16:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [24:0]P;

  wire [16:0]A;
  wire [7:0]B;
  wire CLK;
  wire [24:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "17" *) 
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
  (* C_OUT_HIGH = "24" *) 
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

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "17" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "24" *) 
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
  input [16:0]A;
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [24:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [16:0]A;
  wire [7:0]B;
  wire CLK;
  wire [24:0]P;
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
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "17" *) 
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
  (* C_OUT_HIGH = "24" *) 
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
p1dTT0ZVH4obyR7ix0rlRyyF9KthwgUVHnjKeBq6qphW08SAhVHS+pZkezAMJo1Jh3cjjCIzZ7XJ
LAUdEANX6vt6lvhU67fEQ5cNeuHALU7HHbOn2JXy/vBXFvz2n/m6Nmn/27IryDpPXmSwBY0XdAv5
o7AS+j2lAcj4GnzibIHaxvGC3HDQzVfqM2pkcQoI5tQhh7ENKhR92WujhHSdD/1FUdJSfwX3i0Dm
gbu2vP6nJ1LNSyJQpC+3Jsy3tClGVR6nzVA83PyedsIyYXTsmR4urP9MoKWsU6SkcKqoHgiU7iQF
4KLg6haqOMqXMl0k1U7ZFYOTOTQGgM2oy6sIOQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lizOaReTDIMqbHNyvkoE2MbZPJHL+WiPSjVKIaa7Sz0IlgsgDC5cXlfgHIL6nZQwzZTiJgLoDEJ3
B+N9nOJdBHTKdwybcMeJYc42f11aVv9ih64yuv3e+ehTrBp2Bb/eYo1eohCkVe7xXUOi39BeWh6S
37SwvbLAIxgIuOsNVGRVvYI4LfKgSnuYkuX6kHWxaURtVCFWgfSOSBiHL9BnQYDyN7ENObaZTeCR
xASncBMr9ythEoiGMmteDz0tM0fQX6AbNpy3BZSq9EI7Y7rQOtyuVdSeuWjRO4og81XbLV9n74iq
Hqz4qqBwNf50CXZTfVox7OQ7H1VN5O7RMohkbg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7232)
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
