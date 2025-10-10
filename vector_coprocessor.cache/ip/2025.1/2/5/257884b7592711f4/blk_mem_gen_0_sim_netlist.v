// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Oct  9 17:12:46 2025
// Host        : Cristian running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [9:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [9:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [9:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [9:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [9:0]dina;
  wire [9:0]dinb;
  wire [9:0]douta;
  wire [9:0]doutb;
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
  wire [9:0]NLW_U0_s_axi_rdata_UNCONNECTED;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7865 mW" *) 
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
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
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
  (* C_READ_WIDTH_A = "10" *) 
  (* C_READ_WIDTH_B = "10" *) 
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
  (* C_WRITE_WIDTH_A = "10" *) 
  (* C_WRITE_WIDTH_B = "10" *) 
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
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[9:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30000)
`pragma protect data_block
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
paaQJTCNn7oZmF1Un4ZDa2di
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
