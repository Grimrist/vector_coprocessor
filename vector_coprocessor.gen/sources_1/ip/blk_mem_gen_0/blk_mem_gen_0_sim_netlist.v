// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Oct 14 20:53:10 2025
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [2:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [9:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [9:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [2:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [9:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [9:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [2:0]addra;
  wire [2:0]addrb;
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
  wire [2:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "3" *) 
  (* C_ADDRB_WIDTH = "3" *) 
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
  (* C_READ_DEPTH_A = "8" *) 
  (* C_READ_DEPTH_B = "8" *) 
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
  (* C_WRITE_DEPTH_A = "8" *) 
  (* C_WRITE_DEPTH_B = "8" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[2:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[2:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29488)
`pragma protect data_block
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
Go8xflJXL0Vkw3c20J0ScyHnHw==
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
