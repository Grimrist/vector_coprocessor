// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Oct  9 18:40:26 2025
// Host        : Cristian running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]douta;
  wire [15:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb_busy;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
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
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.0361 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(rstb_busy),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27152)
`pragma protect data_block
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
Ci46DGW7km3RyWIzVk6ZFda9IMU=
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
