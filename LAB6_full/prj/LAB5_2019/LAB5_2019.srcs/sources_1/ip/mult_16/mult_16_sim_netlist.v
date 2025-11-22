// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Oct 21 19:49:16 2025
// Host        : FB47 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               Y:/Code/github/ASIC-PYNQ/LAB6/prj/LAB5_2019/LAB5_2019.srcs/sources_1/ip/mult_16/mult_16_sim_netlist.v
// Design      : mult_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_16,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module mult_16
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
  mult_16_mult_gen_v12_0_16 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_16_mult_gen_v12_0_16
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
  mult_16_mult_gen_v12_0_16_viv i_mult
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
S9vubK/OUnkMxxkpMRLDt5v/qsw0VQxxZGsOv2uuTtTIPeu7RdHastw0CCZxIztwvOunEhxq1hXF
S3a3Q8G/GcsOrtqqIeFRNYNYIOfLO1SaNFTN+Kja/8k1RoY7wHk0U2sDIFIacrN2KqxtaheuwGKa
6aGxQsH/fGNbnAg0lGVUf1yYROcmxdi+4p3xJbAvj+KvpxX/Zzloc91l4GfH/gxpCpxHjLB7vqAa
vhrx0vEwgNqF7pqRWM6p31VgsgQmN6XFmqgmTajN5V7A+mRT/sw11BJBxRFaMk0KGNrwFRbJ7AU7
o0FTzmRqMI2dvUcO8ejued9zRiC0uI7+1jjZeg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VD9NQPA11glBFva40nacbQs8sDeYCIzj3SCXN472UTxPSTDFDaNguwVIAbS8CMyQZxZlLXiUJ+ah
K6tBJLtNauz97wGe9pUPUGl8mz4WpJA7OLjKv8S5Z/QNBIA9HHdv+BnCpiHTwhedOqO70EV4+M+Y
VOXWi25xSOtKwFOFWc03ZO//Fh0SH8byeOdl8VnUMmelpuPMRGJs9XHYBQaiM/lCBBpR8uTAYFiY
X6uaJV6dZVgsw9Db+yAX55tEFCjbKhQVA1OVVPHWabx5N1IVLiGSExY3dImOh23lbO3Yto8/pRp+
3RZALXRkkRM+KhRaQutcfsppZxFdIXyCJmJXKA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7200)
`pragma protect data_block
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
x4CKLT/j1JLajSfOVoY3rV0r
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
