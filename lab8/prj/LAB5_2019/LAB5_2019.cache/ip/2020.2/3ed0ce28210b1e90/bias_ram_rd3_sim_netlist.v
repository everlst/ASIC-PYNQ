// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov 23 01:09:30 2025
// Host        : FB47 running 64-bit major release  (build 9200)
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
HMSGzyb91bq8TICtIglH7jhvJo3jzy7q2Bky8w==
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
