// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov  9 14:33:09 2025
// Host        : Theway running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/zynq_pro/LAB6_8bit/LAB6_8bit/prj/LAB5_2019/LAB5_2019.srcs/sources_1/ip/bias_weight_fc3/bias_weight_fc3_sim_netlist.v
// Design      : bias_weight_fc3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bias_weight_fc3,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module bias_weight_fc3
   (clka,
    rsta,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [0:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [0:0]addra;
  wire clka;
  wire [7:0]dina;
  wire [7:0]douta;
  wire rsta;
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
  wire [0:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "1" *) 
  (* C_ADDRB_WIDTH = "1" *) 
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
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bias_weight_fc3.mem" *) 
  (* C_INIT_FILE_NAME = "bias_weight_fc3.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2" *) 
  (* C_READ_DEPTH_B = "2" *) 
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
  (* C_WRITE_DEPTH_A = "2" *) 
  (* C_WRITE_DEPTH_B = "2" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bias_weight_fc3_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb(1'b0),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21728)
`pragma protect data_block
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
pUSgNTU/pl9cJt0=
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
