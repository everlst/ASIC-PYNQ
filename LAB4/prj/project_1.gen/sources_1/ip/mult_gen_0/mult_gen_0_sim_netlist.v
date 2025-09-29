// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Sep 29 14:40:10 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/ASIC-PYNQ/LAB4/prj/project_1.gen/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_16,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module mult_gen_0
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
  mult_gen_0_mult_gen_v12_0_16 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 3808)
`pragma protect data_block
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
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
cslpQQ8UYnEClBjpt5Xx5jkz0LOAxqhbHaF7n5uySjIFKiZdWbGkOfKk18dJ+xFgZ52ARDTpGG5Y
jYuvnijbGH4hq8NlVLOBRylMUtGR0PFXHcOiA85g2AZ/8VsYJdgmjr52ClkSpmKorWvPH9MNPju3
QrnYeXDpKVWg0zJxK1ZDgKAFjZG0SJ0ZMmSwa7mezTxd3mBAixUgx47EPeCbcwdh5M+Ew+Qja0QS
s4J0QW7EFLvfb4Nx5k1ZXNpv1X5XK9bVDT/6fdmSsvgK1+yV9YXUK8W8rmJxSvBNAdX3t1f1Sf22
a6vLah+zPG630T3+QjkQy6mAbKbgZYvHz6AtgQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Fy2ZAUxGrePwRI6ZvrakRyDvKA0eNEA2rbpfg8Ki3DTgcNcPgeBNViKzx3s29IUnYGlHynrB4Rcc
yQmaeaBTRpmL6SfIAvAfrU0qJIRZIE/P0uuqjWwDBdImAJO89xyVrdlX30/rJnQJTdlaFPmag2D2
q7X9ivWgXe8rThZA+cPEK9De1AtYhGefIgmgwS2DpeHmBti1G8B5WraKqll2FaG9EWKvBb7oq4G/
7iEnTeuKd9w8Y1G/9rJaMg87CxgiuHoAfsDSNSOHk1jv1nZ/AxwiJQ4n7ksFi0icRDze0iXkCxm7
lrfxcskFBxbrwRLRjPoysT+ggsgj/u2aEUtKWw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7312)
`pragma protect data_block
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
baM0WwuxClIqxXzDikB+Hg==
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
