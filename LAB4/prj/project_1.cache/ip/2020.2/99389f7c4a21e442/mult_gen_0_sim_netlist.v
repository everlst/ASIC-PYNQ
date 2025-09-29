// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Sep 29 14:40:10 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input CLK;
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
  (* is_du_within_envelope = "true" *) 
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
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
D+9lfS59pj/VVil0GGdJ59k3DOq46v/+7whNz7wCwfYdRiJPbLItui6o/zSBZEKI9gWLjOldtur1
/rmcVBQ3GA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Al4EzSQFZknJP1zXhKNIjHP2ED06e/ds+6xnXGYdohXSo6+myvUa29WxrDQ2BRCFMopuWgRIHVKr
QIL1R/lyNoyVEM+ZIozLEHgX6l1O/zTuyjCCsopsjgqJb2Wtgn8s+TaOCOvqtDrvLzt0PvLiCx3j
UkBnJ2bYuzUoN4JusSo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GryPO/G6YUeEdMxSH6E+Cylnk/9RJIpF3DfZ8qm1ecWq6hYmaGlwqiFs0cnQCPLUX5i7YB1Zhyg7
xWXnsmJ4+UqH7C7kALbZ0VgPMoxq9qXXyR3XFKCabcHGfdH1PGZgCMUJcT1U4IAGCC0HKbpQue4v
BxJxLOKucvmUl0mdNC5jktjqlol5N3LNQ1Nqb0Bi2JUbKhDXyPAghHnYm1RA1WIG/I7KPAHJRMsn
rq61TkO0r9B2jyIUh8Re69O30QuaI8MVXArXwxoLarP1bw33bj+4nw7AKPOj3d27JIY1FecXOlD+
JrglMTs1oca4ii7DTHZWrWcZD11O8wPZrSB/hg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gIxs1xJo2g0tw3pn4+ixShAOAMuK8enzcVscdNEALwVHu56ynHRf8QNrBE9hWTm0Zrotj69ZA/BK
kwI2N0AWvjk9ACiHZ+Q82pH5keVYRtMQtsAzmOmN3YJ3UkTFHW6AIALOLN/+b1CJx2DSSbUvSJRL
vYdCMY94F9Lklx9UjVtQ7r4y14DJeU9UdmLHZEJTMZ3ahOPNz53F7Y+D2abS+pN3OTP/hfwC8SXW
Y0mKDR8Tkg+zCHqpFqHVe4sN/fDWpQUR8MUszd4ygr4o7HqUOQ1RTUGx1Mc0Wtrq0QAi8Syc7V28
2OviXFf4KLhcKYs0bZN+gsgApGWiwyRvQRkZsw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lbc8rPGs9vNVJLV1Ztd+OweNWVf1r3bbhZXmEPzls7ewmRVAwHDdCz0iBVD5zHofb2Pv1cNIx1DF
Cegpi/O809UypK5vc2xsVTWDeqgYhsqvVrROg6FOkBiX78rZZIEYF4NC0rxHw/5ixAFYsGHPS840
rFWEsubE6/eEK5KjxNY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dGaX53L9Ek9wU1QC7h+mJBxY9VRQrtTA5cLqpyZvyLoi582YqMcyFxxsOh08z/CW++CYcslxK5c2
nB76qWzDGxhrcZ2LL96TaJdxfIU2EOvAbd+35O26BL5Dr65GaDwdjrxZgGVYX9zZnupIqxn8XhmC
YxZ5OIIBnPbpGQ6ribzMzlGvFizUnWWAzae4ZJK4JY+UWbuv2xdBtaDjg/1YQkACqpob/Aq4IcN9
/z+aEP0pGhrF9aYTALhCIBKRSiEmlWYFi+Y/QtDMcgPf3kf28Jl2zN9nxRNVeqUYEwqb9cl2u01M
MuW6fdTQYP8au8BQaSrUEy47B0go0sgbZVDbwA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LEujW+ttFeLDTd6Kj02ulQ4/6kxvxmgT0K9WSqzr2nEKo8u+D1wTZSNxo1Fc+SuL6Np9NoHmXZ6a
quET05vVSiMB+lIOHpijfSVwTqZ7LgYHnhXrPB5My87wRq0b9Jyg7VUy3e0yzOlKBYa8cqDKm5vE
rKtHLezwwsG/dfHwGL5KISY7D5xkA348D53WjZT2GPECqu3z2+qFTyr2skARLi+fP7tdqXthwiZ/
w32KaI0lhDwxw9CdQ/7jGNqq5B4pDSAIRhs657DCGvaZmMrfpEV3TIblWlorFwEQ5UhHeGuVslc+
eN4r6MzOumbMdENFQgB8d3D0vFnoVsLbbL5/3w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b1YdODjbk8HFhbv22dlzSJPK8onB4y/bTVR6bwet5BZoTYdYXUmOZH419afEKigqx51IMqa6rnXU
3J62hXejiIyZsm1mV6d/ZILTIg4MvKp/nsB+nzk3mwrxlbUBSjb5Gs4KJEM3QfmnigtYMQ5rNsWx
xO1OBkWglwIieiVxJRpIzrM1m6NiWCqcL1cvpMI1IywHrEeI+DhZWAgf2c+NGLeogq0I5stGLWyl
7mUNnFVREZS2ztdL9JeVlYFnkm9YAu/rEpRnd/ZFnUmo5LDgPLxnWIoTIbnJ9ETXA3VKs5m8RjLa
Y80BwwVZ8VpAYtcyfGThAvkMUN1XkU+RBOhB0w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jw11/jyPzYF09qKNLzRASveW80p2lDhif/7GSzkqz1ay8ziMYjGu2PXCgyziHf07D1ydjBZ2Oj+T
1TciExFJYUoS4v8yaGxNYIeVg4lCZtiWwMwIjWi5TbX5hyZCCFDUioAcm2Er0tzXe+UuWzkM8uEj
VcZMHxrNXFh3ip5Q5HwOhZJLT59ez98d86/DgXZNDnY1jAn3tjdLiP3facR+GKZ2RlNKOTvP6BNt
RMIiYfDGS6i/0a2j9G97hV2faBZ9PX1JyNer2z3gD5/XUNbE3bPLm+xmhpk1/K7GiF3yvAO1dtiL
5Mg52QRrud8v05hWjH6y7rmg+wiBc1bnMIMVaw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3824)
`pragma protect data_block
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
Js3NSaQ=
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
D+9lfS59pj/VVil0GGdJ59k3DOq46v/+7whNz7wCwfYdRiJPbLItui6o/zSBZEKI9gWLjOldtur1
/rmcVBQ3GA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Al4EzSQFZknJP1zXhKNIjHP2ED06e/ds+6xnXGYdohXSo6+myvUa29WxrDQ2BRCFMopuWgRIHVKr
QIL1R/lyNoyVEM+ZIozLEHgX6l1O/zTuyjCCsopsjgqJb2Wtgn8s+TaOCOvqtDrvLzt0PvLiCx3j
UkBnJ2bYuzUoN4JusSo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GryPO/G6YUeEdMxSH6E+Cylnk/9RJIpF3DfZ8qm1ecWq6hYmaGlwqiFs0cnQCPLUX5i7YB1Zhyg7
xWXnsmJ4+UqH7C7kALbZ0VgPMoxq9qXXyR3XFKCabcHGfdH1PGZgCMUJcT1U4IAGCC0HKbpQue4v
BxJxLOKucvmUl0mdNC5jktjqlol5N3LNQ1Nqb0Bi2JUbKhDXyPAghHnYm1RA1WIG/I7KPAHJRMsn
rq61TkO0r9B2jyIUh8Re69O30QuaI8MVXArXwxoLarP1bw33bj+4nw7AKPOj3d27JIY1FecXOlD+
JrglMTs1oca4ii7DTHZWrWcZD11O8wPZrSB/hg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gIxs1xJo2g0tw3pn4+ixShAOAMuK8enzcVscdNEALwVHu56ynHRf8QNrBE9hWTm0Zrotj69ZA/BK
kwI2N0AWvjk9ACiHZ+Q82pH5keVYRtMQtsAzmOmN3YJ3UkTFHW6AIALOLN/+b1CJx2DSSbUvSJRL
vYdCMY94F9Lklx9UjVtQ7r4y14DJeU9UdmLHZEJTMZ3ahOPNz53F7Y+D2abS+pN3OTP/hfwC8SXW
Y0mKDR8Tkg+zCHqpFqHVe4sN/fDWpQUR8MUszd4ygr4o7HqUOQ1RTUGx1Mc0Wtrq0QAi8Syc7V28
2OviXFf4KLhcKYs0bZN+gsgApGWiwyRvQRkZsw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lbc8rPGs9vNVJLV1Ztd+OweNWVf1r3bbhZXmEPzls7ewmRVAwHDdCz0iBVD5zHofb2Pv1cNIx1DF
Cegpi/O809UypK5vc2xsVTWDeqgYhsqvVrROg6FOkBiX78rZZIEYF4NC0rxHw/5ixAFYsGHPS840
rFWEsubE6/eEK5KjxNY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dGaX53L9Ek9wU1QC7h+mJBxY9VRQrtTA5cLqpyZvyLoi582YqMcyFxxsOh08z/CW++CYcslxK5c2
nB76qWzDGxhrcZ2LL96TaJdxfIU2EOvAbd+35O26BL5Dr65GaDwdjrxZgGVYX9zZnupIqxn8XhmC
YxZ5OIIBnPbpGQ6ribzMzlGvFizUnWWAzae4ZJK4JY+UWbuv2xdBtaDjg/1YQkACqpob/Aq4IcN9
/z+aEP0pGhrF9aYTALhCIBKRSiEmlWYFi+Y/QtDMcgPf3kf28Jl2zN9nxRNVeqUYEwqb9cl2u01M
MuW6fdTQYP8au8BQaSrUEy47B0go0sgbZVDbwA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LEujW+ttFeLDTd6Kj02ulQ4/6kxvxmgT0K9WSqzr2nEKo8u+D1wTZSNxo1Fc+SuL6Np9NoHmXZ6a
quET05vVSiMB+lIOHpijfSVwTqZ7LgYHnhXrPB5My87wRq0b9Jyg7VUy3e0yzOlKBYa8cqDKm5vE
rKtHLezwwsG/dfHwGL5KISY7D5xkA348D53WjZT2GPECqu3z2+qFTyr2skARLi+fP7tdqXthwiZ/
w32KaI0lhDwxw9CdQ/7jGNqq5B4pDSAIRhs657DCGvaZmMrfpEV3TIblWlorFwEQ5UhHeGuVslc+
eN4r6MzOumbMdENFQgB8d3D0vFnoVsLbbL5/3w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
b1YdODjbk8HFhbv22dlzSJPK8onB4y/bTVR6bwet5BZoTYdYXUmOZH419afEKigqx51IMqa6rnXU
3J62hXejiIyZsm1mV6d/ZILTIg4MvKp/nsB+nzk3mwrxlbUBSjb5Gs4KJEM3QfmnigtYMQ5rNsWx
xO1OBkWglwIieiVxJRpIzrM1m6NiWCqcL1cvpMI1IywHrEeI+DhZWAgf2c+NGLeogq0I5stGLWyl
7mUNnFVREZS2ztdL9JeVlYFnkm9YAu/rEpRnd/ZFnUmo5LDgPLxnWIoTIbnJ9ETXA3VKs5m8RjLa
Y80BwwVZ8VpAYtcyfGThAvkMUN1XkU+RBOhB0w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jw11/jyPzYF09qKNLzRASveW80p2lDhif/7GSzkqz1ay8ziMYjGu2PXCgyziHf07D1ydjBZ2Oj+T
1TciExFJYUoS4v8yaGxNYIeVg4lCZtiWwMwIjWi5TbX5hyZCCFDUioAcm2Er0tzXe+UuWzkM8uEj
VcZMHxrNXFh3ip5Q5HwOhZJLT59ez98d86/DgXZNDnY1jAn3tjdLiP3facR+GKZ2RlNKOTvP6BNt
RMIiYfDGS6i/0a2j9G97hV2faBZ9PX1JyNer2z3gD5/XUNbE3bPLm+xmhpk1/K7GiF3yvAO1dtiL
5Mg52QRrud8v05hWjH6y7rmg+wiBc1bnMIMVaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bPuT8eW7gm6OnOWx0Yev/2OUluyp14rLWqujcJH6+xzm1QegsFgoIEJXF+gP/6YmN3TyJUb/icbB
ag99YeVm5aiTPFl/M1/4R8A+lqEOG1IafOEonwTaHIgNP8ycTPPmLuBZ3J87fXZPuzog3/COzJdk
015owZIHiXtXbyzudjEzwVejiX367FOGkbSF4V9QwxWN6RWg28yOrxTAztyWjMPiEx6qDIEgbXzm
9mhnMpHTPZ3uOBZ6eOPZIaOpm01UJKus1z51VhI3WQT7871Uo7n1hLhq11Sbsy2M5rIQbqfAbNZC
zNyqmRPV00G1g8qSl4xcQTq3MC5rdu4KARl8Mg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EPCv6j1ItR7C7a3H5GwAkAfLroMBXqOsoIbiaBNJmEl7mWwJzo6RjqAwtMBBnnUcAgmEVQEdf3x1
ewbZkETpMiZsK54dSaXe1mwJTuX/J2c/6juwR70oodBwW9UcIK8GCQRisMoSnWREmCpYIUW8iz1W
WVbbU0JkGnokiJlUHJL/ZS9CHuAgSzIFE61ll4AhNqXmZDkKDHvBDn0rEnk1lDKfOGrjISADvXJl
c5vt1rS5uWFZqZJ/lovhByhWLd0m8PKIbKq5Jg6aYxwf0Zp5w6hBQsQ2/0o2pj4DnxMpvEWZJ2YS
Z8XfF5ugM0ZPQ3oeRNd9GfqBznZMjBHZ6UMekA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7344)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
