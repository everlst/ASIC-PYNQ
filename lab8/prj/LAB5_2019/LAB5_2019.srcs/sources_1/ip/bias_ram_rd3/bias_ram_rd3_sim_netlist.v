// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov 23 01:09:31 2025
// Host        : FB47 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               y:/Code/github/ASIC-PYNQ/LAB8/prj/LAB5_2019/LAB5_2019.srcs/sources_1/ip/bias_ram_rd3/bias_ram_rd3_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22112)
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
