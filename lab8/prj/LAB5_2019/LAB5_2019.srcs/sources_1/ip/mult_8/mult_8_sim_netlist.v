// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Oct 13 16:35:10 2025
// Host        : FB47 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               y:/Code/github/ASIC-PYNQ/LAB5/prj/LAB5_2019/LAB5_2019.srcs/sources_1/ip/mult_8/mult_8_sim_netlist.v
// Design      : mult_8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_8,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module mult_8
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
  mult_8_mult_gen_v12_0_16 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "mult_gen_v12_0_16" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module mult_8_mult_gen_v12_0_16
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
  mult_8_mult_gen_v12_0_16_viv i_mult
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
kOWOHVTFRYKskKxWi6fyPh+RGu+JFrEb4Li3uDUPW+BgsViWG7+ygPn368ARg8zACQWnS6LooVps
VqXoPfZIoIQuf4gQno7dHIGV+fw6H2QnK7I58p2c6jkQ8wk2Ze33WBT9hhTwXyJWSGifuys4FEDy
Fw+MI2xYaCG4wRSWyimTQP+2RB+mRb1+q2kA8A73INzKhGjOllIkcJXzwEem5Xeim0st6hsvBgR5
3rDN/pjTntHdd/Q4SoXOvkvlpqnjhnn03J5AekJEntJArjN9l3ilYYQr+90VkLTT3Rqtie0ihZUu
7HqDQ4sPqIvKwfB5AXwvw6hSEj/gQ0VPQUQfrg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hgxJn0eGwaVYWjtFHeEu6LuhbFvLTD9Ps/kMD7gTzZKxBtBm5zA8AynGC4UXkOB37DpOoZWi4aXW
B7ztaS/C2VKz5JfLybKBkbbndWL0qCv44TBODQEclH49IplqaWk8a0Z6TswfsM/XBV9sWT9ngYaD
fxSfDqAaps9YXs4oIMGt75PycO+YOdpdMYmCjHjLqOBVfQK8ZN+8vLaoy+TFwdEJYMoojb1Zu6tR
javRzkNzjKk89MKPqUU2aKkubCBoNYHSddvmqxaOiISZeJsrl3+0hZ3SX2H7SxdzFhpnz4Xas7Pl
0mnrkVZU26yczP/TMQO9t5SshSMlsgHgQNAnSQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7232)
`pragma protect data_block
+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
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
