// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct 13 16:35:10 2025
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
  (* C_LATENCY = "3" *) 
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
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
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
  (* C_LATENCY = "3" *) 
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
btNPSppMgIw4pCLdVU1gsoraNsuMcRc2FFzaDwZ4fsQoG3jNqSz3OlCrMuot/HBy1YbOEdxi01GC
KL0eYmzpYzXpAkwvlg7pfGsH7D3U7SYcXUvsfGsjdG1PwX53XfMXfI12RK5IqosTgq1Fvc2C86Zy
evltlWW9SQgIqy2HdK0F5Xy/a6gtK2AOKv8SACdA3jPHWTDrLf3jI1Zuk7TtjcgYBeiDydwEY4Tw
10YAoaGO9kCMJHE+RbP9oV7lAd0mlj8FTPIYYWud74B9FQn6SXQmt2kYNyNO5phXSFjB7TDAegeo
kr5nlYNC4b4lOk9b/wxh096vc2VgHesIZ3rqag==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sD5iKW3oUjJJO0hbr2X5UoJJlF7fY4PZNj+QXpfsG3DnolAWCdxaqnwChG216m+SF7KJUJ5qpaux
t4+iN1l54WbMkFygzyh5Q7VUvxx+hLG2sS42HNsglmWlfYeh6BDMIUp0ygZNQoKcfj1jLvM9ff7T
wB6mJTi8noQNR3dpLVD1Vf2UUMYbhqpoktoQSyUakKbDPMyRRTxjOzyY7sZly/uKyWOPYOY1cwuw
EkDjIJu8d6nCHH7goh7vVmQnUzuHZnjnDaA6BuJ1MsM9yIj1RTOJPzMdF94VRqID4FPeGL97HjSG
h5kUo/p36rbUNTnvHwRoVyb3WBn1gzLkHp8ofg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7264)
`pragma protect data_block
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
ZugHBHp9ne9RykalSg0V7TJZXv/SDQaB/w==
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
