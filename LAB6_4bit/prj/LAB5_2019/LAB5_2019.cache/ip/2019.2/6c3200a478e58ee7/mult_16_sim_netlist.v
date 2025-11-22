// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Oct 21 17:19:01 2025
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
  (* C_B_TYPE = "1" *) 
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

(* C_A_TYPE = "1" *) (* C_A_WIDTH = "17" *) (* C_B_TYPE = "1" *) 
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
  (* C_B_TYPE = "1" *) 
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
GEk3m45qOyLL0OKUk4C1LGJupTtjjs8j2hn/LeHr+4e1Ov1HEzlyPJarobpqBhrC6rlMzru+9tR4
czEfYaooFL1VbOITZtu5WjIAd9U0rGmxr3dRGQcYZrzNJh2iwpreVnI9nuytN3XDldpQndbLEy4O
sP4ulklrM1lXC604rt4Ac1xcaTQD7cnJlwUpqiEChysruE6ZlBXb1zf5rCyKgT7sHa1wrYhvj04P
jcEBe6xysQeZ7NLVPCIl4sfPPrkOqaJwEO/gEIBea8nbvH8LWHn2W7iI6QK5kb9toR3g7AHGR6xy
uNgz8l3MOo77knnEi+asxKXOjI38ixJx71TWBg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Tx7WyrGeCq93K4XS4D/VHwCH4CNNqnjdstJHpnsyXGKLP2CQLI/lCUHViU0sURVRGMAzfBYUo1os
yYS7spDoimEGA75meCS6+dHvQEpubtQldRpSiLQI/Hu2CATiQ9EZcGhQxbta2Av4vXRSAqrdMpYN
x850vl+STkM1lFllquADSvh5YyXx0VczPvB/5s4tjDPJuCVwaI1OaFlPZ/8MCR90iafD3ijj3POb
RwHTAgLLujRk0CP7inHJwcN2Bn1+0BlZ1U3y/AidSkYilMak9xIKHgZGZ707Ia3+9znd4LqRVdrI
MVCHhhfDruqdi6b9bScZkzl92S+EpnyGMLDMPA==

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
