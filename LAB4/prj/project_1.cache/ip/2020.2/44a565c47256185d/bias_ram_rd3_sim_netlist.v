// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Sep 29 14:35:51 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bias_ram_rd3_sim_netlist.v
// Design      : bias_ram_rd3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bias_ram_rd3,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [6:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [6:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [6:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "7" *) 
  (* C_ADDRB_WIDTH = "7" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.54005 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bias_ram_rd3.mem" *) 
  (* C_INIT_FILE_NAME = "bias_ram_rd3.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "128" *) 
  (* C_READ_DEPTH_B = "128" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "128" *) 
  (* C_WRITE_DEPTH_B = "128" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[6:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22320)
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
