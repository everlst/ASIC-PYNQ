// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct 13 14:39:53 2025
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
  (* C_LATENCY = "1" *) 
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
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
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
  (* C_LATENCY = "1" *) 
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
IN8qVHhr8QQH4agi0ruAj9ikk2hXcHvaj/RuuUdm9vtT7AYYH6FpjelbxVp2pmQOyLWYuJAViuAf
qMnR1U79r/8oMdUzoRVfg0FL/F64z1ykBYCqKMllTBZT20j8oCwiJCwzXrOHImHZXsO39jjy+NqO
9B3UbCixsU5c2KM0buSiyFL6PFla2/ctLYvZuqCJFk8AZuHvkrd0Cl0ZkFLnag2A0B2/W8limU+a
mVVAT74Pz5UP09CWEUdrvk8fgaV2vGyBT4m4rtOp0x+tlptIfKJ3qXXR1CE6VEeHlyb0otGyIMn+
1YQ4/fBJ+m2VvCrGUwAcMh4QoyNJ5RjE3yH6jw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TndAaIBvdLhYGXar1SP1XIAdlPVPCrog6DJoXBBitQR5Cqh6lZA1wlXmtz6u5fhFZg9YUpTl5yVQ
WvnmyLFTphmsSaQ64VlnGB8q0r/qQLD4xdoet+VpbbUEg/w4Q7kGEABRB0BSa40VyS7eW35Hh1qs
Ly8qEEFWkU7Z100RZ0Z35vMMjfC7X/mZi5lLl9q9Z/8zz1Tv1Ir229OlqPCIL23vXOIu+q+FO9nf
D9g9KGgPNhEOkiVaGTb1acaQxU0d2srl6AZwWB9UOYHOoj4rXdIdDGnwfwb2BcPyan6u0+fVOSj0
9Rc8tKP7RnuGRB8PcakIZ30m9bu63KwEoX8mFw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7280)
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
