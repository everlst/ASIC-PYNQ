// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Oct 21 20:04:29 2025
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

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "26" *) (* C_B_TYPE = "0" *) 
(* C_B_VALUE = "10000001" *) (* C_B_WIDTH = "8" *) (* C_CCM_IMP = "0" *) 
(* C_CE_OVERRIDES_SCLR = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_ZERO_DETECT = "0" *) (* C_LATENCY = "3" *) (* C_MODEL_TYPE = "0" *) 
(* C_MULT_TYPE = "1" *) (* C_OPTIMIZE_GOAL = "1" *) (* C_OUT_HIGH = "33" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_16_viv i_mult
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
ZXuyBdHiNLFNtXEdNiFsXi+rH529A7EaCO88cmDJx/AJJt5mvVv+4PRPUgwUbDA1kja2FlXY14Jm
I/tMC8CIOVqbmI5j5ztf6WhJ0Fgak4NUehmG9gwabv5zVjHhuJzkPT4sNY1CQpK4uTCJVUNmHJd0
jYy3pv8HeESSctS2vsNBcV4Y35tktgtsthooHLybSIW/xUFUG7DruT2UF+ANDj3cWseM81lujt0o
9V5CurJZcfi70Wq3ltA3qo16IJfVBP9DnqDmwYE+BVsRWSY0vcZZj0m+1VOHMzWM5nfy7kQAkvBe
kd4R5QCpPVEd+3gFBaPCxhpaZn/7F0n0WG5j2w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
y2r+m6fi+kUlZzDQov0F7dE7LQJbW1lDi/VU12MsasubmtKwu1U2T3Kj4k5Ph1PPAgQx7NwYC8N3
s1XL6QcqQ+Vmxxy1sB8FYKW8frWKTD0y8aEYdjG+pPt6VF3aF0GOhE9Y13F9LBETtj3cdNfb3ZYf
B8oV1pCd3nr85fA5S7vJlE2b6ZrcRqhkEGI97C6XWYKUI/2cUrXyUzLt0XhO654mVNqGppnnt+Hb
sGr3KTapX7T2qCrgY4FkC5e9s5ZGoJ9eDZ7nR8DfFtN2rWvUVhJdFw0TUC90a/6kMoM77u7SuI0D
nOzRUryFa7gBKNjH4ObOAwv1a1BtMmzvdL2vCA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14304)
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
