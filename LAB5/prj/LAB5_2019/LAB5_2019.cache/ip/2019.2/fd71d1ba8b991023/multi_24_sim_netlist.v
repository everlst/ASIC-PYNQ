// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct 13 15:01:59 2025
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
  (* C_LATENCY = "3" *) 
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
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
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
  (* C_LATENCY = "3" *) 
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
ICDanimkiA1kVOJh1eXFmK7QvlBLYfHXatRrScK2uKrTv599R+RuTViAqtih3pUwKGPKfIpUDV4K
tyt3XPAAOPGUYdaaB4kBgCXQXOFeGT4JMY3O9qB6jQMZgeKFV5JkuI5lJIBTouE30VeWxypBUyVB
BbNtGax4gPbx6qoKTKgyCzwsqth4xSmuBn3E60PrjEZJbQayb6t2iWEaZ1lAKxm9jynR3FL359e5
O1w5bugNSzOnyoGZEHxJoWqfLxGy5C+eepj2IA9s6EiPZEeJmc3nxg76mPjf0We50Vot3asCW/rI
/hDbtW8FZpEpR4DrDMn5iwQSOQMkOvBAlfIYzw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
11ZeMGnNsr/Oy866E0kamRHvizxOiA+MN2GSTJKkZez/RrBx/qXIJ+vOFjv27VJLdI9fcUuw0B8p
4guaPNxlA67xzJTi/IWVkTnQbn1bTMlX5rrqoXppkN5Q1Y5SdC+XA9H5w3vYr5c0tsD9QqM5mv5K
G+6wO5Dyy006pZV3Ufn5dnqo6jdPdbhLcwZ7sY+P1p/tJo4XMSM358UvN69ajkRCOyl3ffwYjfbg
q07nH23/ssIwhC3TOEzLILZqxxhPaMo25dQRe9BZr4UtK1F4YQkGmwTUix2b9AvxQ+aJ9ccvsPBt
9yd9qH7vA3XgXgl67kLimIgpbcPEe2FlCtC8hA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7152)
`pragma protect data_block
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
V7+l9mq8AYvih14P8OoA8nBfV5JO2D6kD50L
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
