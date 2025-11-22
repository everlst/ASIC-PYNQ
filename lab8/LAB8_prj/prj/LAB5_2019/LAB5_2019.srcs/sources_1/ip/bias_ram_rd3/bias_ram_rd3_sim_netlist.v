// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov  9 14:33:09 2025
// Host        : Theway running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/zynq_pro/LAB6_8bit/LAB6_8bit/prj/LAB5_2019/LAB5_2019.srcs/sources_1/ip/bias_ram_rd3/bias_ram_rd3_sim_netlist.v
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
