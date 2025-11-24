// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov  9 14:33:08 2025
// Host        : Theway running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bias_ram_fc2_sim_netlist.v
// Design      : bias_ram_fc2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bias_ram_fc2,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22000)
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
