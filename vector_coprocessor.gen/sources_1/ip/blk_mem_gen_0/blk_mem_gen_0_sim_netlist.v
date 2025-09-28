// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Sep 27 14:15:15 2025
// Host        : valkyrie running 64-bit Arch Linux
// Command     : write_verilog -force -mode funcsim
//               /home/moonflax/Coding/IPD432/vector_coprocessor/vector_coprocessor.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
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
  wire [0:0]wea;
  wire [0:0]web;
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
  (* C_EN_SAFETY_CKT = "0" *) 
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
  (* C_HAS_RSTA = "0" *) 
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
        .rsta(1'b0),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21680)
`pragma protect data_block
R325f1wxTXi6v6xkxxDzvcj0whWPJozGWt38v9DSkA72YoZEue5l8+LtWcvhODYkxNyz9T9As6rs
RQ9tuTI0lZLvKH48/97rXoZ0OC9tpEB8BL4MWTKaQtAAai31k6S0ikc/ZW0oKvWVnrlFipDtCyyT
SAB+G/8C2HMe3CjCM6ktp1ox9BGvUvNpwbnZ/hcvmYvn3s/3sP7u6ZKJT+lDcmFX8ehd3zqVTCV8
XwavCKF/u+8P14HidPWGnZH8w65eePG6mpowyTI38Uv3DLqvzuYM2jn4a+FX/ej3t+NXsFuyBGGY
QtCZ87gZmfFaxO1MGtGW8F3ySUZX/cGCtIIEIvHg931bsLguQ/+AUsm169dZqy8QHKJ4GdDfyPjD
V1DlrrH1xg2E1yiWhJfe6ofEfwkc1Oh5LlDWBk7K1GxYCvYKZdSu59ptNUUVGLA3UifzHL2ibbyv
1Ad8IbUTwOag+OJx0tpyR6VP3OhnHnPBZBH5dItl1aXmUyGZh9heL1LTb7515MUrUzK7sk+VYIxj
XPNHsr16FNArnuH2y4IXP7Qz8kHpVno8zdNB3nS1xiKeKehN2fsV3LNYyC1M4oS/33tR60dot280
3EZXDwMtBHifsznfuYqBHLMkc+k9+w8A6yHjG8WJQlTUTYH8FvxbM/0h9ArX6ytSU20f6mp6jP2y
LE6+RW9evA4DzMUjofxrqNotDzM4IN9vsEuw3xRCzkW/yrO/IZwEiM2g3Gp614j1n+rIorbLwHzc
HxFfkZVWB/MYOdXMJr1CHCc52jAmBKbli0FP10Fx0oPcRJW5KGk77SjRN9KE3e5bJE3aG28wuURT
iA8svQX3X2A6L13wIZt9m0t8KRyVfXKxZYdm5HfGNjPFYTSMKO8O5er20wSpptZnl82HgRm3L4pM
aMaSUHhLN1EOaRfK+JTPXltUa79Pi6e4VQJIlhV5kO13FdjZIUPgEvXRuSIM1lRYYufHOmCNWWsK
qbXvifDzULXW13NW9RsKjaG11qGRMWpdzwBEAMPHYKEJVKQ8pHE7L7VrCuIB75JDSafv20ghFr2q
T06wdDA3PCSssVZAs7t4Vxroq7mVFZLMmWTdzDMoijcpGzsgLaJYvk6ByZngbRgFtChHzSwYWkLr
rMAL+we4bpL4aCWfRoKRA/Ni2L/ZHo/hiG4yx8dPyp+eyuICRGJHpuDKjA63DKmjbhRnvCE8Za0D
sJ0o0QSfkCf7E48U5SqTcFkLDyMgXLkurp8rSnsp/kbwnGOOl+79QM9Li2NbxsV9pmDbZTBiwtCi
Ov5M+GaErjn9ujmAg7sRCjx/isLAYF0bDikgqSNJ21WfXNpvFMOPGVJRsOqpE9ZZ9wPpqct+5SSy
wlDI8d+vTKCG3ogyVMj6PEfIVrhE0dON8FjCydMqFoE1L5vi8dtbPe+FVT/QQ0kjCJcl+BpUtLLj
BJCPUWpHiOuZRfAa+Ln/U9tyoVp3BrlGMXGG9bqjkyBAZ7qvcLQP6NYGvLxg8Mt6V5Z5ZnHjmRXi
75FpcmCEcPXxo8kcuaSm9S19nNgwlGHhM7+rZx5clt+iFKLeXNF9wd5Qdxm8uTC1fH/q9jHmBdZ0
+058IxgVFqZ3DqZ7qaYD+C4SAiSKHOQ+YZ4QBg/Wtg57J4JmFZEW6wF1WSEh40cR3Jf9qQKJlmjG
dkhADP0bec9Oswj3LMmwZWDf8UAdGTP7YwhHY0TcUYRwGj9b3CGZOIni4EY1Cx38I7K8YbuVxngQ
/niEeVo3A+7uxL+rlfMf+eyZiZaJIR85oSI1I+VglnVrdoQuoEbo/dDbhXB/Abl/SlNHzGZ7byaj
hYfHADUUXkadJfqqtsIoM7Lg0HyOomRUkLRWpOnXFB1za8iqj2S3R6HKS6mO+izvERzVDtQcTpyx
Zgzi/UpInToeh/nhkkQr58i9VpFVJfgzCEKQSfER9HK74BdWrNTzBKpjKqxCUQRhpBYIV8MteYM3
FRd2xQ3cNKFfQaGQG45HunReoIuh//4w7IZsc7JApGeysbpyTJzFMleO+AonyROWodFFnC3OOWBq
eeFxuJQneal7QPz+fh4dDM9/C3C8fY+7586AYoThCtVcgEQLwJ8Hd2D6TCf1hlIuV1Qd2rYd0Hzj
bSGQFDA6xBCIQatt4nTr2cIZUsdzzpzV1xmOtYYCrPuDfWhxt4x31teHBEl03oIAqtCnt3cYLCgL
pQ7zQbaNoR/yWt5PIS0SorfwIua5eo/6lC+IJy3K8sGKrMHW7cp7z0UW5H2ZaFug+hHJefwEVNTC
7KKEGhGGbMxHNKh4Xbc2IIWaoCizCDMrLfpdLfg5OCiqJRmsTvuViiHgiUyNRyZsWCdh3IxAQZLo
GKlzPh8T85hv3aMnE+d70+OCWq4JfWPddELY2z0R3W9wN5Q+41BjK0rBRFimsyecBNgBU13TCQOQ
BrrrRkRxphXYh0yE/G0oXeaYbN4QxnL7LnA+ogAA0U0FP34tlvItTLCh3r3Yuiv5noS9Gw6nHXiZ
y4RHnP1Tnq+oEBtTthux/adROEZFcJ3hm6uHGDyzVeAJpe6hch/ndKk1SP2PFyC5/byeDcFjIU7r
ybyHUL+QPOYyRt+lw+RBA/RwsHXjGvllWPWaOnXvJegIKkkLuqtST0YACwEyIPHKwVO+8W46XDBj
wuZxGjOa64VwlrfAKbhVce9AiyxEIBvYWuAt/4M2JE+lwH0AG571LopLzze6u+BsT0N+WRqOFABK
7uOiaNx/Vm3TfyPYBsw9JrbYVDOaXVNtCJGnmOFa2aZV6SSJFUuD/ASO1gi5VF5NEroN9/XCaRYJ
erLGas/FxvpA0lxFw4dGcmOIsDgrlFxIr3c331jwchUM0T9LxHx5mnGBQU4XNeC6IN1hpUGfc3R/
Znzc6iVJIwwzrPf+EyBnnPz6HpBJTa4/zurB1ND6ln3eoE6Us4HLESsDm4XAYpjsewox6kDvqbKi
HZeKMDCFiq3wpBp977kxRB521mwydnRQRYoyQQqtJ8h5B5J2ocDNyVaJwTeppJRiObbWnLHs236Y
YYNApmMX2dYzXXBTN1lfRdTN7Tvr26PxoXEyJe8UhFYFeShjUnI6y9CDmnym2eH3hLuGkM55UHp1
CJabHl/5jorK7Td0fpnFWKyWgEWhD0zRb3SIfNZmTgYMkVZJiLgsdJ1ZfeXanPLevMh4yEHiEBWz
qPR/qOveWVt4OXnmI3WN1UGuKq+e9Gs4DgEdXD4w0rJElrv+NfIIPKHXEVhRI0gwEfFl/oTt3FeM
0uiGf9BX342hlXUltTHH6ofOL3t99iy/zuXnppP5AqEE6CvNplfmhvAkcXBQBLzFIZe3WaQCHcZ4
JM+miUF4JLofJAdqrqsMDtZBZVeNPCQhToO0S59111a3pCv10k8aUNe3tquph27bJHfJhDtPr+7s
sijujy5e3mKxv19c9sqqjLeJR9ruOsrUwCnulTgTnbhbqhHpB4ZpvUpf+z+p0xcWJIs/uALMwFGO
Sl1zliLJ5X+E6EjRm4bSNJePB5a+cEFj+aaEwF4wF2aYmxbUy9gFSo+0mDXUCP8CRqzPQUesS7SD
suTTq5cdRqSu6q+T6sQi0m0X7XabjXeX3A7JBKWKD3bHHH0WzczRhFsDcB+d1feG29sdXjsE4ne7
F0E9KMkG01Aa+ol6hd9iEhTKfGHQvYRQ4tisj3F4rtqwMbuOPR6vyrksGg2JTflD5GThIfyJc8+Z
quILzuJwV6xZ3mW1qhShEf8we/0RU9gnWEnyzO1s/NZGCo8/vBpA5jZapvVx1yl6ALh9IUBIJZdN
vF1jF/4ZgmqmRwBA1tcbqvLK6WEuffvS77O+rryxvpxwyui8+iManCEU2Cda3vbEKT2LtAnejwKm
1kbkgjMEUyY+xp0F/lHOCdtt+q8gHLVqtZkiQNqcibHjCYlEo6GK4OIfAnS+i0aa9nar29y0J+6m
/D3nt7cJEeBPlfr61hGzkL+Kg5jbhbJ2QHTwaPDL44Ssq5EDsBdKcKrdC80WqEZvE1ObfhnpHovY
0C3g+HtkNpaD2GCloyq+ppkjEMABzJjyI2TlLF+z0MxW00Cw+OfkPJuzRYVGyNf628IP7Pb1qlZ3
QNQ2Ev2e2aNFkoOyc1IPKD0PMf09IGl8TXtA3keJOOGw0d1rHbnFeVVyHJNpXGDFZTZAZyiAeSZJ
qucNUNN/JuVgsePhrI1/2ndjE5hKCh09PTfXtaerY2hpuQkwo41yDcS7xFHtQHnLyAkPD2VAqIDW
AC7wN86Z4f/P/FrQlvhWROhjy33RV+cwOqnF4zzIVdyYfgW/dspJ1q5ufSVo2QotYUP2L+oklX/z
ZgCQ7IODHLlp9mmhqFdzud6So3Ofi7DyPvBoKZTkgUrxUy/1JqoiwEpOw9iIxCiO9/A0MGE/LXmm
BdRMVeJfjmP1/6IAMqT39x2bF38umWDMNjQ9/c9Jx2TYvE34nRJBeaNYV1ygd5xAkp3+vOYjjDXh
SL7xlmcp9f5GaBt4/YZH92vij2bEzQx4JO3c+NyvIz3vYm1e5owTCb6n0KQgKbQi3VGck0LdJQbm
P6Wq+OAeOCh8hn7nO4+HX8DjPkPIGD0EiianJbsEwLlqU+L2Hyi5AVJ93GobPVlzU79Y2fDtZ8ZC
YaH1g/FIwSUWQ8RdghnOy238Ou5cAonxzIPjXmvaHicfwxWCjXw4Wczu0ZiZfloiDhjyQsRxP2Hk
a/dCa+WTJooQWK/j5g0AkkUq//oofaVk1kqWT6GqcUk7WEtaWIj/hhrZS5/dlcfS+ZIOvLACd0mt
4H5/4rqYemYD5ifMeYJLFbT2rE3KAIqg7xQel7ZzOCKW8EftDO99Deo5r0XPSkUrYMKrii3C/dfJ
zYeCuQDBbte0zDSBTYXcqxeu46SUbACd760zRT2MO57SIPrb/RGEcVGZnwe0xWPLx4Z/6CRPKDHd
W0+uVOcaVC7WZF7H2O40IZYPAlkaF/KDEYKCZOmmMHRbCfnhwbowtIbHAHPObA7SOwS90oOcoYGi
hJw1wOz7d/d/hmvtgGOLXOPmuy20Xjtfs2AJ1mwu+A53paG32St0l5cbTN/fyxZr4Z82vGSOgIUt
1UGYc2b9WsFXhYABACY+EzuR+HXERjVcEf/LSIsyr0ZONPLVmEdXJzO8hpAe5iUZfNUsS4ZmF+Fg
EpGmxS+k/ZXhQEvf7gYZTunwa5syNBBDf6rFuEJifXTQBTbUS7Yn0nMy0NNGal55BMy1XXOu5/ev
fpbceUTqeZDk/HLvVlXkZuZqsMzAIqZeHcsqJA9KfqES52o4L46klDWrjsL7MieOv/1ZyWo3OQ6Z
pMGPsIMbOsyTDvOamf7sjxXCS3y6W/K4S8i3Q9EIJFDmj0nsM7TInR7V7XtmIitHZ5QJ5+ktjw2Q
+hq7LATvwoA4ZhV4Qna28riypuWorkQEP4klzkvJHGvU4BiKXLG73V8+wt4xemAxI/Eb8ZVFrrVk
TPg8EYzlM9W8OMrejDwQNw3reunxdKZbuqOT0tRnUdh0NEf+VHKwOMdsIV/FehC2+tuMezIj6pzN
JVuSAJdaay9fbX2J6CCuVs4JZSDVT4YHGlUvYg8koVJc/38vK9QZLTQfjCKT4l3GdvQKOEcbGynT
iUPN5sVKBvVLK85ySTumbUNGhBSicTjiR0n7v17K8nfWjMYRTo9/V4JxyeHtzyLhSDB1ktaYUByk
Mc3jT5MH2Kzmt5WmqpBVuatCNOj3vkHp4SggLWdKJzK35n/RZ4o9rmMBZPcwvMg5oXLAhzhkTnIk
AUA6/s9DHrVN9yMWWocWpGEWyQ+KYT/mYtAVjLzIS4ZDbO0MJR9H7sOYah5ZXHvVDlZj/Kkgnop0
/fRGI4gXjdlVaGvH7waQWd1VVewYGFZl5ng5XiqbQxAPcRy42GnTr8n4vv4R/5lWTJ5+euRnwQ29
EVKzelu7IeJeRd5QoQnMFT32OLlG99dfI0vXMQu4m5RdiCZnCwmeOMgK6SN7niDsf+MjOH9CHoai
H9SUUnyenbVuTDt9dyk/fz2LaFA8f3pEMLY59LR89+gKvIx+5AmyfHIYrA9VpZ7c0FfoxsTl/dow
dPl2rC4d1Vie452icCPLVy7oxMkc33/qr9ydW60ggvLaKW6OesSZVs7R4b0s1Qaziw8XjwumtGcQ
/G6aTtj0XZYR1k8KKEgmGf0tTlerl8ECvGuyrLe1sliUWboMynwc5YNePQ7lDe0NiaxeGnS5U/Zr
Svqph9SQzbPCVZfkpRWxCoDXrDl5X8YhCjP8+Whcl/YSl50C3kdU0Qxx/tkLr5akhBUhCi8/5hpp
LumExAF0GKXp0J0xjmy0Y0Z5d0vscbCnZg12R3fLY5j2ckuup5tKred0G6KlTg6uDNvqwL19hpeV
nqxaNTJtOQNRXIfMuuYFlmvMpC0palHYu9XvhQjCALdYztERHaY9n7e4xDMOVWbZaXX0RYdPPViL
6CPW/VObJmnhhFxHVT2kbSb1w9Ye5iluCMfElPOLh2OiWWZXy3J0REXAsG4MPBk+5EynR/992z7d
LvZGJaqD3Rx7ymx3grpaCx3wLiGDLJxC7a+qKHTqksIn0wHl3yvCsJXF1hVbVlb+EbTJ1KJ7JNYf
prpAj/IKYdnkjPSWP6pive9bworVvewCJ146yNFyon2u2Y2njhTunvd5wEx5syvJgwRudfDBVxzz
ltD4Br14nXeOgR/ymJ97hx/gtRVvXNGgdyJ2QCiADn9Cg/FrK7of9xCOtjMLhR2PoeDp1wZkRF35
bp0Eayx9xQc/DxnUG9XrKetW2a/UFrq+/jymDXAii+KAXEovcSAZ8KnnPsaghsSOqhT8sGdNk2+N
L/w2ZsgxJH8RWwl/pfAfqGFx42w0pseYfF6jx1M0gLZ7s3SKKyXp2bAaO4iIkZthLtR9kPFx2oZn
koNmEb9SvSj12aS9tz/eIwuvKyjEcbjjTGAbYYjs8xIOVCRUZtjmq5MzRWlJx0q85TSISSazrKJ/
+WS3sOGal9Np5vud51UkDf4DpzRMD7ATtzFN3pQP7Qa/8eroWa1qpxNi0/Rykpn0LPJ+pslAEZq4
l7EClVyAW69wnUJ3quUBV/n1FbtmmqZLbCIZhLeCgywkTAMpo/sfNZkxyzfmvIQ6u+lceqXeFeYG
cNWZAI/MsSW1MB6VQ1sCQZ5pTOXuwZJMBYU1InVcb3jHRx1emw5Oi9GhWsJxrG4rxbXBNLp1Rn1b
+PD/64xnD7Lf8KpIyvKQMdDrvijC2pDgLeq0Os7p66R2zeG/db4eOK9xG4j3K74P/rqm0iAg70ow
oIiYlNvLrDPdPj2cPK4vBRfqDkaBWHoflZjjEqSjjzB4GWeFUcfU8IKbGkNIgeCM/qLEHgIr0UwI
HeyVbZpuPbqWagXEU/NJraqvKfikKlygG2BDuMGfWsoW7PXZWdbQ1VBHtRlZh3XpILFbSKs/UxAm
Em/JQrLm7p6iAl5tXB1nEcLJCIkPskCGVtRQnVjcj0tO1eyzs/0y/q6uNgwIBFpNLgG5UI0jWCZ0
Mtt/6R9v3B+OsHY0J+fAv+IFtAX+N4ImRzBpM0BBXEDr5pY6yD5Z0N6VdUTx3gcU/LZkMZ27LXRf
WAHlasEcqPFYhWHa3atIPpsIDWa1wRnGnTqmvRKt//zRIFzxk8MALCCvADEsOjZLWpCsj1AhkIxk
7fuqD80kgUSihRkFmRxdUQcpUFHTAffPTMtaQfIVmXZoBpCPTieoz3UQMPkSNeClh60+98qGmrYi
uOCbocdH8HtGKhesH+lW5/VDI67U92cM7ksYcdZB4aiGYboNwWYUFvwzehCmZVR4MPx58IlS7L6i
bq9qotkkBTKe0/Kh4a22Jglct7wd7sF/lVwDuKfZTAEO/FA4DSXVMTV1tYV1mBjJFMotT24+qdut
jTI66bLs/f/s0usZAQlwZ1vIptuuCtIpRB0GhYQnsE1Z9wQVnf3D2ENN4DXcaejSq4Pqo8wA8Pql
PexO5HYa6k1ErnbEYAqce1Tez03lBz9S1z/sYIdmi1BsFU/JZbW67MKwmZezIMD3bh6JllO/BN14
pCWJNnBxE22d9/4n0Sl5UfuMFfss811sA6YLXFEIhGzABy/Km4QgFZXLsjfZpartvQcGmjhKb+tz
GhWTtnlZW85nZo6JB3UuckdUR59iPFjK3wdulaNrnR9963sgjALyWaVDx1/5DUnht9xbKbuJbCbQ
lAf2dPrb6MbuzmrsWcvTKs0hH2SAfuKgDwa85TTwHxrtn8f6Flbyndo6kKtHOCJbk5AKJOQg1IY4
Bn+VFwGg1gQjGEdhAvQkrKJr/9dTytn76GJtNHNxKQLkFQJXSKD45T3qWw53fUCqv+WI47i/BxH7
wiv7rIrG/CARrLtdVMTgP+z2KBVPwlFwqTse5+dPooApfOeypN4+v23sQxnOTZlMOd5D8toJmR3p
kRm/WJKOUGI0kdeRFxYHpYHwjopUQzI0y2WKZDK0qM3ttpjdsixifpcJbUydX4fk/hoVND7JIpSC
D75ttadBu4uPwRUFaMtSCrrGxG+uHPZ7Rn9PZO1vLXE/lX+OQHDKQPngA6T8PPk3rHzoeAxhjMuo
fi+onSXXaI0M1HzHkYkw1CgfVTVwhMNMIs1HQOBT3M0tXJ9CLoxidHbUoRyxYKYVypSRpsytuOMa
hqiPatHaDat9Izvw+6gzRePAME7DYSioPytbERYnqat0gF7gl6GIjsoDo4E6Ol+d6SjTHzTWhns8
ipr5aIsxVYR4JNp+WutN/8bnulMPs8V3AiAvfxo8reugNBjqREB2JOBfz/bwNfskFPgrXX4iZNBA
DzFAts2IHdO/KJkIscnOAwvWjwLF1+GLEePWmw3P8R7Dfjj+lCHNwhBoSTaV5Dxd88Pw/B1kuPfN
XjsC3XgK/ON/avL9wdrSBUcrqGz2IwKZFdD6BFUVqqj7OqlNVaYIJj/8dAUEiwFcoI0+RiQ2jEDv
zNog0XmMLm6LIoxfBpQkzHGPSIXyOhvcAw2DZBXuDMAus96Uyze9w5rA1DBRbKx3snAWBuIyp+Bt
sLoT+lZNH1H0p86fjNHWPHxHi8fft2Z8SJkBw2B8gJ80LzwqLkCysd+WdJEVrluNFRION3+jeYOS
6GmWLz7MizMvgUx8lkYgfAjeCqUoCZAabU7DMrQh+U0BlOxLhzvDYLlpYZ5uPuVu0njEcT5Pbxf7
6ZZlA3xAkucOZiqlf9pY9OIGv5WkJ65/VvpWp5j3PLz6J85jJ92+OIPNIWTJmmvKxAX10KQ9tGgC
TqsOltOWw+iDzHXDaJ4CQVa1F4CPLKf09RegSF010pw+VkVabnmlzQh5h2zci1Xofcfhb//vRoAR
6YlYDrye/y7VsW7iEx24s1TrhIETQeLzzLvGVBoaiSTsqkPXINzOlrnvFeIZj/dml8v+MGYeXd66
GWhWSG5mY8j6+Ru+xokSJ4PIYpgFtV10uWQHT4iVK5mn/4iCurMsMpCeKT8Jb5x5EBDoluvd5JAN
NENcHyH3m0hTpUBNHPytRdiPqdJBN2m+utfJErObbV0VRZIqCPZhC4YnzgIsU+aDo+ULyBUO7C+g
iP2qftYpykG37MDeowO1hGw+8EbNzCB937oya5eziCs3NZ9A9vkDSnrcD8jsRgsQfpBZ+G03LyIT
RuBpexKa2ij51TEqH3ibTM/T3wBcq+Llndq0QJ0DSMlsnOEcDjWyEpmahb+x29sWsy/x0HZI6h5U
gX25eig68w+PB4fRt+kTRl79hgf8x5WZwVxqKKfAlwgaVCxRZjeV/YHEnMaR8FUI4EelQsN2OYhV
waucXWSIuLRFQ3TOpzzFlbBWfLqNCMdhpe6jZr/EKZ9pnxR0V9KsKMEd3UEpoRV0oBJHD7PCo7Oc
E/19l5kek6Z9uyQUKzaQQQ82775RsLqyD4ENo2WXYSkP+DUmf3/B/FXOep4882Sd4XmRtbwD8TGD
mkKbS5YMMcnYJ94+rFvwth/IGGa1lQkNi4jyoJ3b7dutTMdlWJsbhSQ91aUafpZf+yYqZlrmUODa
p8JfHNvHytO8/TewH+idGMC/Zq+5o4ALqPgrGJVBDoqj8pXfIbz3+65sZrljSFObmz/Mi4p0NNF7
assW/R+CQq6+aTwJOxY6UctYa6hQsqQ1utqT20s7GX9viDY4f05lDc8lUy4Y0I6tq7Y5Wta42utr
sekHHcBLbDy1Z6WtLy+A7wJ85HwaKJrsvO4RwMrP7ILHYmgii5TTTE0c/D9n4EFckzEFDM/f1LUz
RCs0Tu5r11LgmRuVfIAcsa4qQlJLIJhWs2KLuuCfiQV7BO/xoTqpQ9SOHLShydyW9fHTfI3hwaDl
rpKN+TSCQSw7r42Bha7gycQAJUGCtdCbm+wHe2sq88Ej3adASoM77+BvB9BgyL3BwWoCKmEGmg3Y
SOfvkA9OIhg5YwwD75OZ/d3ygXiLBnRluB6QehS3UMtSVSZsQO7M9xBoYAP2D6zwlaNQaH+2fZ+X
e0zD3BLtDfuEhC1w6MS9Q6Koaq4my0Idicl5A3bJSbtXN4AieGFdfdeyi2I/Rx0rGtaKAtsKr8F4
B96wiFl9mSwLTQO8soNJkcuRDrGMfFQKmOVUb+EOeyeg+HD7T8buE33BIoZCmjORCKXev0hwRvm3
MMxg3bRtHKRMnEYEOSEdSWsg+C+cgmGtX8JO1IXJMyL9mm84NZ+DY1RkqSmmXBucI+FuBPom30Aj
83AuiogIStvrkxgmx0hgSPt+w7GiExGmPtzrsRiesnIskzy3jESjkCEwakRxqteTSouskS/w02bD
MrTQIJeD1SSRSR0qSAiUp8uCtTVU5TXxrZBerVuXFNJcVKqjXDryARjbk4g9haPRQPkkuVqtYNtI
XnfhhXBzwpIyneDGIdmuD3uRnNbBfiEcYkofvWPgyW+/l7652yreGOoDnv4rNxxBw+28vJf8RwjX
DFlBNC8bsJGEnsAAHFoQOaGci3JdPrdJgA1DOXv5r9BNvez7c7TDsc7nI2qtbnXqoKEa8b1NQzER
JMjVD5g8JSYcKYyMu0bbwe5joNnDBqqxX48JLsIwvtv3dk0IGqQIJSVSflZwHGt+jC6hClNG8LnM
AXCe/EFali1tYmwQIrZhB3OGnkOShY0vYarotXSMwUEQ3oElNwHHPvREea2Eo75xdKFTu9FQL5Uf
eTLagSMNbdkWOcyKLjPtcDFI9lOgltzLhOT+qQIgJZiYiepUMy+22Rpc03SrncterQoS4B+E0ANh
3FwGPxzvu+MHJ7taXPphz83NCGjXVd5vGLCf5PuFXsP0eh2YJDippWRK/9Jr9Zu2k4e9KXsyOfwk
4fysADl1D3wsZ3rUwnDAXRKrYOlTWlbLTvdKesXC5H/cg0kxUVezAyW1pRl1RqDAFAegwiXRD4YE
wu004tijShgrgItNOrxlL09TQAuRVJBkKCPKxnhgMEZ+hPwBOh5yUJ0ofwPJy7N1DOGMhOlpxnnJ
uV8dgb12n6XngamUTByPXU6oZLcfKouyBhCc1IL1xODEiGiMrRgLA6MCPJDAofRZvLS3woGC8E/L
6KdxsXDqbgy4Aj1iFf6A8lARJmRCrWKlguXgpke95dqqLjNJ/eReeipOGT2+OSK7mJyvOGaQ2GCF
i6suUI+62gxmQ4/PuH9q5CrmcI4569rGy/ab6ZD5nA/y1D1+epqelKkSGTf7vbC8biLpfkwd46yq
hn3wQlDW8cFtLl+b9/jn9Glj+4Cay/FcUFoYzZPjmg//vVlPY9+1rDJeKYUzbIRRg6QMqhuNRMnS
SXAnA3gMUFwvqNQyfuzr44+c9GAqmBLCsoW3tk002HnldBDUty0VIhicv3ZjelefnH9UCVIvm/Ls
xunqPNGyVLFqVZzweMoxUZD34Jo0QFqZ+2cr8buMBfrbVdeYoarkRhwiJUh0tBx94aruukp+kFLF
aTMIiuxva7KO6kJBBc9yJS84nWvicq0yOQak7lcE5966PB54QVVpii8259vJyFzvfSafkwbaN1mN
l6BkkRGplyuDwSeP5jiDEXmdaVZsXSEOKmsSnrM3tOyKgVr5Udz3gdq73BNUY6gje3Ftf2WPa7Sh
6QjIqFKp8pnVbauPxNXvP5iD8quikt3yum9Vx9VtEgleYhpzxm5LJuQqrc9x0NdPDhlfq3+nxx3S
7Vy6BP83WWMtB4iGrmqgGpRjzkuBK7f9wuKI+V3mc5uYcgY6aaH1bTBnmq1hJs15fn4BXANtFq4V
dPDQZ244VusRudD2TWhB40qegdUyCyB/Spn35cMEB+v9Brro8Hw6xYImYLL2zq+M+kSoY5C/g0xf
8qZhUKJ8iR7AZs1RxRPIaumhZ++hP36urTMiy3Ny7F+SdmkyXTEXg/SCoYtvKCgg34EAVAKsCOuO
FemWAWeFWxOGFjUcuL9TjmVE0sDIqYOoJZBCg/NF8c5/IFtyjgRm93jE/9NjaPeYb0Qj9j0dNfEj
oR784tcpCiSWxCjvVfMrlBGP6jun1UXSN/F9TU0Mz5GsfRKJCU5/Nxe8THElqjpDXP+EFP06xf2D
wPea8j431tRoZbG7dzzisubyFvPsRkEJBvNon3+TYfwIUqHCS+ghe/7HeN5FaacQjvFVC7eRaSVh
yK8SU4UcloWQzCd1V4MbYqe+2B0+mMzuaKEm1FFyF4v13fHGtA/WahmHzZXBdT0NrYUADY89s7O9
AJ9Cn89kAh4bBejc8M1X5R/e7l7xqJGuu/s2bbp0TcR7DKZVSI35ZH73bfjtlZhGtucHqFBNnThJ
qko1LGgbe0kV+BU7nO5Low3aBRbMCBzZMZw+g5D3FhOdPr/GlykmgcCPVlXHN2fvKXMuNJOqrfm0
Uu93m2J9wAR+52kqxO2MV3A9wcxfN33I7PZIKwOhoqsQKwi9uO+c5JcO+RXYt1ndCTm1emAIzzIl
uGwErF+tSpwC+aQZtuAXXqHwetmmsg6QIpT490vcRIL1gNQKyMEVQLYAN4q9MnNvUHu6KaUMWagl
DlIlrH93TIoDaNH3ixx00h0YEsuX8AXDsRFCCgky5AeXI17iKxLm5VLondaPTmSzQgU6Mf9cKWmO
SaG/peyVpTFyPAQ5AYkRDWm6tA+eB3HU8QdTZNim7KUVM732M0AltocRR7bcNnd2oa/3wY6Dyyq4
gUSe714VkUPytrgJlWDOPdfboOyaqAl0giGO3DZrimjgOr0gqDKJgl4JEOKam6TlfQZi9tWiZRp0
xH4Q/I+yXMFVj+6u7yTYAdVm91btSRFb06sBP9q2i/2ip4BPBOOHYGNtQSJNW2WgU57rWIvoMGUn
x0UQ+QbT2HrwJJBG6I/xM98r2a9tvDm6Pa5u35GkK8FqpqPZnh9+8L557HLmode1coxnzmTfBue8
JjJcGHStkDeNurJTzssp2pCNeFriYZheH0r4S4ry7vhvdeJiMffr5eiwH9X2keAgyIMHhzk96dA0
WSpkLtA0AOsbmSMfZ3+F9CqlylKkJRduznWAwhDv9D6FxbrN7FUxD12K55I+ccV2aoHaNfaHrAet
Eh+6uRGMtsayh8oMbXewOjj8C1OVv3w3NE6o/Bggj9/TUSg/VcUK75+xf4vJY+1lF5xn84fufgzF
Q19ez42xmjX4N7jfY18VhwsmEBOo5hCCDABJYjxbI5s/HOBrnXYNxFgfo+5G6YEb376KPjX22rUc
46e9ckjdaoUlOlbJjmSRsGDGuZQSGAoksy9XB16WzbQ/4bRi+KYB/6OOd/gWJESDeMjem9+AxxEk
ROxCNdH/D1Qu6IFpQV46WkbIw1FXKwmb1ZLz+itwMr7Z5RfMukvRUwRjGEK54UGmwgBnQlc3W8P0
hZZxZH7mKymUZ9DT9Tei0rMElkWHdgwCltNPllXv8DqDwP5YljKvqGABBr+ifhfweqL/MIC2NIFM
OvgdivkdzxAryDIRypB7KdIje3eEXSoY0Jluj1SNPNKeHzcBMv9Dedaq9KrXKGoovG6cGT8lFoqy
YtrwamrJz27PVgnqr7qT385tDbxef3nqsSSQNsmuAGlkVha2D3gcw7r6DTMnwkUSBXmkY46JcoIV
8snZFW4h9enYn5zEw/SOHVmll7oTSbWMSB2AbN9BU0K6zAESxoJ4PLPU+77bgzw6plDiXsNLWGPv
vM004LrV57Ax3eDwP3fD8QdaKIYk3YoGSW95kpgtZbeEwZDoY7Zccg3Wbt3YacC2luzF+Eiipyq5
aCi7lMrfbBsdz5lgr6RQcD/Cj51zvNg0jkbHSuc1IqHZvPcfNfHDhpdhHnNfZ2agx1l0CoUfNY2c
+yUooELLf1zgbYAKGLj5DwozuRBro3ngBWvy+j0Udq6kQ8ssrpjnVWgNPczSQVv635Dcl46RGQG4
CCsXQ7rgxlu0h3dMI3WZxXn2RSpLHvlT+ZNWnB0C5QXe4qIWDOzAjJxqv154xeWIENoQFcEJmiXD
rZewQVg1VBRnvrYngSu+xrMfGVi3jmK6o+UdGp+kyF3FRlFacfhf/fftdiByYes2tRxWzAfBTzZW
Wn+VXSUueBjPgTsNYaO5KBn3bSB4SAShrOHnGharkdmoKf7aeJwlaZlTSykN358Hq8+D09Qiqx6i
q0NpNEJDFfYu9dUNbq6JUlUyDmt2FvnoyLqwL+7QUnSoryliCVKuQDBkN+tZXohgw+ZMxrNn/bot
DgVXKI3+aptITrqaQ+MnraDZTFTV/eDt/HrNGAiX/TLkINfy6NvAgNsfVcr20lkJ5P50lXefcfek
MPhKkL775+zV4m199g1d9MK7gCfTcpSGSM2AxKjkCcqmTSCVfFj4Un4+anUn1fqN/wvt+SYaIaQM
rgNS4Pi+Rk+JePt1NRmbJlgSNbyjsKRbYgW0qXzqBMFW58NIC73hi+jk/rd2EpxrlOTM136heS4F
oiZrsemGO5fjDOvsqeaSY7VZ0XJCthmwab188/S/3a7nYc0BcXxJ42lw8vE7XlCHkwXXEceDONPu
BF3+gUuTLizNUGW+DNMA9ZKEHHviNI/M2TU2D87lfbKctidBaySvznpZsb3vQ0LLf6PfGJXjfFTy
gRcXY6o5OevJzYNPRdQ1eLyzLWiQTaaqHqVAluqN0stWB//bu4OV27lJTPLm0+TieWc2Ir9rfFhw
E5TLrkuRLRuAeXijtNP7AHaBmsVMmK+oRhCaZjTNJ+UYig4ySx028eaC2CYdmM89/io4iDim3beZ
Klji1O6MMrerST/RGrfZH1dLq+Fq74BnqT1gZajJqlYnviYim/7NnP8eAGydQNBmtfP2zBXInE1M
sOzqGyuKu0ygqQ8/FXnSf+njGyNDB3eIuJPK4rd9UHGyLsP6CAdxx6BCngmXzFPXdBZsV44AxkYR
CKS7CAjdP4+XZIKnuRFqjDTxbdJlpcpPa8JI+acrDAwZrT5vgEQ8mlNs8Uk9SAj4qJ5jXyM+gokn
Ly7vBUsFR/Lf4CNbD4Ebt/iANvinLHuliW6ry0z1+JOToTfJacJAuyzl7xS1bijnA/PP0wBIwK3L
LT0u/KIG+InY4Cvz12kr+Q6kPQ+76xvmSMn0Qvvzl9ubfxQEcWD5R/HEzYjqcdHMDL+SFBh/1uo9
cxROl9oE6z0LNMZ+HHQJReHdRjtCy7PYJRYDmPbsNvufDSVHW8oVmH2W/NbMrfvFymN2jFlnAK1K
iRIFISnF7Wn8TPMwQBBU4rA++MrI+23BsI9oNfpGKiHVUHns0pK6l7YaPhbjfLCICQM4fo9rKbr3
0YFYYp+hlLo3NRmDMAr3Q66TAJDi51l/+tlIsbiSSJlSeTkuKOnT7CdDb8sxBvcNgMZHl3z9btrm
tO5GaK9j19PTsihGVMiQiudKbfw1NBl0h9eT25gEpJ/9RF9b8REit63X95M+jI/J6Dpu6gZPMYB/
td8VU+l+PzZmzipg/ky7Tdt/zqxMGvqfPpys5EUVwRuMHc8Dj6FAL5bzSxUiwvOslcoYx55dR5w8
zUjrod3dmWUhL9gFwtcClUcTreDUxEQU9LPIXSree8XYUd/Ey7oACfyMtl2yTM20sBTdxJ+RWfY2
iCEJXPP1YUrTSZrgmReZhh2JM30LjroMqX9luZZgtTN4QC7M90JM3vwcap/HmlVP4CIA8SpeH0Jg
bNHTiPU//ZVSwzDwtpIcJfYF5J5zLD+Bcfk6BCyAWJgfGAlguqE8H3OAjQXinb805v1p/4Cw7UQT
U26bDgzPf8UyUrocK/o/jAXTAs9U4QDj1UGLl8NcB4Cw0ZEjTals4logYJmpflB7krXvMneWFfMr
CHSof7aM3aiITZGPcaDV9w4EDbk72EYWqD37HtAMUWVEl7+mYe2OL5scamUxjsoETsNe2265tKf6
NlGFNrB8duCXQ2fWdxNxcKOlfstJjDXvAuP7rLNmdXYUSvb/iLm8ExoSRWp4Y83ASmpHXbOl+Pyy
NK/Oy7H1hqUO58EoXgFPGaSJETsyIGgPTIQaLerPDexI1rIPIYV6lKAhBRjI+cqwIePMiQv1cd/O
UYR948ebutEz+iC/LMp6DWqIV7f9WFDQBhkEPY7EsHnbK1sh5EIKMTVWS5vnC8IBxxA7vBpV3ifZ
P8Z9Weks0Q/BCBKmBXMBSFil5Tc81/FbPhxcJaZC9TpEyZSmOvtMPT+kz6u/9P/pJm7wUHeEUBkE
jRhP9cyQVb2/axJVpnJoFuEmFtPpUFkABq7uw+mMgDTICmL4az3xrWKKYgRgv+Py9RWb2bNsaXEm
sK2D+k+vEZtRv9JJCkNe4/ZHxMaJUAqdkPqRW9iUG4Y9o+V5BVXmUd/N5vtMN3oHW9C3AzOEfHby
w9Al2JAgtgQXNAbC4cDRYMXPcLORqCe3h8VTV+VATqQiwP7LSfz20u+9HJD9hWkGC4IDySTlPlAI
nm3xWIgYwggpUy7CQ7vkh0Z6KC31Jj+omp5IDAU8zunPlQGc94NPAc8lGfFlZgcxQ2pZ5PbLXP7U
J+UCXBUoDMbU6e0C4NuxAWORFWWzROnF5s8bNKt54htG/pxGzBTOlXpPteIcvEtAOzJ5fRzb1aou
9mvHSBWA05gZObg6CJwORFaOv1Cy97blmibo1OvDnTU9yvO6ZrBcQStDlpAsWQaKhXFlWdXbeMvt
izCykgMtuTVaARQ3J6vwstd6R85WQjPL8DoIaTg0doRXXIFPjjKzRjajR+w+VTT9A8DpS+Ngu+oz
KDVaWb9ASrsdnm4q2GPnNodcIdH5tsrxFKX/oYwGcHeZ/2EYxtlmodW86QrsRrY/Q72AsIRpRwzp
why/8kU4yNmWs8jJqNoDKgrA6AmBdM5EYw+REPG06OtqTgg9tN75z23Kghw0G65s792HttwxGCr2
w0/FDdMVipYBBSaPVuPRU6nvhIpfuGECv5S0g7O5pj6+GVdOgCalIj5xKxg8S1+RImJBal6b6/K9
wzPYCxCjCSoALV1ZThRHrcgE3B8y2hMmO1BzxhKSNShHmorNM0AId2cotn+oNaPMiAQ/51jpZnwc
pBXN26Zs6MucS8GffENdChaDOwODoaRSAZRxmg9r0sW7F/S57Fratvj+um2wnOtkj8fRNiBdXVrF
XFX432YLnHsd1/gvm9ygn86TcaRBN/Qvwez7l4hRIz36QbS7NyYiEDzamxQBOHkd4Ced5Y+dMWGU
u7EIEZHOfVFEmkc3VKG6fBDrXKu0eC25si5Fjdb4GFm4OAghaUF3bNlEEwKkL06I3QjCvfIXv1Ae
crSmCYlFXWpubfg03Y/mkGifSfvDX/MMXXv+mYZzzp3Xkwl1blf7ax9SZk2AWr8r3LnTc56qK9Pl
LuybWjVg3rhun8BPUCvW9oW1AUTm4M8T/P7Fy6KYHLk7OvwzUwdvrueK+7QB/6lWxisuJ53PIfYh
cHjyKZ6eSQg+asxZoUrM5nQk8QxRcFTFHAE0vR8i2q/3Y1Xl75JX+hc5g2C3YnBzEqY4cNdvIWJ9
o4sJ66So9JNNACo5cFbTDmZA0eAONOI9a2J3Owe/Tc/1jgvxhKs7AH6pAiENQt+xFaufsA3AXbzM
cTze+MffKOPRBbs89HQP+Uq5hpUIN73wDQzKSM1EE81lGyX3kCgphgzSPpfKa9vjnQsgHPe8GBcc
5+k5EphwdDuYIkE7qbC7AQXgS+An7q2WOwP7DmnM7fuY02oky0dsPalIO7FZloTv8z7e/j2GuqXz
kUbT92SUwL7pih2S1KFK1nwa3LIM210C6lgcs063EVnG6KskJPOg3iUrk8baoNQYEj25sl1OMVmF
6TV3Lb1ADjVd5qzjnkqYGhAhg5AT9wowEe+SMbEK+1/g1+fBcxoP7+PYbXcicJqEUhKinMu5ajHu
p6IwbPe920iAGc1eA/ZUsobZR9US48OukqssichFrRKdvw7EB495DCTngOHlZsqG1KHdO6F2ZvLP
0rRTIiEAo5XSipRNo/ZzpDDw1cxBNUzkXu0nGsXwE6WjjKVEnJ8WxUamnlDRQfCaMQNYx8pU4+0N
sT4QqvA3UeYwAZaJNLE8v0PtTGOthf+5at34Tu4lDRvRwvp/a5E1ya011KSEcCHSLiwGF7E1vhIL
c3LxFyU3ssci491cYMPT31xm0viGb8sjnMnYRd8lTdt79AANOuhh6SJq3G0ADlIDAfdLH+fnaKqc
GIMt8nJfH/BDuiARANUFgKEWUfJqGEQ94Twx6IYNPGTHEIJnJ3QV217adPnBvqTJjoJYV3s8JnNX
TP/Ba0OytJeHo7UxMV+56oETjErOrUBhX4kH84Sv/JdED0D1yDBpizHAPV/KbSw6kqd0t/vipwJo
iBtBXg78U3S5apqVWaIdwfBr/eSdYeaUKrZEsgIg4mXikZ0B28eQ9cd+qHcpGfoQFgKFBllYenQw
EyyWQjhxD8Udr1pKeVLgvHL4Bui0yvj755W2bkt3mEqHhir4HSQnW9hq674QUYaR9tKUM2GXBCOf
boZZd3T0UyvdzfcM2631SX6levDICZl0nw6kzrJ9o97fD7Gs9dgRF2VD11NWms59Rn08THqppYfz
R4YRlXhMw1Vp0/clo/nLdEnilLeOJjo61MUbnVpQ3TPB1DJZzs4pL7s5bLm1SwBV81tqtR6wslZU
r4rJ9qRjPB8UjcS+v5M9J9ZO21ypbe/1n6AvP7H6qJ0EZzCHL5U+/ADRWfN0QnborAR0WPC7BV7+
tKzGzjjwAF0PGQirMgVsCovl4ES061L7+pTaKRSXkAjR+ZSd98vc9uL+vMiNdOd784TmVidVtyoj
GwXTCt9HuuglTZrLMdVC20Q4INCQz4UxbF/BMsslNYQC90+kOQBvFBEAdO0y6g2qZ8TI3D0traxQ
iZPpQr/EELwsBrLV6QB1ekv2u898u443tv7P9/Pi2v9vJjrv/KevKVEKjZLoVjLuGuOUM5ucRX3D
i7zQCAxpDhK588UnCHi4pGyzReJQ/yIf8sTDmVo36cty6mal8syTt3t+gpriRBbWKdXEKtcNNfos
TwT9gYVp9aG837GSHzx21jLdaA/RJBmPke8bJK68Iztx4mfLEoWeSUzv+xr/hdjP2xruJytiISG5
dkqw6iXB5UeLs2SZl/kb8BGwTXpRrFVEVVvFKIYB3o2EMpgi1qjILkkGTI4NQT5SVjAy4j7beVD4
N2XPZKzA5M99LMGzvgDpdRrx/LXoGVi5jdlz1nzin6r02poUshrX2L2HwqoONwPJCKlR6BebP9PV
xuIfSiQ6cSgrj0/kM6jUwyXWRTp9hZ1n6OhY8yVBhdAH1VN8+U8snYctY0bPwjn7yUVkJdjda3dQ
2V/EFhaV4BxefxTsK25lVNHoIRVKWjxN4kWPc8qO3KBHpwLgCmjTfSksp7PG/ahiOAyFL0FAOKWN
zEGUA2V23Akwv8i3RKEBfxfTH9REitAGtG8aVPm+WGpp+JG6YzDF5PldRF+KDfSIsp5MotT0QGQs
AtKa41pwcLLZV4PvewXMVBA/cNuVwYCdogzRq1WlZiJOmyPLC9I/WgLQFeaQJMJ7mIebisT6no9N
gK1JU/ExcevTtjEOttQGcZ2iQ/JwGobHSvryXai8wlnzYsY1WiEQU9mtwIczw1/U826nOoUIonEV
8/TasQoaTueLoysmHSPitKOsr3OKCNs8An9hKHOP5qzcfCR/ylSMCc68HqB2PT7hmG0W7PnS4KyV
MdXTuESaq9gaSTUswxHEqYcO3WtnQas1Za/exPv8iYOJ/9YUNzacnobrwV2FTFKb7oXPKyzet+N+
7l6Rx4tNdBjJ+jRIz+becSjGEb5WA7/oNHyk+pmPIQlU3MJNQfIw5rcmBAzi6SnJ34EurAiKOWXY
AC6I/lSYlETT3i6nSfCQ41ZZtip8KGBaGdaYLN3c80oonoHPCyVzFlaPzoQjxMQ1IDYwSTyxuHcR
gp8NWhSWOohgD5AMxYIAFmp3Nmg3wj1Ah8JgDxNSmNoTjiiFp9OcF0o/sjnUuU0yv/w/yEMv1MjZ
M8KE0OZBO7lVaJofzaaldeDRT6bKS10AuQtXh/WrjoiawhBBU8c/rmv1kCfvlmn1utpGvn4GX1jJ
6z9ILgsTzvq2nq/haDTuw+7Z3AEBfakySYPmaTY8HcATP/xdXSk2KJVl5x7UgAI3ylel9gzYzDaP
os+f6xSTEbusWV8WRL/QydjWI980WBtRXE8C6zzg3cW4RU0wn5sgb2Cp6zAL6uiB/y2MHy3jZVPe
eDAvZ0dHHZVrO+uCXB3cql4I0AVyzfXf6ko6ek1+natuVQIsiL3IHBMgQtxiyzSiVHc7Bu6FX06O
iyQtZe3zA/lV/jJFnJk7N3Hd7fyVxjyQ1PCCN4xI9vIxiCQ4aip21yYyY19dQg6PzvaXeTC9omXm
RnWM/yNGpJz0H94rG/pZqWBCfzqaCqLlB6sJi+0Q6fmu6/9sKL7VJceM/4W4W0F0op/dBVYh2QwG
+tPCOVbflm5w6lwey2Tp/pQ+NoT/j2BVBeaZlbRX912WswDbiOpm5l3I615ItAUzEgh/zYloMPNJ
HFdTONWnlmd4P+X3HhMrrnNOaFlCUpLGokEVKFaugCMftrzh72Ja7SwLkJfkQ/7RqSy3ely8Nfiu
9YnuDzqh/wiBy7sluKu6uuYt2tDNUL4QXGGdwc6uutaURF5ta7n7sdgOgU6PTZ90IdNiGhR3EMJR
V0S4lE01cavSpfeg69aAB4YxB9Lw3ROpidMYankNOUlSMs9jC8yyWvIo3oHkyZ2EnMITxAHwTPBj
edipK0SRshnft8+OAE4dqfonKczTfe8dIL75e86SINZ4UgCf46dIrJzJiu4U/PYTt93scFL8sVdi
7zikDmY74aPxenYnbEWBLc2HMCv+83Q/jikodbfnt5ivM2k/Tb+FgbS7PjnPj5gqFZHT5YaHT68s
geAqoRRtVxar75uRp69QJfykULwvCcgp5C2Un5Q+1wvKGBDRTm79Yjng+QSqbgzYyeRFnW1WzrOx
F6zQ5oPOdMPr5uGy/WO4fZfX013X7hQieF64Y8YostYWUQg9aVd/Mo4UXE6oqndoJ100ASg0Z3o7
qDVp5TjI1ze+E3OkrXnWI8T0qVjnDspxmd0t9m/GlFS9caRFSXQt+KSsRAF6JTlYHXfqWDvDh/4G
VhH+4gF6ZoY8Vmbmi+W80XAVRunUt425gWsywiF0tZtH4GgAxyEDbc107wjhORq9EgeH4bwyxry5
7cyFbKB5EvhO366kms1Hdd7QVuVm1Rn6/z80wCI4jfmwvtsz3a05lnAjrARu5H8vgspiLe3PSZT4
C6H0NhR2enaWcXHx1TcGse7DtoDhDf99cyRg4a8QFAF0EvbnGOUvHC8Bf11a9mqhV6Gx5HVZasZH
4EziKgqrG3ovbbjaXgUYAaUHQ4dNpWOTOEy8KRADyf/Fed1UvP2bksRbMeQ0zeYTuJgSuOcMDlZ6
JibcZGfSXfm2f+E3l7GxAaVWJcI6OEuRBoH40N60GJ57NZQi4bop5EEHHu32kHqWphWR7MMPtPnc
2aa0FlgCCFFjol0SSJSVEEITUlXCkr4MBkLbYLn4S+RP9RS6hLB7mv0QvhH5dmi4EG3oYMvRUZfn
qX1Ba+Saq2uN2W/p18vcqqgQvZHiOhY1bqV6gocx5hsVv1cInN2vgcq0HcAYk5qH546oqkO9/l+r
LgRwxVoRi8dBQrS3WALG1yKMwpuv0M3oofRRi4IXwbybV0PuCyEbw2o1OtQAcJZOLT8U7XWJXFin
JLY1MxxGhJmi4N15RkZGMZYyeiAkVfSd1NuX1ee6ShmVJt1m4piSlL2ljOGJMUSELQ8XTR8QBXZ/
8JrjPgitMAyVYH+qK8wyvnHl/U2B6QINRPfJK4ByPe6lAbxXg/wkHH4Sbt6x0NhBUTW4FQu8ZkyU
jPZUeFKCoMobJMaLWoCObgMcRMYHzs46uara4gQafj1rdXh66/NUhrPPDFW/k3poThhnaxlWzkB7
muSgfXTXcQXIKeREeGtEfBCBzRx19S9zwY3s+krYm2iO6so+a1npKfMzue41ZLQA9HlH+ry/kbvo
+KelkhrY8PaQW85imp7NEwg0DXKtG924YeZoYcH260Y7bMVwUjBgQWWQf/SYeynFxrSWbisVl3kO
F47+opjiCLDOMbcEb76CgqKEqU6VHQZDTuBKRVMoqnki2dS0IgUkbZ5bMGoJYj3ACi1KrNvj/JKp
woqm6Ggmo4CUEyASxCEnXqZUiCs9nF2W0OhgKyKviCkf+RskED+mNwLdFQjWFHmZB547xpSJMXjm
qdV9gvgrigAWC4+m1IsnaztifjpJ14IHZj6y20B0NXS5wsVH7sGuCol229TK6z0xyIjGL90oisut
r0dYJIQWbPfUzdnMX2JXZoI7T+XOiDTP5uAM2JDL+U62BufidCWXJx3K1HbSSnGflTfw509ZuNza
RH7zdKAI33RGwPZCqrlQIxPt1r4vKhMnZoAaVYfjl7zXGecrDWyz0c/d12e75G01+2F2ayi1gvI8
ldKVhOabF7vcZq9ROyhjdhFREWXDrlhedllzwIwoar3ZWisIuZhXkALUHXgr2DnkGaCxtC4emp8F
mSY5K8Vz+hdmr4T1CUFylTHbFEyPUESUcv/JV4fD/SpKXkAu08GIfrbY1LIHBh9hUzj791sC/B/t
fO5lDsEXumodv+mM4R/VNsOsiZBctj0gXsuuQd1f+66a6V1bnlA51vJvF5CIMnjj3mt6QFFlJr4B
mvahRHzQqb/0VSrlOspwGJq+RZLQarlIrfOM4OKV8zzpbugBTCGIwTZO1GFk2JvWv19NZweEHmve
e0sDzMTJlO13VHU/tjpj2INXYB3u2ZOHZbmQe+zlUrL+jbA162LkGvY64oIQuDm3n9fnHIySkltp
j6mcYzX1Nu11gNjI+TFCTwwBX3cjSVNo/t8rubhjoom7qjJ5reNHRcyITIifp8MkUZLmb9JkWK5Y
FFhesCrNVE/EKyzcoMIV7VOEJUj/+kfeg1rVKQAFmdABf7XWrOU+6BBZN3ikGojsN/6+YRseQnDt
WcLSWguExEAXHdFTyfSo9Onb7QtBfGfE+17+FuYqO9WxxYMHZGD5GnTzLyV1Hxm3LRfoGRimGTIi
RHrOYfsChk7aeRwSNf/f/sYNxqPc9KK4YoxugcBCcTL3Q/aKhYvSSXuk4QP3Q760Zwi4Oe9eelrO
48IBnF0uxnFQOPkbnf40vsANqlUq9ENirCFcbJvBt6fGDDsvfiIh/a3eL8jcJQ847Y1v4jpJbys7
GCErPTepbyyqADIbW0EGm55hB4mLGTQhjdl4bOabIJRJ6GsYDyFvk5BgH/vQXKsaOFPNLFUura+a
7ZefJl9cDhL4plUkj+XAGbsL5UgZLTrbVtVCbyiXFwMrxpc9XcRgT2xP+V1UGZCElv2KOT3vtV17
+UaoL5cwn3LZT1g1UKdhIrJK91gL95tvYH4RiVyKQjMZdSh8hOTEnnbuHAh+jwqlHZ88PR2MTIxv
45WRaBeRbZqpCM3n+QW03UgP+ZTGeEJQhGMa0yXMjxHg+KYJnAGiNh5iaNp8LV3YGK4Run3GGqEL
+fwRV5OEXietm4ti+Ky2yq+099GgEkkdM8VMdatY1XfaN0DyFwKPvuqvGHvGYpvjfHcC5XLO2YKs
wiQs4TSmIrydT/3dCbG8PPlkDXrj3yw3Rmg3/jFJi3v9x2bm5slYfiMGjxKdStbTpRQyyowDLjvK
7awsoYkIzTjZrfvhRrGodzv9TwRQH3Wkt527TnnU6SWnZmC6a+FA5lKTz4+voUL/HFrjYQlePfru
h07CfQ3lver7S210WPqJ1ZHgutAyxJc4JBG+0vS5RLAJKZc53zYe5PVNq1o8qbNFSSlrfYKQvU63
KEq6KYGlwppXM9DnPNKlNGnExNznA5cBaznlMsciTQi/CGW/4JDmzoYfQ6jVlnQt4tamdGkvgNg/
/tgrWdCLKu+4RRI3GPz1aNS0HBvDIJdRKu1YMzy+owzvmYNSvgZYDVlMELBnmo4+jbGPLquZkby4
O/ZnDc722mygadadIa6Sbzf1EuJz0MSLvvWOsKKGgWig4qWOjJSg48P0rkcwwSGrzqbamKYLOBnB
vm0IGwWsH+UlZZgbIynkZKu8O7t3EgGit+amFwYajhNc4wAd1UlQVCtizi9eI/yNGA5X/BPQk6HK
iMWo+ibB6jTbPOn6GfJQsv+Z1rTn9jasZNB+9o5k9/C6aqIyjM78nm1PG+0HHv7nUJdoV1krzGEQ
yhZshRIA3Dn88DFwWXNbwn5x1R8QRal9on85u3/wb7cy3xIJ3mKBVXw61TueT32J1RMV19FneDqd
jvFoW9u45Hk7gmeEUs9awJEo4co+zi7expeclkB0Zp9dC/FQDX47MpMXgy3dLODsPLJH2LYa59Ro
L3wTfNU8UXucleIcNxRimZeo6cEu2cLAF8CsoU01X2UXc1O5t1+h8lgmNtmAOPsmMJ2MwJrNDOxo
/Iwr8LMyyEJATpvskJhGI8dbYgdpbcjN5lTNI7DmAkSgfRI22H2bBVGTX0b9UEie5LlNjFPw7apo
mDIKpERvmkjIo6DGNGqTinUmKxbK4AAtRi6aHX38UnFrHW5xQ1nRMiJr7Oi3lAKDkw6d7QzfgI5v
u4MLROmCwlPr4+uIe2CdrKItrhuFOOoSCzm6EHIU2V90AuXa5hnr6/8/FMtzrV+gDem35+NA+DSf
M3do8haiHokCgVjeVkyFgO7vkz87+DXbio6Va9frgNKVOpciV7MHQhYUb4KogYPHA7yQHggbqsR9
R3rzhlNiGa11wN4ZxE3JjYo6kVP8iXg5yFE/VoRrPYECpr5UMVBlOZ7Z9eN5EpPUzjhLzrbbLmLH
ZQhaIjHFEox/s/UNlGFZyABN0jz7ayxMW440a4vcjriTG4VlaHP2GUBba8MN0RQP4H8M3m4EaYKZ
cvxwKLsNKCQKlrq7lDMNRluQ5Y1vnKM+DmojpQiZ/90w1stL4WjBql9q/JvLMlB/DKBoxKeKfsea
g2JJJ1+2Gj3VO2iJ8OrTAREw0gtBQqh1NZBRsBDjypi4YUIOdoLIQBfq/eaLEKvtNyIZIW92D6dZ
4B2wt6DpmhSTStUIBSXlJrpWqMDdVGrv0LG0GnUHLzzq2YhzBSj4Ue5PQwYt6UgZIQWoxlz1e/th
iNX0DmXmbDu/G/oWq6GMx6kpjKnlZAn3IjVay6eTLwffpZ9vXpVuXTyGzS/38rz/PDCfGZPOvLbz
AOBEMx8iy71ih5lCXPsH9sYgK0RPDBe8p6OPk/3uaMrAzImhM6olzAA4Y9LW8ZoFbifUl3ZgBj/r
vxhtoh1fJtDgjy1/bkWD++mtpthkIjRyZcsCU7b1f/KDiJJtMsxe3ExZQ83jL09Wfud9x5iHLY3v
xmbetlq3qX+Zo3t8VQjyMCkzYWx4YxD4yrE7dHv/u+YVZTutRs8J6ISALW9JgI+GaSJuynSyxX3v
e/vmQ4nc4DWKRf0ZKyCY3QNlrYUdQDnqxfqzW55ZNAeRFP4eg22NKUnDmJyriiCiLpEntUItrgEr
ffxtFS0UfzTmDwNfFeX2kbENx/f1Q9k07e9zbV5YS9e4VOb/7go+aqsuNGjgZNm+HRUxXiV2GKgi
1IonGuzukqHa9Ja7QbAfbeJyHW+Wdb8UYOfR2X7eNUwCDDB2y1sESCO3LWwlDFdRiHdpQsEVnyjD
UP4acM2Dp9Bb/KqU7ED2WjHz/2xQ9X5wfGDTdd4qdWEXtuMIXCYcgzS4YpjcEeM0jkM+v5Ocw0XF
A1vdYPl7g8O36GPIz//RcX/e++tR0o2bIrjP8E5QZMlWSpBU8qAbDoxfmL8axjgLcoN3HgS2+c4H
44PPU9OEpZQ2Pfk6sQCG4uW5j2tS+WJHSr7z1c5nbR8NRsoRSoUEi6bu+cLpheSSORn4LaFCQI3/
q0ff0JUksgDz4yFfa1VygLn4d1p7n/eOu+xvn+GYaHHl4Kan7pDk+mKW8pqLk05izKBKBv3ToljH
kfSEf8OyQQooD5LzoHfQyMofssBoz9RRJkq1bhPNHNvL4sdomIv/P2tBzwdlBrmDaukfM95QKxbc
JBDVPwmsJNlEjsZJEOZck7upvL51xlqiTPQgpTVjJCbyS1lyF7EBG3VLR39nh4oHYwO6N0/ZzeAg
hrEjOfV5azUTm4yiRHxpTdfBShfcciDJOLbZ1oF9jVFCFg/52Q86EfCCs43bVbOBhfTjNNcTo0hc
NOhGj/JyLn1LavdQpQV4QdudK6dcZAYR1U5Eb//ZN6R1a80S24A/UTcnvM8HdnolQz/ncIGLxoCF
C17wlqH+okq9NH1KF6iE6dtFx7NU6WMEbcl8sy0v2vY53QHFIdEaxbLG7qaqCY51ILA7x/cjlV5N
7/yjT8mk6cAMIX3fL6PfRi/B9VcYSfb3r9qg24+1ut1pkJNI749Pi9OZ1nH1KORsPQCFxnt75wq4
dtBB5dJa0upoaYAJNlfHowFY8urQ3cyukswyBJxD3ahys8PFz8PFLt7/UvYWGZhZ2QiwFS67ax36
ruw2/Rc2rhZ8uK4I6h7hUAlmNUJrkv0XVZMfpTW/hc4lYtUD7GsVillMGZl7pdY8bYGxtYmcoJe6
4ieedSCRnlobhfun3wPpWhu6nuuywe/QNH2zu1lMrfvs9wuhLMUHS4a8BYpBG3Xw26cEjO5Go7kQ
7ImtvsDVgSEsnGY1U89RAFvpTD5YqfPq5wNms5CMFKjsWo91ZScA+5snNRwtWyOKfVj/xbN5sycL
012Gy4NyIG7iIROF6CRKT4nE6zhatGk/CQaub2C84vnsA8xchoUOr0Sr5JI6IG99tFD8lLZoSu3s
wY6/x7CXpNmYeImCWvffTScvYug+biC2iLkDmM1ktioI0cAyesqXZ2dCmqbtN9wIFiNKkBjkPa6S
y8IbA8DHnWh4IxWRjfVJjMD4C4/fovWZPr874WIOIBeEC6gIAVcypteNfO2Jp2IR1QO2Xj+QtDRt
37rsEcJqCMmzg1ITu/G6mFs3rkM5ytLa96QgiegxBRBXl0hC4NAcOQ3smtS2tJ6F8B3WQa5yBnMT
8wjvPbQPXahcbPFHWCwUF0JVOpfEam4YQMrivyAjrxKFe0SwHuJSjFOhvIef0lj8I4k++h9SnCYL
NICu4ou2qrIgPWCouNDGHB3EKfGh9i0+BqgwZ99EvDireO6X16fo60f30u/TQvOtV+xnc7bqIPKJ
tOcEO8b0OmIH/2AAx8Ji+VcceBHTfTooPdtQLj0UcHt6IRdyU/Wu/Q7qN71S69Vybuc33hyKoY46
01MxmZ+9ldOdWM7NBnByIS1oBQChBclvfMeA4hOFTEuZqjTMbhyzLz29AQAGH8tr82IqruCXTG5L
IGLwzHHbUzSK2Pxf8EsEL3gtFmiDz8EBfYwMyHQE+DWsRy7CK7Xwgi5TyqLJnLyi4ymmYdjUboHF
HIM21DHpvke9tHQKVHL8QhX570Xvl+f625WNaW6j/Bvaa3V3JhjkHEt1dX0WcUIJFbob4qE46yHz
mdgOTJ64I5WXWL4SLeXIQQndlQJJfeUiiEPOW85S7OrQiBPu3RZKOoCiT8vW71AHohKecXFf0e5J
Tpf7Hd1iREAyLEO9zbp0WUeJgdUaTPw1KjSEqhOLlpIJxdhWljhuEY7nQme8EPcdqiZjXg59Fkhf
eCrIZ0fSQyr7iwHVnMZZIG3Anh/3TsHSEz1RGpHy7zQGs9cvIp2XUNoPj3zjYRCYYXK6yJG+GJOc
b3yX1lMxkRnlaVmlLWELfCH4pnE+Y3T/sXRV51CadWha4ijZjqElm05J36rKRItfSxFjGNVlDyht
rXQ+Jl/mN33wsQudJiYMumxw1qzabH3XufKfB+cTWHLyaF9EvhMEzLOlz0VktEum0HUydvVK54M0
dQ/JKEtWEAbP3lnqjluSZnYPM1l8loFrlx5UaVFCHba8saYBF2X48xWYr/nBM4BWUSaphvqqY/Ug
oWuQCPloK75JYCapk6LAqT4g6B0XyCAMx5P+r4K68nkmHs2Xo8q8mazeDKUY0k2cBJ4ArDiX8o77
4q4sa+rmOUo2K6HLu7eKYim4vKCAj60ordipnbv9G7cwBtReJuBUi9JQHTkezp2SprItA1DnoeDo
Vdczjiwg1ogrcDXHFxX2Pio0mffQWjm/USlSp76/VdEqQRN4lk1k49tjyWRXAJ5lHT6C/P+mKyH8
vmW1fo0fQZkiioT8utVoB+Oq6zl7i/d+9JlBdpWearq+i8wYuDkFpnoK5yv6lXbbsPYSu8YpW8ri
t7vT5hin8S/QXRCBCNV/loQPNiGSUsdzjkLF1RS7g8zzQNhWT7FhnHWxzdRaQ+iT3B9e2N1FOoXG
9B1syHC4hjoRXHD9gwUqTbN+Hgo8Xkjyj0quCDjLJCvjvbeQc1Mgt319Yqz50gx035u41eHjpkW1
oMLUiUbYLJxAFD9J0cngAAh4hJo=
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
