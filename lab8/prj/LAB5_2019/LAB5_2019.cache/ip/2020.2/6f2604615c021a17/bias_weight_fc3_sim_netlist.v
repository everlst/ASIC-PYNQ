// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov  9 14:33:08 2025
// Host        : Theway running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bias_weight_fc3_sim_netlist.v
// Design      : bias_weight_fc3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bias_weight_fc3,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
baFnA4DdHybX4IA=
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
