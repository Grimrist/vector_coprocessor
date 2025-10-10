// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Oct  9 17:12:46 2025
// Host        : Cristian running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/IPD432/vector_coprocessor/vector_coprocessor.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_11 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29984)
`pragma protect data_block
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
nRo=
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
