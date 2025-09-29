// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Sep 29 14:35:51 2025
// Host        : everlasting running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/GitHub/ASIC-PYNQ/LAB4/prj/project_1.gen/sources_1/ip/bias_ram_rd3/bias_ram_rd3_sim_netlist.v
// Design      : bias_ram_rd3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bias_ram_rd3,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module bias_ram_rd3
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
  bias_ram_rd3_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22288)
`pragma protect data_block
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
dA==
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
