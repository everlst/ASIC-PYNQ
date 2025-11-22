// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov  9 14:33:08 2025
// Host        : Theway running 64-bit major release  (build 9200)
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 22144)
`pragma protect data_block
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
oiJhYgUao2Ab3nVIpjMpxiosxQ2gKZaoBJZnbw==
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
