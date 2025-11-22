// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct 13 14:39:17 2025
// Host        : FB47 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_8_sim_netlist.v
// Design      : mult_8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_8,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [7:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [7:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [15:0]P;

  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "8" *) 
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
  (* C_OUT_HIGH = "15" *) 
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

(* C_A_TYPE = "0" *) (* C_A_WIDTH = "8" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "1" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "15" *) 
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
  input [7:0]A;
  input [7:0]B;
  input CE;
  input SCLR;
  output [1:0]ZERO_DETECT;
  output [15:0]P;
  output [47:0]PCASC;

  wire \<const0> ;
  wire [7:0]A;
  wire [7:0]B;
  wire CLK;
  wire [15:0]P;
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
  (* C_A_WIDTH = "8" *) 
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
  (* C_OUT_HIGH = "15" *) 
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
Dr533WPCN17Mz/07KAxCisH8yqOiAB/JoBQhySw2Ib/cXI/HxFZr6I4VLyLwcC5BpZjVYsL3x9HX
bEiF7Eo3aWselNY23mk/QS1DoHFivwazRWGmqQfwM0YQHwpgXSWcFa/mKysN/RxKpaLtPgFpySxi
859gj4naiusbJxrB4um3QemKpA1V8zu1eIUoFDTO63kfV8vjGNKMNzAPnmi33VzAM0t5urg8tUsJ
nIyoZRB0Ua7xP59RAgHVQ/FcCyV/xpu0njKk7C/uHHJC9p3MRDZa1pAID1GQeiD77e2UIE2O7xkj
asVs/p7V7Iv+eh/fDa8UKHYzyRJRITCpRwNuyw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TjMdYqL5WUIFE7mI0wkZhzluQlFS+2u8nTci9s5+xMa+LGyfI2pyX9lpGUuypSj1XXOqaVubqvNF
BiUsMIrFZ/krnim1xT4vueWnVRKE0vnIGsaIWwbJzgQW7StRv0dLzLusaXQs1M4kQZGb8H2UYid7
MOzv8W1Ty4tOi2DYIk1JaMSKSAgJe7KNqFkbn5AgwpMQIy1XMTY3rsWRng8DrYjxe00vwTmjlSHZ
96/LnG1WaXgvdUJ+OrP5HRE4kJehLyVAboRo2NXyMngUKiypfTAkOHLD8uLekEKFtmo+9ZyXrRKx
7AktHVb0ELlOy4C+Vr2iC30tnCemz0Mxxqunnw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7312)
`pragma protect data_block
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
h2YKEZSUaInqH4hBCs1q4A==
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
