// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov  9 14:33:08 2025
// Host        : Theway running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/zynq_pro/LAB6_8bit/LAB6_8bit/prj/LAB5_2019/LAB5_2019.srcs/sources_1/ip/bias_ram_fc2/bias_ram_fc2_sim_netlist.v
// Design      : bias_ram_fc2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bias_ram_fc2,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module bias_ram_fc2
   (clka,
    rsta,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [4:0]addra;
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
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
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
  (* C_INIT_FILE = "bias_ram_fc2.mem" *) 
  (* C_INIT_FILE_NAME = "bias_ram_fc2.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
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
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  bias_ram_fc2_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21968)
`pragma protect data_block
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
ldz3RPmN0NO+7hAIHa1Z1tYh+DmjmZY=
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
