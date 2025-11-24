// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Nov  9 14:33:08 2025
// Host        : Theway running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top bias_ram_fc2 -prefix
//               bias_ram_fc2_ bias_ram_fc2_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21680)
`pragma protect data_block
/DM4Uej1Cv31VLQU/veUKthnjJDhMU+/7rsdBVk1aHofv4r6hGexpoQBKoI0p2eiwsyY19rHaQBU
JDe6IyxBM4yan6Y35dssbRcbkKx17RUNCtpafwj3cPc77qDNRS4nrvv9Jg24TLQsgZ9AtJDazs+H
wja6eYiX/AWNIzI0Cb+3uId5PT4E+HHN3AyDYAE1EevTX0/qckiMAJ+97jRCPEwqEDJsPfKbLvXX
812QpvYXyCDEITtOoEJIur8q9HcsErgRgkv0offsjt8for94olFWPtWHXgzCSYfWkn+QxOf1M/na
v4lZJW/kPO5noFTee81vOPj/440CeEhoyrE8Iv6S+tzlCJMR3TT955l+3v6pRtMDQAIg/pENFKgk
UfulQoH76F68saJN0L8WwMJ3CR2+aQXSs1crQDDKa4nPGZRX05Pr2IEBQMbLwHCysrvpaxt14QDs
2rNJKnLnqjdPwtW93mXJ9/eoPRpyeIh90E0eY1JOTcpcFyojE63CSKa4/li+YoTqLqL59FinpFnL
S9s9ySyJaPR67uHERaFR/QvLb7FiWJ2WxnnGvGzYIRQEjrhXVGVpDHBGQxeCSwCht3fP8LCecOw2
ZbrdNhFfO0WHlSkCN3UwXBHhlPulzCKh5kcS8bT6SSLCmrOiXKxPmvOMQJ5k+JHRthlEfZly/dWG
X7uEyLJ2sYshcGDCqwGXJk8bFCQSVKyQOmExkr67pU8/omiO+bK8DdowYJzhu2RrcM7nalTcGZd8
uZFtkf04BwivJh3jd7MPrTRnbvKysOazEOgNGq8vvX/x8+D10QVTT7+jfzjJwLkFU8m+xTzQyJTg
5J9PvbavjljiACe7eYKpucLvVyXpaqF2BvbJC8XYJFPkjOrMZ2p5+OKvYNlU/k5fomtYXvTTCih4
7yx8GXtIQ7/IKmqo86VFXD30Jw1BDH99yxs/vBhmijlHY+IT/llWCOAFxTRZCVY5aRy6VOrN/e8u
/Ndx0b+i5FdN8ktNSfRCXLfO5IxkiQrj2othvoI3O4tMEmUUIn3HGe9DDDL3URQvahj387dcSGcn
9VoEhQS4qq68IFjcCMK8vThhB4TalznwaB/GIEgd4pdTYqMtWGG5iYycBbpmdnm11rsQzPT7ZOr+
XeiOl9wKQB+8iM75HI698LroFIELRXR2PkBEN1PxZXPUFsExEKo0mKp1odTYCbZ/itZqvMRsTdP7
7w/AUp704sv/brmyEAlue6ENIdIB2JJUJHGtA3BSKraX26aZz1CEDPSVFCvQGBsfzuo7ype77Ytr
gFcciLdvWXrDwyOKaA7d+BMkwvdsFlPwtZy9tEOsW9OHhZXFw0ZvbagF+x9Cg8mn4u92PXq5T3y0
WpbIejuaIGxIHTJfGnZxeqit0xA4aFZIWj4S68mWbgyEFd+8DEe/6FGeYm1C/10YnJwae0FPusJX
fXtG/pIwlitB/lwta+AjaQPN8dSUR9U9jwykjqNIi+H4sGismGEtj82F9mOwutU7RofpeVesEgNc
DKQax8y11UVUTclZi0AOBVED3quk4SjRhKplWQ1n/EKeZM8P24uGwmPsKI3UaCMjSIvDNywwjFiR
9kNE7cvCNiUqP3e5rtDdDt0MAIt9HiWBCalU682AI2JF982Exc+t9eGKqEVzuDYPwyX1AA97FBnH
C7ump+HYt+Nzf/6bjE/wHZJxy0AypPye+eJl3noo6C3/NzFHt4yvbAzXyrr/DeLdFGy+uiZRBQji
TAVSAdViEQJsLhYxTKoE2tLJi1TprDdUcdu8Gnp39MyizLMzYJ9Q8vpRntqfLOxag8E9cIQoRlLx
/l/gTmn4m6bBsJsp/FWj2FmUzxZotikfz3Gf+tzeVp9iWQUNnpKwQ/yWCeXIKp28F/aDYJuJJOd1
aspOzV/Lnukb1DBSRVXjsP+ZdIGqLtyYQBOPTx3/04D8Cgx7gLGt24HdmfsBp62s7hefuarCGhku
3TFEXU6mQgFZs/YZjzEfACJvvLwmxHqP73XZceJmvjHx+0uMOCRwDq2AgJN5XsdyU3LmWhf3iYMt
4/fTAh5hFGrouXk0nhV3on+e5TxiBMvnushXyefd+jeWgbdICsrA/mbx3oMZAae4hnK+/C4prTax
LYa4h/MRxva+V+pKNWeItGQ8KB7gIUV4bQHYPuvoVyGKJ0dMo62dAXMttJFh0EP0IocXHN+OmEpq
xrIeuhxUKgYHt/IsacQSxhPfjekXPpKFxe50O8CT76DEPlXohp/BidEaG/FfiaNRSRTqs31WEPni
sA6pvVV7dU5efSWJiVPXmS6yz2u/YLORJFzzrpfMmNgQc1jpmhncJz/e3/tE7m9goS2ZdcLjMDjs
9oIk02v43UgpWJ8xmnvHHrcNRi3hpA5n2s82U3uJBJipu3l7SB+xp+tpY7Mt1ygWqO9vzI3Hdz6c
Dy9VZhwDw6wXYbdhsFBBhW+y2H2yqg6TZ6qE4YfOiM7hyPw2bQ0jgOc74QdW8XI8672HEHlWev/d
bxUVlWBCmL4yrjDCndDvgDhAFdykNxtfuwSgeNyxaCNb6VuDPjX1plrcgNzcrHyAvEi+5Uae/Qzi
VET3WHN/KQCvLgleDAA6P5MqfgCIEu61lckV1uMTQbXjzTsk7fG1IMSWjmFPKFj8HyUmY8BW9Qaj
pGBxMbFf7SihM/YGsYvTo91H8HgGYHaT12GXanGxAHs2MvKjq/wsnKcX3twelXaYE+9tKUo3GPFi
wWurKRMB4CeIsVC1cJp6jy2HtvwS7kAsWNsR8o8R8YHEdX0b1DIcqBPzAdkCX8Oj5lqK+NaQfBzB
ZDiO0uAFi15ZG4SWthO13e9H50W86hDAzVvStJr0SMlpktwfthxZRzAOohgdf10TiEAxwNJvOJZx
poIWdq9YYCxyL//iluO3nN5eRF8ObwRZHFTWPqNCn9utjfEOBjvKFF5ZpMoRNQvOisRUWR4KQ3xc
7rGPPtxk7Rc1+k+u9WRvjnT0CMQWFQ/ATRvln8rBfyDs09fyH3KOrjGATwUuEaBC1GZRbiM5Qaal
XkdSQo5h6NC6ir1CdkpUiO7nA1Rh6wm9UPqJcLE0Y9cz+Li7d4g7GCCkPb+zpDSKhi1h94DITHyF
WZbWNSULHIX57yc7IzLHdxbUNZvOwbV2ndmrIcuKTvRXKF9cbNg/O19NuaIKdNWPojvUN2z5GlQ9
uUUNlXG8PW+no/L1EseVtQnn6yLwgNQCPNj5c9W+o+eJn/Jd90gVa9SDxmwS5w9cxxKZf+vrAcdd
JZOZv/D9Q8ByQtbNQEyQPf+dcSjK/wrkDg+OXZxxe/D/5WynJKgQb4B57/xc+rW8vvi5yQc0s1zf
H3Nzq8V9d+jt/xkRFu1hOMu82ql89kU/0HYw64HwLBRg5eZUSc7kKivnWPxm+kzfefXt64dl0PRQ
VwQypCvPoFQs6AQg7QWj60XsKIyYANS+Q2945Lgf/s7xMky8dpCM39aKIwLOQavseoKOtHIhB4Gw
wYwuDVUagrLwe19bB96WO8avzi6SvA24CC/JkGDkY9EgMqu8jPeWAoTz9LnX63CjwJVMQYXBgrPs
2EMAjZd5s7c8iFfwl4G3nERZM/ttZTfg8ccwenJsOX3z5v7r/ga8EYVPhpK/YrsZAjtStOMZnq61
+41OP196TqcgvDzJefg4NQO8Mwbef53X3bhta6zolsPraETxxgOwXLWnausWU5pSK4PWYsoh6IHG
KAmLdVdGMZ/x1RjuPkWyxSo4aF+ODjFhtVhFg9oirfxX5Ne8DmkeV1E+kQbAovtEf1miqQY9y+jv
bWwTnqjyz+e4NzdUjW/dNQ5qZHiP/M+IYVTQhNi8je25HI3WXm3WPxMgT/q5YmfBRQPxy3pWkdm/
t/p8u36jPKq79Rk03mWh0LM6xBAFzKSFAKJGHbzwn4inASlTPYEr3T/fScDP7bf3ZE1raho3XLxy
Kk2fcnQfLMyd5ThbATrbkxnuJRDjtci1Z1pHdNcJ45hY22kFs0VGm+IRWOBfvA/IsvZfoIXpfO3B
5ISZdHdwjkqgFEBoKbUo3Sx/y71xPu7prkShnUVuqsezb/NkP+vIveoD94tfqVGxYI+Tv6GAxpV+
uFhQGdJxfrcOFXIBuZyTF/Ntuiy9Y4B++rpyQphPveDrv7eYafr88465ODmsjQmEVKK+ROf35iRY
Eib6RlUslhJd9azZpKJwEAvOnmfWegTWN9habn8IsLswSm6qy7HzHlBjF8zO224z0RpvSmVjhUlo
TufZIY2vXT58F2csKj29sW9LPslc1rThXdWWFGdcxNBCW7d4N4CVrvgkDGFSy3XSSVC02BWAXsZe
IjbiGPmNs5sQ5MAGE2Z0rGLvhDCBaGFfcKU+n5K9rApz3SoUjegZStQZHOomvVqunLJF8h4NXa/y
5pq4sI+W0n8PhruLHXBi0Gq3BGQRztBFo4Ma8vFQS5Z8M6ANhFyWt9i6Ez+evAhZhc6AQC5y7cOB
dVJNGsQswvghj/8C+41OWUi0QNVjGw60myN9WeTyHwnTHJMwrlxOOgz8OCEes9NaGCSQ5J0OG5Ti
yGYAKXWMDis766FWxhY1bWZxddakmwS6pEd2Pazumw3n+LRqex3nGOslYT7Xo6y8Ur2qUfb3We07
vQKunfRCuhy4cWziE9tRF6E6Sw8vlBTP2Rss8aAqaHRxedCryN1t7eyeMsEhmOSs1YMH66AZ7Mw9
FS3iD3CIbmpUON8qv6xZcss2eVDpZfIEb3PcUfbd9A+x1Iz7sxu/OplVX+x7HNFOzf0Mrxd6KZkH
Qtdxf+AjQ7HoKP+SO9fodmRwsqy6P6EoR/dUFOwMOu2n4HCCY5jHt9krwRA2IPH6cKsAR7HFF9Xj
+6PVZko+H4ZB8S44kvgVlB+szQDHswhmYj7vigJI92gkvalhsDBlLP0hlWdFehrQCClNOz6WZSkm
4jFGZcj13cZesJwRXrOIECpBXmSbAzD2dXvra2+OX1D/evSekELlpe1bb9XHkC139gK+DxloZam2
UEDFTy6m70atjziPUfbbnTd26/7KCS1x8lpXA0iE/ksppCSljd+nJEFIJXO8aXKV+Yl872/O80yq
pVkAjOe0UUqsVL2ZiZ7i73Xksob7HoAA/lMqJkWVyEr1I27517++vWyaZZyKTPWiwHclMbc1ex+Z
CgumVQ8sH+9Hz4dBx6WvJrrBVlMzMK+KqQxs65dFgcmWTdwgtARE3amZBEncd1LD6vgRs9iEztTT
ph04vl+D83USjxcAZgn8PUcb7pceasjIzusvIMkbSjogixodH9Qn3/Th/tfUVYeYk5VptMNeim+B
wpBB/AU+ZmG6LgYeDd98x9rEvUDiTqK2YItuQMtMXOJPYEIkB2m62SOh1VPMh1KjMlgxH7K52KLq
MxKgo6YE84STI75TRLwV5D9F0W24cZdoJCaT4rm939aIRtKqbS00WnbhZTQPmtzOo/JvbGCUiFQL
BiJH5sx9BHl96+huNuyWtxMi8gTqxok1UKy7Bd/SOUKRsCd4ky2UUtj4t9E3LF/uXTmM9wvlWO/h
DsJyyW0JNhcYsAAqHo8DdmM93b8Hsb/I65ivlgEn3WWjg0UPVC13Vgblkf7gBEA0jVlwEZ3PSHkF
JqB4UEYaHvqBAKnWpLn6frOhsMXIY3LjefbT9WqQAaWMuVB7QHlBYLSOQI+3jcX6TKd2qRxgZV0P
sUv7K2KXkCV5OUbWig3HP5hn/fuY3XHmcsLk/XUXMc3Ulx8amV1uNZnMwTh/bgnZxfdDLgs0Ccwd
czlSxWFJunxCcxg4Kb1bUuHr6Z5HssAU3nCffgBnc3S+68u/rEAXF9bSOPfqofOgzxFk0FtzUQvy
2xIm2pdrCfnjG1/YxFiL2KvMSeJqJPQfS7gsZERw+FoG4GXjpO13uZRqEY68lDUaNTK8GVr2YMuG
aR4P7JeySbyraEK3tQ8J9KVL+MeDT1L/nGAj7cCotv/BeajgwqniO8s7oCCxuWu25IGX1tVljAHn
A1fBAL7sc+6Aeo7vJ0LXaoxBo6vkf1CdvHFBwaCflC0qsa+jvwYgNBRSx7uQz1WJCZUFTZ7ehSoW
BmwAmy23Zr1AkA07UUT0pSzGHuDWLelv+yPGeAClsBRtQEGbUUtgcYTvPEz298gGQZZoBGfGTMPc
o6+4JdizW4hV824FPsDfgCtw65k82OjXi4GS3NQZK4lVSdWnlzdUZx4HMEPmGeXVju7wPA8eTiK+
S0qIHszs7Id8Ds39AoDAK1WXWyZfOyA+Hj4GJZdoGxtXuAGEiO6HZU7Vf1UVX9nwQnnUzU951QjS
pEk22KTOvW3vX4L52UP0OVQUfYcTkMdZNt2WJPCuvYlT8Jgcz6odiLEkE/Bgjd5HbG5GVs4hB+N8
OMIF4nj0js47DwADxRYncdOuq6ai7XrBWm4HvtxgFAmHaPr757b9sASsLOdrYq1KmmkpwHSxWDY6
yIvXxKx0EnQUxGczzG87j83hdXto+8lBTpL1DOm/L687rZcKYUuzVi38s6ToPjKq7yYz48hIstf9
wXmWf9ZAoP2aDibUCtCd00pfbvoeT+l2wmfewWlJ6JSDQr3ZTgujq8F/bNklb6BDJ9Z1wpvm0r45
isOYksPJdXeK74xTyIHKRUpXYGq0DqNaWD3r5uYIiQbZQ1iShAvz5gvRDMB8HeSrR33JZ1S4eXwW
X2uulNR4LO2TjyxHAjO6uCRU3/JGsqcEw6DtcftziJDgfiAiredcoAeO254HPawKozUE0A0FdEcB
eemahBMPPibnpn4jd5T4iPoZke7L/DtJDSb2NFr/Uw5MvnmFB+eyuBPgwIaMQis2bpqnsFQjeUbP
7jybzRK6FBae/C+ncbUDaldvgHiQSK5SfCMg7KfABClX4lqSKKd4FrZzfuDGv591J1ZY0Omwllaf
/02rlJSUZimDV+CDaVMAr80YYzGkVF7vK02nErGhRHMvujNKhZt8RAQpTWK9T3MQWfnjOQXRA16P
FLorEw0jGMr3tKkSjojr+S0ZuLf0lIa7tHxbzxWJNuy1xhx1kP0ECmzSrm91qzQAJdtXr5ZxWi0E
AJt4iLAX1EA7FHXoEaCH6+8+dqTTqs2rLUoSpyq9zkNMFwwbzW/uvDkGyrpMmXhh69Ovx8xD9bXt
R5prMsvpxkRCxwVderhdPgOZvU2qJdSx+pWiEFpAO4MQy4MV9NgVD4ZOQmcYhhPajUFcl+/dnmo0
h4oiOAhaBLG/za8RF6rl5odb1YZZLAIwpar3xtkBxb+qn3EC2hzib0xvnF0sEuDPirMwEuFAuci8
NXCiK0TXLU5/NKDAlYx2ir7fNaNH1WsOVeot5e00+qY5RUeXQXGtTNDzZHJrVq57LcblEdRPV94Q
BXC5s934pPZaS4ER0mXtvLbmjg7J3SypkB8NlMtjc0C8fsSawhskS0vm7spsiXx3zpIB8us9+3L1
fho11ue4kGUFXVW2nuWFcHLpoIiirJS6gb6Z+CPM1DZV3unrVYOnA29/PsHFz+gL9LgXk83E605J
3h64xeAh5FllTKBju7dy/4l6GnBW++WBBUyrOpbvkyJ42KU3sBT7i4F8aq8sZHPRAcTsYWQCbrow
wjn/BZK1iJJ2E5mNO/KyvDwSWdGIXRW0fv5nRZ+0dMgtvh4MdDp8X5AcFjwlV130ttrkEbrQdpGt
q1D/C1p6n7/5XzcXDUeD6o6Vp7rDiEBSavHHIC0GEbiEFzGUlcIo6ppmgarLkd39XFHMb0I/SCko
3TkBeAJQilcdJvr6J5e40zQxUXNyOPBdCNhyyfKppztgXjj8lRWmO3mC15iuwgElxAh8SzZMWa/U
2jfriNck0xnry4pbWw97NVaHlCGpUQuBwvcTYcUsjhsGiCs58drwfbEpJE1Zm9xlovkViLHqbmAp
KWWGbZr1kmu3Mc9YtWAKDtwkXA1QEEVwFvswURhlcxtp/o1/Q3JTDhSPe/sA0gGg+m6S650bJtPo
9Rr+W3o3NCY99iZpt6aIsl5012ErMlr+zk/3wGz5K58VwxB7P9OcnA2p0KwifJxt3Mm+BIfCahuv
6bO5MkrC6wiPy2Jdf/jjGDtDyRSbZsi00oL78ONnrWVhoM2sZSTVVA68dDFcKOv3PLmD0/GxoCN1
ZZ5/sz9S2cSt6/5dI65jq7ZRx+jBpozo9uVFKSaCCDIOzFFdVDPCktVf2dN4/QpMOQb4yHtBq7nC
q7iN1r84khTSwSGg8hCje9DrZeFNI5sifHZg3TIMSWOXudxf/3Ru05PsyNC7GEu1YiaFWEBrV9U/
5TW2bMOnueV2vz5qQ2/RbnCjgphN9ENLfyz3umchXf8VYDPp0TxagESRbS54ESb59It4mGZkJmHw
zKKDM6b7V8i70oFzwVYNB/Dzt346r2U4Dy9Q6NrXF9NGz+TsGgD83TNmC8iWgjNpE8R9V4d/q6BW
Hh3lzSniC46LagwhTShzKXXL7I5EaSvygUqtu7+uqQxecBxt8A5R2bhwXCA5zbiE6VvKTSS3zdj8
D5kBAZ5d4RXNHayMU8CPqqWg6Y40erxq5oEBnujUy2gSeEA0OAtRmMeiGPGlfdJt6BhQOwSXtEXJ
K8RKpHSlIoZmK5Kgqr/dk+hViLXoTFQJ0YhFp0vijS5VaELwLKmhEDK0KyIJzW08hCchNxEkRAtB
wTBjuXGSb6+TESY72UZ+gr25/27GcB8iwYgL2+dBpDndfxyLqVxbO7XiTrSdb+CR+UMCc9aO4FU6
HUBhLx0MiOMXoSqoDXB5sSlDSY3ZjSCNO7OmOl4aYNyv5gZndUbkRMqKm4+fECFCQnNw3cY6xvGU
66+Y7b8ENB9G3mVcdqRRa1JW7HmqsM3KSvpPk77AkI8bGO6nX+qOI4o4shb4xWZeIsbUgxCjwAZv
J6ns/X6vuZbCpKgY6vq9X7gM7sZM5UOP8eB2ior9jgzD1bR8y87UwBQ8QK0W+N22tutCj8Gc2jxN
OXQA1SyNGDptSV6B478VvQNxoOXIu+BS2BL/shfWzqGrbuyByMsqB1HWJHnxoe//6mZkhpjfFeBp
SWiLgzByIe7khF0KJtZkc/+YxK5iE621OrTAxalUhuIVZ9VsEMF5lO1xh4k/OJkZS76DQX61ynEy
ObtmiI6+E1H+ZQjZEYZQ+sx97NQzFMcXwRbcVuAXxFHGPQVDkElCaML+dJwCG9Y6bhpGsb7GREqa
7IZ3OcZnMWElWIrJ5hB2X+7mLZ/avSskiIRRHBKvUibnYU8fPYUI92RtateuYLzwf7eX82Qj7SOl
DxgKWZuCXuTgw70tkZgEaFl57McuYZNYn13PJWqPgB+X9KpUHhV1Mtzav/6UyI+HKAIPfAl0qlBu
V53jl+VWyQL+Z2EJHrroXFFzGAcmA59p0Cn+c3GqxzYMRr8xGIf4Qdks1EvHpLQRPRa4+QXrDyLZ
KV7srpuu6yRLL//zU2q8KjiMnrSJj3rFoo03Xs5FCvryvdv5x3+i6qE0OKic4wf/dC4fSEmYi+rd
peVYpS0kpJSqJCTbt8EYIXSNgJFp3SbBP0dyCKLJNHsh9VaUZSDibC4QJwcN4aIU/XARQba1YKnp
yzp1D/WddgUvulJTPo6Wm5fxbEXu2MEB8OxVR3iGXSIa9qrHl8ID/UFjhwPRtRJ0k66fPiIEaFdP
O34aD0zJqoDawPOIN+0y4w3DtDpPyXQ9Fl/EUmOzdH3dLRNFSeJEazmJzm0O4WBOWbdxVDILTkmj
CEA4lqEoXr6qCmbd6rRn034U8vnkD56/YDTbvs+2+xmdAS1IPBRwVttESiCBOtLTb8ZnpgJuzLTN
ag1i9OptDdYK5OITsm1+U6zV8HhagTbiCtxfPf/dvltiQiSuZNxyQ8XRqKflnqizENRJtplgqajg
cglVdAwWPYrUi9SNIk39qNOQ7hIlEzY8Cs132gy0JeVHRyReDcn/nFWQZUVgYtepa9QkJFKimRSN
9q9ojw7zPOeLsMKFk1czJu02opxJZ1jhictQnMhXhfU2jDyjWDHAI4avs6iO1dYtdBu8o9izy/2S
XGxjKrs1PZl/j7/iEuoTuc5mnHkCRSsP3774HODyh+BG+b9ZGeyWXLA9lwDanz9U2a03qxPso/2r
yR8dVb0zrOV5ciO0SUxtRJrJVhiBcyGhLsVeyaNTytZ812oIoukCtQ9zXHnltU9Uup/tmpWgSbki
riustg6cLNtRlY+//ObH94WLoIbflSsjLAVAalEi5woTYKoXPAOHrL/JIpa6ZEm4v7xgb7As3G8K
p6nsqXXt9AtF0/We6uYCoTy2i+v6TdUD2NpVBCcXl3k4aeON3yTsg4D0Irhwzb+uTaYRVXMG4xI3
66hiwzTu4Nz7mBDGtXPgoFnNsfabjlKpBT9CkXtYdnshBvk0SJD9O0U1LnPNfoNtI0MfinR5RelW
72Ty8BdSh4GO2OjLbh4I822e/HLX5kAOSOMjawXRCinLIOTJQWPNUDopXOUHmiVIo0acft9cRJv/
mMPtC6xQlIFD8UPPxug+7KOX/rU4NEJtvf7UCpZ8DUIkMl9Gfvx5BIndMdlhTxR3vjsCFBdkZj6M
F8yRoelu20w0uSaWMlgYhdTGMbi9wyzTClpElDjLBLqR/Sb7DFZtotlTirpDwcVbsVCWSeF/rHHz
vIyZVwHiXZOEWpQbzaTIF3Q0/HP5s8gowH+tG7VyAzSwdJakZ990mhzaUw5O8mbTPIJcLXbRg7hb
gFbs4v2w7SHc/GEq7dqJbM4WEeWIWZkRRZUY5/ArnvsRdC3t+4m2q0NYUHmMPnTG5Xs+qCcSbk2P
kd5fyR9YSgSpTBZYiI07Mr3Bsw/OfSSqqGpsN6fcJkAYSzF1Vw56ZjAonA5f0ee6P8mbAO5fGSzN
4M61zN8zpQ6Qm3hpNTwEjboJKSoXQIniKs3lpFNMCrwjH95tPDr+95iLKQ1UJu1dPHnAaOrfmCLd
bMzn/GtUyThwmpz+RQeXZq+6If70fuOaqc4da8KpEvw49ZYlTOEQg9KhWPGwOVOOk1pi1Eb6ICVo
B32jww2GvNIrj2slqLvrkb3a9XNws9il623Ljv3VSkb62gmlf80x/+NIwe0qZPmom+SgqGFHZBEb
nPghYZADwAZH+WQ6ZaArJ/sNWmsEnGO4Idc151YiaqjMrX1QKB2HNzesUJrnGXpjNxtzkSXfC3bX
ZeEiOMaLT9yzA0LFs6hRDX/b2Rf/HjJrff/mWs7sQ8ELxPo1YJjvuQlnBzzJLMdm1Gs086lbrS+U
lcv0kvdfK//BuyGQ5EHCllk1oN0bsX3KGCxBjphoAn1A9WGNiRX46MbWPmblqhbNeQWnYMJy+8H2
l6FUdjj0BgtJ17sIUDZHEx6qTyZB1HTxQ1wE90giwvz7YePlsGKUMEfdR/BUSwUJwd2uFVMDb3aq
KUAzKx05Fggzi93MSLpsUy/2wrIcVA/zqrMe7H0H818MCHhNBSdiodFEnXXdEeQ/mUSBBnLcTS7H
qQxindNiW/QH+EdXQpOF33A4AnX9jILm4iVqIYVY9Qy8SzglO99KtioutdyX1bkJEGWZgh12MXFr
pUoBKWiijFroCYhfAy4JFzw7orAEZDeUNJuIjrjxcxs84RIgpNnhr9CmkLodS9Ri/1otSLsa28IJ
Qti0LKhxTXZF7T0EzGHWAwuRgk2idF92grJP3ijuQRtjiUuI5rHKMgydnY58KTkzYZWG4fXzBLo+
rxeoV4m7qPyPlqNn+HcBtViFNYbC/RW8JMKKxVmGRXwl4cjRxlRmwkm/1IhmvA/A2F1cJY0DpIb9
vGuKsxQVgNty42Efwg/4bkZTDteZM79dxa4hF8mcbhVNCMdd3BVh+FB3W8TNV8GNaIdP0whNz/Bk
K9Zmyir0Ae6cU2IAdU+zFjKwDZs8rgL0Lh/7o2YMOH1bqZD/UV8l1nwR/hEfSxZIROgTO640yubJ
ehNq0Sr/e898h6tXrz03878vdq0+/I4bCEpLjtT+fWGM5K7mC5XEETSpaBpu/nm3nVh6NQ84ZvcR
bJ7anhwUq/poVH1L23+sYyHPRrqzCj5DAEIPqHJHHKvZ15thqZkwWiTsJkWFrB3dOLZ5h5IQxAdQ
L4Vg2ihsv/OmFJZf4STw53UpCDHQnAlidbIvUIyQLFeEMyDwocXhpAMFLWNYxGNw0KFyQ8Wlx6h/
G1rtO9H6/YZdCkP1Odvg0BjQkUUpZtxQMHlk0/GSQxcEh2EhAYrOjk+SywDPGfIPvJauCc3h1qzA
TL4wDYMauaa4WMKzhFtem5dHZyt97zF8jrKKV2/0UIsNvSjqRogH5y7yybS0ecqJarS/FrJHB7py
oAYVycA8q/7PJVxcim8moxuiKCokwQ9H0a9UV7Yrthrfxe82/EMAmnEpdv9uG+4IXPjN4/ybk6or
4VKEoVKCY0/WJLqdHusSwVP3GAGnIC9e9RsRtcSAu/wB18qpq9OR62bOg/prz4s94eYYn1Iw3Ato
NJftM5kwqlRMVODgYFKCEP6xCqurFYdJTq/VBRddpg0f3QKTVbTXW5OvPNVEpzqYJLtmDX5IdaPe
nXywOMAYGdkuQet7zFTzsmoVrxJ+Zh24LU0RNbHycPU45tv4dR6GYlvG86FpB/7GkZgZn4bzoxeF
DdpPD7+aGtPx9paJweqBV0D+J+cfsDSzB5o1//kHoWK8UHAe7av7eHL3Ekt54KrKqg0xQNpn4AiE
UvfadM0D1w+6lRhJ5Oye1oCtqwbhxLW5R3BRsZ6yn6cbd2C2CNHjvVIAFlZYD4m6C37H+nkmKucc
w1tJgWn6abqk/y/OymdiFKQfaYTdjuDeiquMrTKaDv+mR/NLQ6iVDnxJhd8CgHngifnKxTWOKABe
R/URZNdfAmZG0pF3ETkordI6Cys2xnNbSlDR+VitI9N3g7rfGHOxHu0XT2GuzO0AnXuwnTYqGnDF
BedHuvWly7vIcmU0SMyBgCAfGlxpJ5ZtO7ajZY2m8VxDrYaiMMCWw25zvq8Np22QJAetSSaSAhO/
fqC12J2NN6Jgce5KAn4C8sM/V6+qaichlv9R8lKZIf4XQmEKIzowC79yZIWc1oz0xo0E1tggMV4v
r3SS1Y8AKNWMwsU0HGRGxkG4shQk6YhXzRYbKQeNmyCZWZK/gPXKKYlHWHQB3cmBbWVu/qiNXRsh
C0O+h8MHR8z5gj8Ac6YHOLu+GJ7MlkjSzrYwOO/vvYBIDSqggTWPe8cPcYR3c+N/k0hHiBLCJ0ii
VZWGOOiqQNuqTmaQEnSmzqbvR/3mugPBGetAh2L7dJSYF71lPZOUQG4unvwuJgcRX4CnIoRdoR+5
+kEm3Ibg3UcHDna4bzhRjGtkENey4zK6EVkV8Ro4CcQ9SE/eaiX3EWXdiBBVs44W8b22qxb4hd8u
WSEmkBosKNhdI8hP4bdqo7DoQZhjXmP3sERtMtYl3/xFIYMYBg/tQTFJAeNtcXdUsHzSth78C4T/
raJZuKoojnu4+U8joCS4JTlCO/Z0iXxubV0IUv5YaPDul85snLuMr01eUe7RPMSC0SX+OuUriBpk
HELg5i6y4Yhie9qW2A1jrnmnxy3roXWFh+VT1qObtsqnBcVaus21635r/GWjR6O8klKEMSkVV9mO
G+afNqyCrBFqP+ZmLwtVrGDHYmZEzlHMt/xz3S2QBzFjkVfSkDVNc9yVxH5fPbZhFLiyh993G1SQ
9828ljalHP3NfcAfvoomhOZHLaMN+BSIA9x8ixagKUtCMgFk4gqaiDPWqA0zVQ0BmB5ZoD2z4SGi
K2SVD571vMbUzPMi04JmP3TLuGOkJB4NsF6p7c/D+xeSU+ZN848bTApnF+Y58TluOxJ14XGSR2Pu
Ye/y0FyOYuhVnaicNDaoOt3clFoGdHTlrD5ILFsEy2ptL90XXHsQ6tBlVi2F85RBroaqXY92FMj4
mozhh4BxQZCPtZ20td3Rbwgt7KWipvPwOlUem1/SLUbc6+4hzqy4XiHAz6EJM/XUcwZ7FZPmOe1N
P7PG7M2Dc7JAjXT+GwIf4jqRTt26JhkcrTxCc3Nkmg6dhiFVSiqcuRjqdRoSesqm/n0oBDD9TSKO
nf4BaKutF0+DxNDAJwgORndU/cJHhEKeTO1yl+M+Sz2rRTZbUSAzDoiarHkJ72l7Dp1mTjtg/80a
/KN2OSkUgmaEjr0YQrYNE2M7l5o/wwun4rvC3Ax+ti5we81mEEYRMiDv8iRE0mpmzo34k8Cdz1jN
VmJWzirvbPorlC74fTbuHPBVNjA72Wj6Q7BxRtikndkRO8yr8KynPvopb6pHlmF3731ZP1uWZ/jL
hVhbFu9T6gKmaVZX0pMWA87np3oVAzuvet0RdTR5ahbOlzs3LyirO3hsN/XA+JkT9rr/Hs0xaP3h
oBIN/YXvYUEuH7DCjbWENVCZCRinxmD9L7aG8mrERMRDDaUIGTkGgjg0jyQ6AiLn8fl2w1hMe345
35PMsjaK1x8vFrOrr/czg2VN9zjFBevKwcgY/oHrjYa9W2Jdg59PthnWluhnvUGoxbQhTvevPzxV
yWA7tIBmjvj7O964164QT74giJzgUiFU5nd7Rp3zRcyBw2JxSt7qFUByM3yJUpucfTyyDtUsvOhd
lnyhzqRXgmlNq2U4FjerYP1ju8eWzST7oddU5yIvK767wL0lSeUeSOhIRY4GqwG2Om5ZG1gIm9Em
5ztMf6Xe0xjegpS0kFVGxd8a8cCpaok19+ZwaWaVyjuylvcXQEeoqS1dkTUBLTZYCoJTlz/8tSE+
ngorMVh6fAgYpHZQiKsRZhaaRu/8ZTd44KQB7O+Wq+pFJ8rcUabQvDOTpRCnjPTTm30vCr3f8/XA
sApuwtVatDbSrB+iC1rciw+qNN5U3aRfkOrN2hWCzAyqOO2jxWuQUNMaSR76BCp2prKx6Tsq7mds
pDAJ9Rq6wLr21Je1dfT8YGqAKKB5V8cCXanBoNHuMFvHMT4OkL8xsA0UgKOFXuvBa/niKorTWii3
sCJzcap4Jpbr8WurGAVF9lj5wLziDuFueaM753+RAKmgb+9/mlYF6EOpVcU2cWvx17DiyFYMJcAl
MLHEjdaSmoLcC3T74QVMRWJi/8xihhX8rs+nrX5uYhw6y/UuJP2Ai3bbuaiPgZ+0iudg6WJ34gFH
IUsgqt33OcJuhLyDfnt1qqDPCYbPnvhHpQKXEfbWBd+seWfvLcNWcnkuWJuJigy9ZqbuRSoLr+Qh
FfbH6pNJT737UD6C8FBT6fZzkKP151Nch5nMQ8q+Wya2oIF0MqggmYMDqZvFZPy6Fe1xVe1KR9SZ
C4fvo8aLqGbxdIBim6hcsNMew2Niw+RJmfzy38hLMhejFwLn07AFF6RmWQlq0zClWDsjO4PvMWa3
nYQb+Pcg/TacOWgalsgcPIiVFuGXoTJhPC1Rgw7C1bM8Dm9c0h5so6VUBqthudnlMzL7I4po7GHd
Gzv0z6znA6+TXmQdkqP68elmObUehBYbwNf8+iCRATVxNZnYOsPDEo8YRKLNQrtjSuWHOm8OR5KE
Pby2Pk9NdCOHvpUB9CHf7t/2MrX/p85ut/tIuC41S6PvgwwpuJkQ36t3QWWwd7R4mIdNzlu6Uos2
LLFZyKSVe09kefWmgv2JQwzrYHyLfRp3a6COftWrM7rp+BmFMZVTNJJbP7fdMkKHXUvtfPIwO+t+
mnm3jID5bhC9vIDeQ8mbqws+a5ptnX4dkqJ6krLZc478CC8XiHUxOxr3wR5MtjZrQCR4QU8zIX8T
XfXCsuNch47cjqN8te4wPDPmPrLuTLzq9MD8gz/sIVeM0/NXAOQ3pX7gvVYvcdr4ugUY5mSRi7YV
zH5rCcymug4H1XllGdBTHX+bp0S6KKdlBeCcgn1KC4nYou0m9lO7n7WMWRf58G+TJl8xUulNkd6V
UhWD8bDUSoudjAmP4pCkh/CoYrk8K2gsSIjfCGDkFTR17dg5wFejgE1zjcKqoafApimJOMPcHhD4
NTsFS3MXt540HmDfg0hXszpbKtJCpgl2926XZrwwIGQ98RYQZsg8oMYJuqKDGrt8TCX0TBxFTLIq
rOeW4pNurYSHw5WwknH16jQC2WRqSIkmmNsy2LEC5n0CoQR73UOfnK0QL6pvedujs+Ws5PEVrvmt
ycl2/KG5dPtRNWsEAAWX55WY74+/VXjJq416WjAqfLaMSdiPH6vWOeiaFXfNAKAalmxflsUtu32N
tltgMdpB8wm+JgtDnAz8iC6iZSHy7m6O1ipTSKbGmEDmO/LT5As8O3QhkEJA7mTLFU5UncvjmAbu
7ufxS2Bnz0S+0qIxnsZhsiR23uQybvDwuUfBPmtOrgtcQiAlgLXjkVeylzOq8k6epeNSW7/7btRe
FiHckW3ICX0G+P3vzd8cOzswOXP817Z/rOyfi329Vs3jgzi28izrO/rmWLiYrkkJm3uOIRbrATse
JCH+9rJqMObg8xJCLL63GM/vWTPTKeWBgg2B2QGFklItLex/DD61qeMI/qwa3u2U7P8glnf7H7LO
ntnw4UqFkgk9eefBJbapIzr5SymNbG2/7Wr3g8jE59h0H62uH77IN1v348wGt5opVXY3dOQEr2y1
S03ShxOoYnTbNGWMMbPGMt3BMdyfb5dKiBStdnwmDpHC3DO7j+hq8rFUIQ/taLd3KPnk99P+92Jd
pcOZuR/mjbxMQAw8c+rz2Z+DWebkHeCLInq/SZFx7zWqWVItnjFh94ASL9Q6EW00ywje1TphET96
+vY6LIupdNqOshOhFlI5W7CycIEbVigaDMC4I8vVarFmWnoFvpRNrL7RaSzvuhFJpSU7qJDqLs8k
BySqC06NSbdDMxYiRJaxZL+tjiFlMbKK/K7iovnZ8W9TyAsbyNu2uve2CZiPUWYXyGzz9UpDP9so
seNR/hG53dr1oKACs+bYPcG+iwv57D4ES2uMGOXY/vFQtR4BN7acjdrOpcyfGK9gC35M2x8PVh4L
hwG/apv6UyB0Mog40GuPUjpaxmv92FARRM8/E6TeiGyaaBSxFGXgH9dMWfKGOo2o+KHH8F1aQ7YB
KWf7vDGygS+7yfDFBrLWrczbRTTd6021Q+NWTLFwWKK2PFsFoHKbXdfj93UNizuR2qLeXT60SIJ5
4yBm/aAQD6Th+DOmvT10ChUm2N3afCYOa15L5RJduprujq67qN97hw8xHRkk6hMPuyAsnTsj8g+R
6mnDOG3z/Ge0dzopxCj/rvmRiUgiXvICJfWr8gtOvR0ijnCYoK9uQWW3h/m+tMEL+//gQoGkdBwZ
3yjacY+0WhFIIhApBGQUO63/KBkQm02+yuUVjnMDoyZj1qOHxe23mmXmRWx4Li7DtQkL74AkHYnR
GQ8Db1XyoFFdJIj/xoiyhNtXFTmrfp3A1yaoAtNGx4INxLkYVRyDRfW5bVwWyeog8JDdsv61Sp42
yDcctNicZ4piPyS114//JrZCWeCoUcV9GUaZtlSL1HxpLDG6FkwLEPIL9KrSe0mYFHFuvxiAkocB
ZrFHTVP0BivTWLN1jFha2a+mR0GhGTf3eSnHp0ANths390PfVED1iQPGLIlRAENoW6QmFbbVoUJO
Gyvz87zSkA6aybdc8vyfQ3ycIpEC+P6bBRREuqNWxhmdE9naGsAvqvj5Gsk41lU+JaLayFiszlxV
PKnZd2zhgKJJ47ULcek5bp7PAJ4mg/0gFMuDcOFx1sHgzyetBJhzfUNelMdzwVP+Qh8pOgpOywWP
yaCwKXB6sAPXdaLZQ2aWAGTFyvj7pmMnYaS3EEcPJulMIJL5adUtUuoWJk6HI6ELUcQeTlh5AwtB
cwP99Pdbm6haF81b4FbdKfJl1K8ef3CY2s1k67q9BtsAtIhBTsaZk4dQfUilumFZ8NFFnnmYmMGI
ShopNAjFmarkg151W+SWjb5sSPHelNoWHZ7oqx9gaF9ZdH7XIR1UGRtWIQ5uFln6UuDXhCK1Z1Oq
xnuGBolHb3iLpZ4ZNcVpkC8RDJEYKJ8eZluy3FOGvYso7ZotF/47Ra8EHShHJYV76CMR6HsDu0jO
sTrZOCR03rpjhjlSohdCIKEczhPXU32XR/6rsaEtaLgMPyEzWDArk8POnqDl3HXUrzWfcXJwNv94
IkixjZFBrtdU/LTigdj2Ac/VGkW+Kz3ySpKaoh/+Gm+dMtphRSq8if9cHl5TgxpYbmNao5F7cif8
ZG0cd8ld0KDephejl+FrZmrqxvXpl+w1HqsvRSzEc5Vv6QCHqq0uCCHk5kbOpCiMPByJHmSI/m1+
f8kgc9++oxrBHldnlfYMymv8y87uKf+MFcH5bOnnXh1y7n/P1qI5aQ5flK1HrsVbEm5cMSvy9FfI
6V/cOGb0eopKDcBbodFV53GsNdw7KAFsWmm92Un8l7okf1YH7mA9max2ote3lWxuAHPmwSR8xQlj
R6zmvY2PKnqHdJkeb3/qbGyXpf5Fz/7d0H3+BaAPcb+ID2h1zsdOBl/2gW0v6+bpewGQUBD+gbfX
g/1O1sUC+bhaDobTp/L7pHMNNcuprXa/HQiHBGSxlzS6cW4D1jmTBT/UisFqDOtixcn7VoCo/LDf
UIz89KMScCvkefyu1v/CC9BGMUbUHjHcwrg1jtmLdM8nEEYYevupy9t+8DYIrNY/OMqdAOefRC3N
B+XqdWOJJOLpIHH7fWQFc5TiB76vKvfwo1qkg6mJxsF6Ii4yvCLC5Vvlig/3cnigDp+W9sOYIKD5
uiHKZnY525GWQuGZO9EYOohebCll7phwXPleqg6bnsykYbmFayrso5W+qwDGWnmmYxodXl9riQM8
XZRZ25IdAP29JxYp95Vq3KK/2rNzyPCzDh3/SwVMi7aZapfM3k3okcNEEAh4oFMhGfsBUybX3onT
oliGwKPaBX1yK277E7wdMVzGurtJD8YoFXRZYEEdSe6En4417RQUhIVRa70JBO4lfb8jnBlHB1Yo
D3bD8xRV7PwUVLYxFPvIW9OUg7zp8bG4lN5N9m6fWAUAnc+kzl/CAr3rXBKH2Kvqn15+YnMVovyL
0a45ZNiKB3Kb6BTJs8V3H1vIxGUKtaGhA/IyocfRQMJwazdP1KJlS+nORMXH+VViwQV42HsbWRGX
WlpnlNtvrtB0fTSAP98jDSE+yI7bzQtXnh4Nm3k6KpElMlYEaRxhEuvFJSKneLw5/dMzM4We75LW
JXh3myPfFW5qib4eI5fg7LtmD9kVqTc31rf82Xy8tyvXBZ4Nx51ErrD6XKSVeTYyOKKbj2lb3Wi8
rlufLwnlN8+hSvtaaA5qHhlGUn7rfP+XN1TfrAxMISomwkim+QMashFWJfRxQ2zOppfJiCn0XsUe
n86HGPxXuyIIYELgMXXL4qnz8T+lcIHacjaiTNEigr0oFrObqVVEgrikpENJGcu6mKaYeOH1qwNi
nnnU/79gfEHhTLc7KVLjQWBq3puMcaW9Odq9+wL4EqKLH+8vOJE8gP0kJImK2Baf7p1t7JtNW9mP
E8A44hqAZPQeEmflW+FU+KJtHJIqkS8AveEmroTjLtFPyOduXE2QziaJiQsFkKy3XxLNbTJeDq7s
NurpzgDcn+/9PDo7UwzF2Cp+wNXxG5FGwPdTZZdXH+1yaBM5Yz57DV7yZr+4XJjvvdUBj9nWaXE2
s1H3tVClc5Guplyt+1RGt8dKff4wiYHa8PWLJ1vZsi6aoHNM9XdMtwskmyI8IqMUKtgJjruNEWcw
ap5I0b58xECc2NNNj/Q/4TJuR+F0KU/NuDQiwXNiAx7VyhuO4KshyYVJ1AlNXZY0mWT9xEfc0V0+
V9M0KJQjxY9HHJ4Fn2papKT9nGt31AN4zvSo37oT+rCw4nbQ1+6TtlIwXpMhRkS987CeYicv+6dr
8YxknwmslXuAB77ZIXuuFNPHdsdf5n7LnqL/24y8i4aBBnrafGIZNxlIh+AqqkLvyJcBEYqFQ+Nn
mN6nz71WdEHx9+2AchbbomVZyIEMsJTMIvn//X69v0fq3sk4ebenZEVcvhaVNRLRvdqqQ/Wf+ARx
8h/VdwmyiaYVpVbfhoVmD8vo52LN6EIwo9hec4QmKBUMY4tJVUsT82OTlMMYpDFCxBxSKWalNQC6
QbIWZVfhRUL6xefshKHR/fihi8rFCA1/lmnXFO4tOzzV35o9VUrVJVe6/7jWR1QUGrUOEVImOy65
/NrI3Pj437TU9C9dX5T3BVFdI3gPZX5+/0l0ABmYvJxxx2tWQdqAcfTJzGdbQcyV2WKl9AjR/qCj
WNdFNMBrqFRJOFNbYK3tY5qe3QYPW7UhVEtTmtcx22HlVK6rYrmGpxCuAZ5e5A6fzLOw4kvHVzlJ
7efnTC2rIDmfdoj3KV0em0s4ABCwJIQR73tViPhMMyc24grWmLzuoV1isBrl1U19HAaNjvjqrlIC
Wl+XApNyo8oekixnYMctSQ5VjMqMaeXJ/EJJyzo7qkdBTLTS05U+6GGZGZ6/OE4aLez39HcyVbm5
m6X19ap4uJ0G74vhONOhZBb6h8ZpPZjqJJZVUrRvmCSDXIGZII7yrBay3K4LkAbyEi5ngJHpbzNm
p7pxMuGcqlOrgZ3sNjGTkH3BNrl9LSHva/LFHcoZ7tNBPUU0Y8dA81XnF9fxsvHk4FRMK97PltFl
x8rlecyqw2aXuweUtXgwHle3CbDOSxziRA600NZXizHMYJsndp8U7fnBRrQxI4m1yfNe0fODlmYn
iLkVRq3Zp7aFGJFDbylAMyjFeJxMLgj97dSi+3JRi+giLSmpURWHSP1m1muKDDhIUA17Oz9/GaDy
fRbD7ncxYNvgnXc10X2ODkdHe2ZbbDmYCoBa4lEalyIQHw9KEVB7bqImToB3ZvLrnwABX/eOiQ8W
VuEmV08xSgVaCyxaAGz9Zlf6Ekk8kjg34K8CdBoiEew5zKdqzeQUJpwDOQ4sQSZFZk+HrVZRE2Hv
yIU6n7S2DHsu7l/RhbSa0SxpB2NUZamExcSnfaBmBcTajRB2yyRa7tvmqq7ajj4wsyL/6VCneaOr
DHrk8EXxtVvUkRNAp6lrCGYa2NTzov2eTUlxRmO5xde3Z1z1/o+n4PKXFS3cTIoGpNf7CFkj6KHa
64mN8XIdo2bgkOUcDzmPZBXanzSOWHLSU+c43Jzih8gf4HjO4ftZi0Uga5tZbQ2eSa7ehnIlrSY4
jr6aAufW9W6g8506ZzsTbo3EeDmhTj8xcRsBaO1b7hZYaHMsSXQ+BSPEUs474binKatcayf0ku58
3yZMkk7mNsqA3t5qlahXg9ZpsF6bgLD3jpaBHUfobbZYYg70ryoItOHZlwWHCOKl8apSOLIj5ERI
GS+7M7+fsok1Y3Nq4nuNh7twb34UBvEk2sal7T7ClCTbLiOw853RM0VGxeIDg6uqt0gShh4Z2GPA
AqoPvrZs+QvB8UCLAxxelaQsWNIq2RJVetzF+MI9Z2/M3epZC7xn7dDn4cWrXNTJv4fB6+3RjpnS
uEbnS/5qQOdvF+riyt36JB126DlJNstpYaTpQR0gMo7MVM5S6sgtzBUAbGVM9Brm4XHEF4JaiobT
qiGrQUWbgTEnZ9dLfk9uRX1LRV4dExLWWHrq0t1ytTHsRy3PeBr+X/D11on4nHhEAjPqh2opV9ph
LW5pv2lR/w7/BdoSuoNxPaWjEbVuxhywXRUbFoq+LFqUhAzE+Obz8mJTqUqiZbyqBYOvk39PPNL9
rM0nG+C89XTY9aOqYZf64km50RQ5r/vLBRiI+jXwDDJf2O4pyfTAtOQPFKrIyAkBklodFVHECh7B
+ZHW6h+6fMDsA8yHp8zcrbVZAVj7W14HLvSIETeyfOsN4UreLWVTpg9t9/lUYgw9gHv21Lh8umWM
VntfwiNnYuacMkTypHJ5+MJuzeNpbMCaOPOrkpPx1uT4bEhiPeN7U8dBQv3uqHAJaMKE+ZhXUbth
Cr+5BzCMdA8axDozbSZ5XEJyCc4OTSTOCCqGxya0umducEmijPfv9YtFOwTx5SIpM664vIGt+4xO
HdZcvM+kHhChgXKrVi8wT6lKXLwLoaTpqEd6yta8fXyBBgSxqzQD/54RmPlbC1kh5wwLYTHi/7EE
x7UTz5SLBjJSdvjI7SXDCBCmcxI7quNMwQMOMnYkAcaXeOjEq3W279Sy3DHaSyP3CqWWMVzAVwnf
b+eO02+MZzW1IpNjJhR9qtvwroCTWmwctj7ExkgvBCQ1wY5kf7hegNG9LLRIOZ9YxWBi7nS6GLdi
dIXsZJYSfUjmwV68bdBCdPBzhFM7USpqfoT34ExHlSTJtgehZGXZ4WjVyj+FyS9DFN+ARWaS9lhg
sKPeNbGhdqumB1+MmvPoevV0q+gSh8lq3DAT7vrF86AnnOUgOI5JTko112hdxLSp/5nJzcEZ2Rs7
iHeRs1gY6wK//nQkvL3jC3pw/sS1MDlkpis+g4Zdl1glKIQ3Ezp0Q6LAurob2y7/KOzsZQflhbh6
g7o2vDXSX0CnjNRLRW+wr6RdamVME2Q5fTYDaAfh8o4xy8t5a7zS7RdwUv7Ek8EIF/TPvjAMQu+M
GaehU/2tD+A1bPMydTKb57zIuhvz0LG4MEGpYsxJRHAlEGb3CwqZSDRgGoiB1Hqiz4BDsmyJLrdS
NTVaubdgHWTlLIiIXcIwaXUp86vO5Z4FApFY609CoQ1tGnDLXuFZ7ZruG0ESQYitqxIeIhS1dAqA
5vh85eVdchp2aOjZrvm+MhFYgFQwNeGZCgHjsjoALgjqHwQczGGPPr5XqrnYLHGasn9EJKAAUkiO
GQx+3IwMtiVLaNUYh+Bkyo+E6QiP2di+JqpFhF6ugH9A5tXb12Jz116f70EHBgT/3chBwmWG+LYe
eA0y6S6PvdPNOCBBorMC0R/v12/2MMnanLYJ5Au3DK9TSitUkj87BRkL7dLCNhI2BNCO4Jl2rnkB
HOFP+18AjgFLV5xzfEBNDnIZtWx3HmiXAHAtdkKlJbQ+Uywlkf1VZuAxAG2pieO2Z53C384+Ozld
nGLE+WCJeP/61v/lh7Ax7eR4UXAARpyEYf609STjETwJwrsBbXj0EbaZcJ6pF3ClIBPugXdShgcm
QUl9t9q10YI7vTfpNg5MXqzWAj8Zn70zAvtCuaTJLtOvs8LPsxCcLe0/OAkDLoA1M+buDVxPmS8B
4A2anwRtA05O6UUB4cU5MD05Wb7+6vGqnzCjsnFPPQivUex3IsblC5pv4GwHkyuWOcOLXnmrP4Fo
usnxyFsWfs1sDKzQBeRe/4ec+4xQZsbnNo8jF9g/gf74PeT5Cp//5wZa15+tA1e7SnTxK5y3d82P
Ia5SQHPkoCfnQTe+N3plJ55xtj+kDDNtdKCMra5cEEEUKYi/0wYYqSXxHHJKFzzztXUgvV1DOOVm
3WAmwlTg3i73w3e2J4Z1gHNgM+M6BtluYLaWzKuZwy6ciHwWTQa4Mienuv/Lpdzq37NhasqDvPn5
40+PKeMWlJmg8OVQuqf2P7IpFTOhAIJSH5LvtVUXezji7eJYUWqpgvdYel0RHwgajXNQf/lRPkMN
dv56zfDAvAOZ4qOJr6kaTrDztGZlFcpffJHbtiNI11UDhY2MkNCYjeHGQSTXsiSP4lpf3C9vYXf0
FCfDOtSGakRucS6MXKRGbZxZCHQ/8LH5SxFDjZksCo/RYzmYP10KYfWhsFvwl4Pq1S/TWh6NyOF8
8+tv3QkU+NjyvEluz87pxlyKNMj/wkN1mg4SpQsIYdjVEnMPXgbScPegigwXbTj2srjRZZzi2Wdy
aoBKtfmr/15C3W/+75dbhDMSMcirlphuFMM4bH/telahJWvQDHzs1CzgNRuS3N8v0027cQryQdHP
JFH9/VCb87Uyaz+YnL/14eMvWKn+5jqo3zMCjeAtf0kj+mPdrJD2EjLFmhZ34j5XbV2lupOqj3yT
ENh5IYd9A98BuHoGMKjv0CsR0kvJTxTIZ0IcOz8cSaA4qyY1gM5reNcI8ib8ujZlrPVnwJzOpVFM
69+bJSoMHglwVdczCB4crVmoK8VBtPJYK0JxjiF8PmjcjLFTX8GhwnvOH7dgcTt764ThpPJpZVXP
Jbbkg4PnoGbgVuD3x7azfY5+EtluU8BT3J/WMn8Nxy8RPqxrIwFr1x0M7nnJfr1e+mtuI/+GLSCJ
8gIYAsMgTYyHs7d77bZRz69y7W3NiDC4zk4i4+asIy9y96pyZpHqpv4hzm1NshyeLI3bQaJOspdL
2WSd4HkGq2AuNCt2JF4LQ5leoGTRCgJZLrkNrTGpoyV/X8p82oL+4btI9Xb1yqdVl54uOBjWe4ta
DFXgpFBN5ACmhdcpAT/d4RZra0/v0/gIPwCm9UmBDIWz+K20YYh92XXo3sFiRWk7cMr/ynNP2yMq
Z/bPjqzj50aJ8KbjJtEF7dkyAbDyHZq4wKzbleMX9zR8qKa1BD9s6pHiJXCdjbft4+6vZx1/D4qd
kShf/Oues9Lvc5XapWJAnTjLd2sV69/XrZl+/u7Q17RAj6ll3Wl3kbUMz2BsTyNGECxK6lmqLVBd
cl6NDkrKXcCzsnb/TtQhzW0uVviuJX7Z1xubTWNl5kGT69wuUnW6AszpPw/yWLDV7qEslxEey/Fx
xPRTFXAHZO4l28laV0Nlt6Thl9CHjb7RSchO/MJD7GoYIGb/d9DRPWfuZeJFhDEVoEd+nE+Nn0vQ
kevhx5fiTthQderCWdaAI9KG65I4PAedqS5fppAaSvW7nfOSjlqOgCfU/fhKQgl/mqOa+N1AHDg3
DUUCksePmq819+H3RYNfma0CLN71nSvFUeTLsGVGbox19N/svxuWw7PsWQ293QLJmXF/12odsSmO
o1X51xN8K9W71uDdaiwikz8+LqkQsbuteQuefuevTwS689/1gDrhw/2Jo6tCeOrhZJe8RHYk6fGV
TkAf0s4bKXLBCoVI8m6PMH+LdSgnFsspxZKGFiOB6poDOyEku4f7pYGu53yNuoBfdLlE9POi/trr
ul0RwcToHqe/VpJ9Jt3EtPoTjXGVwkgIeGG072Zh1o78iE/EEWNYecGInMzceV193/feWDDBf6v9
I5JyQE2EtrfEmQGuip666LLFdfkUXyzy2ee4XFX9BTMXPMtohIzM6ImmXYI8eTFU/PWqus0biDSq
edMUBuScjw6yl3kIbZZdDXCcqxwQ0YNcP+gGhAeargWPWdNG0hsfFbz1meIaR/q1kbe5ggRhH0an
YAsNRbEyn4LyKDFet/pwt1tVfw4r1+V6TF6VYN9DdV4cI9ZkslU19IVWyxBkFgxksXQU+Wpq+LjQ
Muu2glLxND9PQw3e3JfHvpk8oAezjPX43lS8AE+8fowupyuhMcZ7NdFEFtbc2ubiE1BGbDwk2AMJ
MocEPN8S7W0JuPnCiN2zCVVh6pEB6Ff+LAdmdNWNtSzB39dda76zDLvQaKV2zOR0vXTjoq55RLHW
CtDKROqJGniO+fMnq6GUUzyk6FdVnBrdjUPRK+8c0LcPHjLIzBuCSLpiD33kWRT+IT+/ADLHT222
gyLmUoLs12cJn4Xd6OZBcv/sX4TqXHmNCRpRuxyhYp5qYFZpfwCmoLc8mTNjXIESlbNQIBeIrrAc
MaGjuQ9rY2vzTHk8BZ9rzzWkE7p3twZkTLjEIaIynwhxP3RnabkCkQVVJmjYyxsh2g2qHUSCFgJh
Rx2Z18QQMH2z5DgUh2nMgTmmhPUXNBpSK0TXj/Pe1oL0CZ4CeqmKJKwT0l3OS2EQdGf8aGi3O5KT
NZfoSN8iltfxR+44gu7Xil6flmdU2P1993qjo6sysU4RSEAo/pW2afmsS8+z/4HknyJj6NL2PlwL
GZUwGMF2Sirp7cjabzUFRp9XH/mwqCHW/9gE738vIbS/iMuuggwFu7zgkSHZWVyk/e/xiiVmzSmS
J71TbdstCdwlaOViCsDK72tL54X8ePq795ycDJgdWoTrAg1CVrvkZzmhYEPxskVAFbM/1L6JhFwY
9KD3NcCZHEYXClTe1vfONTeUV/PCDx4anqY2jf1djVpXrbwIZ/ajWCc8oe4wYdA7998HsOuircWO
d08CZBgcfat4NcZQQYL6xTblCjFFIE/psYAjR36LFEVUWlgTiWAlTZGx2FbNK/1fJqLJQfuO/wiJ
/lYSwzOVI/GDvzAoKs2ZCk3DkjWBnMApv6fbFZwxgpQhe3ZsZc/WR0AY7wPTt/24We3Dk9dcW/AB
fXPfT6V/3LHD9vzItZmQCuwbkYr9VDKorw1dQmoS3UGgTVF6SJYdTUE+FSF11+a3hXPIPlsRq/hG
3VFgkpKrzkzM75YPyw34G/BgavdlhbNgA6SJ88xQdK6F0IxuqDQyI8wH1PI+Z1SEQB01waJ6miZD
iyz7JI1c83UsXMwpYfSfWGpk6exaoyLrH8X93ZNZpoDN5oDNTB3x8a+PIH2tst0LXwmVngqMC0Is
4zQPTxveG2uxnVJ1lgMNEwwmFckXpGF5z0dmna6o+55qTA2kjAVI2FNBIUm0JaKckFfYtowaduGo
AWXZIK68KM/HGU8C83Q8zqZMdezS7thVQn7eLw2bUFU8bCUmt5pYdZYAquf/7/tNQfnJ9a657226
q8I/X/swZbgAjBICzrHjmb5OyzE9ZBj4ecAcxrNKLRr0v/lrcimQPgiCSEOneDeoUw4JrdD7upRt
e0q2rbWw/bUFN30jps6oFJmaVAQDc8R9k3DjM4GYPpKIRo7WWk10HH7ays4SurvLd3BWwPHN+J3e
qUVCMoNkIU7v7uEd+YcZdQHxQexHjngnO8h92qdRsIaFD8tMAud9NcxDPKxS6rIcrccjmR7aDZ2k
l9Ia9fWhALUYVyip8ssSqjGq5rf8LDJHbB3BLgvo+upDTNL60ukMmwOcLOb79ot9XKfSFGpMXcUG
aCE2NLOb7NPCU0O1A0DSmCAlcCtOK0hTMCQgBflCiiyjnSEnX4LhfWHXmwF1KO9H2ffDOfXqGEZM
lPnqBM9TFJ8xrka5ayK3HsAcXpxVVGH7Fx+1v97MrXhblh/Qq1SEyt4Oq4Uwf+N35X+/P0iD260G
xQjZRNd0mSoQ5R512Xt1uINGAw+yfjdqTUQf/5V6+X9pXgS3WJ8IR7zeaSvvMAe6CnPAz+uTXRSo
r2TlsPMHNbIk67o/R2debUqlrztVZz4ICSC9dQ7Y5jj6GDzPMecAj/PZg+L8+DODRwL7mQg5hfWx
Oy5RVQfCfKXh+KOjGWFuzv3kebpFNHca96JFbeu5OqBspJpx1EqcyxR12jTm48YwfhjYq4Oiitsi
8avYP4tKTvpvl2UAlTlwu6/8Ys5dN7RxG75REZ5NEWhAc01qrQ+qoxVvzShvqKDSW0wT1C9EKkyL
W6mcdTCwYCFbFGBPnLIdZim1Ei5l7rQq+QLENEzStByFQyNx9SmvxsPLtY/golmdPokroOhbog2m
J4qqidd8XpFjvgTlG/kU1NUzjklW7VPLFukSS7gZv77zXAlYLr2+k5uxtZgyl9NmrezijMBiwOKG
5SrI/a75t2TglaxVtwBGj6uq3A7i09DI53IcxK9dvQXB2eZsEFGbkGQPXdcOxDhtn616T4AJxg8s
6g+9/nj1EAlcKh3FG95u0kYWnMddAGsSAmcPnLZar7VFH6GLeoRbG4Duz1+HFLG+9FuwcYkeB9YH
02bLNzYZ6YdBg/uZ0DjdALKzM68GE0ctTzgXbGeguxLQn3nwDHxriYIDtpiJB7l/NJmaaPAeQky9
y4fxKZWdjiJI+xWBuY8bLfS9EM/Dj1mHEPJOkDBYiybZ9YOzmMwpxaPT5tGUPEZ8UKOfFEs9rzuP
owxeqtBguT4QiMOBLidLN/2oUJyTvpLTOdvi0NSF0JTRNUuLmjODUBIHZeVEVRuCInwN0Iy1zqBQ
p3RoFy4V5YXMHa/YwD4cBkhTI9vGAj8U8iPAVY+aWn7nnPzcx7U3MGTI6hGbYO2RXxQzB4vcf/UW
sAP5taPm+BLGEh8auv6LjEgjEwsoUEFaaQt3RdfoB3GuZ8Cg51DfDDFsdjz2toTGHb+aFOL+1Mi0
RUbot9gzIJM9SFeJsncauc43kDHa4jmwdZoLeR9oJQP6vOqAEhmwDyhQpwA3NoBk+lEPIEI+Q5CO
obyiEisCnT5i10HWm7J399Y3LwS7XeqJMaf/OGDBs6RDMwISAP2A2H3v0LQSEDOP8lGJ5Unh2ZrJ
oAYe4yHFg3tOmtWOtjVAx/IAZ4Varz8gRWHnWUq87tRJ5pAnXW/naoBMOyZ0vMzPWayVafDe9Vdf
WoQsFqBPmJOw34lA3zehyVYTUSAdsAvCXNsoMJp1foN7U4WpBxaVGM62FIA7XRq2DoA8B8gIR8F7
a9C9bBJZJPSYY88heBd51MunJRoZEjpJbqXj4bWglSQArGR6/YWqKKQdg8DmNueIKAoFxyPdUuhC
oRXvIXYAqVBMN/LxEud8PNeFPBtItVHnloBfykXzgcCbX8xq8zGGIV6xEjqVzsh29FoI1KNZPgNZ
4Wi8zuLrfgpzohRBiwkctDBi2bG31x4uSeDTTAtBNFbHmqxZScTf3Wx6H/tqctnZEdrOyXx0ejLS
7ilqOohNioNZcbboG+dfTxASL6ByXLsg8iZWEZEn6MiqSe7IdBaz4HhOprbOEuPLUrCCDxc5ARE2
wkYHvMFglphsF+Na3pMFU2hztIKLRaUCQo/0LDXApgwzdIpd9yr/WeXDir0PvU+sJCznTy2VU5Fw
nndF5qCs2oKLzSkuqwnJufnW8oJM8brmBxG/Dx9rj1Jn8F9kB8N5rnU4ciKFiPXSR01ogH/5upCO
8bVHQ0g5lV+DVM6hULpx2NybKMVMnvfhyiwuq9TFcPJMK56F2ufRVoVBWFkd/ScvOMPSN78n7fqO
cAnPLXDwE1swRT8c76V8/K0V3PLnzG0eptfDoaXK5rBIhc3be1LTjX5AciPpieQDfiHDyR2LQKLF
9hvjHbFBugOF3pEK02sR5TGaCRg=
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
