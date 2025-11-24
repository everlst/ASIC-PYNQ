// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov 23 01:09:30 2025
// Host        : FB47 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top bias_ram_rd3 -prefix
//               bias_ram_rd3_ bias_ram_rd3_sim_netlist.v
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
    rsta,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [6:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [6:0]addra;
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
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[6:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21824)
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
