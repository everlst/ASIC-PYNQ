// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov  9 14:33:08 2025
// Host        : Theway running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top bias_weight_fc3 -prefix
//               bias_weight_fc3_ bias_weight_fc3_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21440)
`pragma protect data_block
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
5qzINCIymP8=
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
