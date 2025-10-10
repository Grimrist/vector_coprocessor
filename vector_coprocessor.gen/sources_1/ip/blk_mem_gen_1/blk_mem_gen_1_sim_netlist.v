// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Oct  9 17:12:46 2025
// Host        : Cristian running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_1 -prefix
//               blk_mem_gen_1_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
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
  blk_mem_gen_1_blk_mem_gen_v8_4_11 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29696)
`pragma protect data_block
juPvqzlgcFMMk1DlV6DnPjrASLbP4nlEN0u7LszlYtAaavz2Sx477cYDl4unJGyg83qLk4Dh/VDm
JkblOaCTLnxkDC7Si0kJ4qtUwtd96OOuD4jp0LVhDlX2FqwTPaJwHt6ZfNho/2tRfS8IOhOkeQid
RdhxOo16oBb2pQBgbDxduquLt5FZ1TdEES6JklWafvUARqpGRPC2f24L7f1mmKtjU0e+nUX9wFTF
wOPY0BhJ/1DM/gwbbnhwsh3a2BC0WDhFvZwrYjCQisOCqXniSUyM2dKtKjmQ5xlsAyFpy4eG+Pua
oWbLDqiCtojN32u1k6I1VGEGc7xbK4ecM4kpVGZqFWxB4BDw15y1Fyaq+ZHdMvyZhQdCRWtgNIYZ
75Sdi7YWVZ51swn36RYUktllAam1+K0neHrTebh84p78uwEkAE+moemBTiT64q8blOP+FLRK0hTH
J9YHUT9D5kQvQ8OY4Opqb6D0yKFkE3ZU3N7DsiSs46pV1z6bPqJ+FxAGaCmbB2y2srLI2ZPkN2FD
thZA+yIICBTfNEP66X4/+Ao6ZnVnGtUfBt5wfwZczTTeUsPcZlc7lZbKrmS6IwNUfaK8u2H6aj0S
B/dPZzHxaQz4eAN29mk1m8ybsU1Jv1gXflmxuHj8d/WmCLrTofUIy88Q9x58AwxOrYW1sZLUKdbs
vbAnmyAV9u2IeH4KbeQYLFHLobEP2nHwpGytJ7Pt25vRD+W5zZcrvFvjJj7iGV+1vfLsPptkU0KF
OaEeJumY8aIPE0LNEwS9cDOHX+axdd/pCqU5Z2BZvJ0rd38h0SbDRdW57Y7E1Jcu+t5VfOCS3K/j
VCIAs/hvzC2hOIftlDVemTW9M2eUx4E2DLcYC41gnvhibOCsso97BQNa5UBbzuOkjzqHyFw3uOto
BnV626KonEWH31D0F/+paljY1iSS04O3uCXV0E6wOo11sEdWa+UCz0+7tDY9xUcw0QQMFTrWdswn
/8JoIeNlIlCBeMRWVYhn/NF+Yvpe0qTCLrNmT0g1p8DRkAaKBv9HjSygM2syPWLhiqsErxaE2Kt2
QwpQrPHDzkG0yi8pyqoSeOwx0HbpvpKPTyjvZgy8eDfSuq8+/0MAH4G31B0+iyFQ7iznzK04dhxN
6GTF2Bw9c6wlTa+pyekWlKsu36erCA3WPZ63YpcUOAwxzxBZLmzhI6DjoUxQEBIpZUfrCest6ckV
aPTvKMwTh03rKfhYKcBLdfwiF6Ud81t3oO/ZZ+E/eG/gPvlhWirMqixgJ5UfSJf7Cd0CygzWsJh6
BKB3OhTPcddqbmXeku5Rj4PzdPjJA64IEzVAqwz9YTOXuc2Kr+prIZ0gbY3WejUJVadInwujVoJt
x3zmej1NFWd8nMUUMdQIEs6YGfWemhmoJJZ3D/57D0qU8OlassDkeWLf+qTr9riUd5g9S1LT/Vm+
VcXkaLD9HKkI91G9s1OURj3NIKKLIz4iBLETqL0DZzxUki2D0NgoYMdojwtn8qhudDt0hy74LZM3
cIdvew1SY6jvCHs59U6kb1W8mgb7tDY4VyJbSCRLhl+tTIZtJXWB9GhOFMdXCwgIlvcFW0cevXig
4vwrqSUcCHZc10dubzUVez3AH/eDiGcXsKSvsT6WLaXiN3JAOs92cLXcH31Y3Ky6Hl7w+dohSuvz
Yu8ydT8zjCZsJQMTlFm++RRclpzzLrpUr8zbbBoXo0PtowKRAWNHKrg5unOPxZOdvJ6r//WGDpMt
NybEbUnItrwpgUHSUT8qW9sJTrJFS9vpwEZqBoWdose6nspLtTWFJ8furXKN1Eh3s00YWDKFtIUc
7eXpE3XqR1hBZFvWHp2Q7vu5NXemaFIunPgtHx/9b4FooUaDCPvsOv7q3p6aa6sAWV1PymRUXZOx
LdEgJU87OvgZ1TuKnYzd5xfrInzJUZ243uUWh2bvTHwbXQajSHSycqVLWn1WI44RWO7lg7eX0lH+
6YTmZ0d0G28Rn2srWYNQ5amT0WUi4VDfyc9MsVBKHIxvE8e84Igpd13IQRHHauv5aCZ3nOyC7X44
egPjdz8Pw7g7M4lJ547avYb/csWSMcee2RvH9bs1oSsIsbRg1Q9UYDJrev0bh7YWFu6B04QOkf0y
V8Xb26RplulhbBQ4p2wLtzwhjvPYD8hQPZHplYMW/J+ayuKDaGy31rEHkEb9fxqIZ6QqAtdjsOC4
XaI/ucCp9AKDtUOaEr52UryUzb2WMhJb4i60iiMnSVlp/Q+GCUBnW7Sws3QTGggXlsX3BEyn9YFy
gbOBT0JrI/y+7ZIU4pD/zyfbyR8uoZBA9FGTURrR+SmE5wLbc5VOgjILisbSyEFmWuKdNDFhZzWi
9AaHb7TcxLjc+JPOyySsL9ATY7NJevXQecXvoov8iHiMW71YTZYIe+HJZDtEaR9ghQFonQ93ust8
iWJeocd/exllppp1nsaU9Ol/5sUnCK1RKDEbMDGZ0ptH9Gzi3PhpsCVpR4E6XJBZx1tCgqZFYTIu
naK1EF5+h/pBWqU2hYIAz8PKqMRC122aYAF+CqHdDIsscGrQXd5HvvsbcHV3ZkCHD7DDoD42pfov
7rDHzvB5/3PXAC4dq24iDvI+ec6PndgqV953xg+SZeDkdBIzE5BabnLnsC1ZaxZ3bVj8IjEHw2xb
bq2RKWPGSD0T32qc77+bmJ6s+vmPE/CGVfdbhlm/P1HzxWauLWS11ZwM6dhqT+23oZZdO7qL4nXU
BODEtC3HM199qLmexgWLxA7DXWUdefp5WVw9w1rDL5Qi0ouI4hGiaGsj3S8p08g5y2/T5H4Bik9y
D/YZZqnA8xkpFjGWh8+PK1rJdaiL8JH4PJ6WQgk9SFQM7KM8vHB6eFfXcbIPqzhhqSPEM4GH4n2X
bYZFuumkimydcW8fUsUJelnTQCY3RxLVPF6hAUJmaitIYsoNKa5e+oJpw9bPGLxGVWcPAPEYNv4J
kCwzAUoy/Mb5+QVmVfCrZvoPk6ci53hGfcaMRuWEiN17K4srTjVjvYC/nHVhDRs/0gNBfnW558uW
1y0SnaCY/6QmembdoijuenKZU4jVAe1zuML9Peszny+7JguHnrCKMETFvIlXzU1buiCY6sGgQWAK
jSQ1vF+iyjd+TeG8Iwbv0ZGp+lhQxG8pAOu6DWoH5HhJiBr7nUUlGogEWBOvyhmVgZBAInnGwCXQ
HnDcTA1XFQVYTH8VkWtEVhpqMZsEBemdkqhtd4gmthp41fWmh6wWuYvwS+pS+Wt5uGFgWdjiu1y5
8nkBY6VPAwdobfcNYO0EPJpHqgZJKjx1DN6jts9NBiWZXfhbw8SV6erhtTpwsCuSWaATcmz+1AEy
AqxHxmNs3tCf4JeIpoekYOfPChICb2CtX09j43PAsyF0xO16MVXV0C4aYNFKnlhfyjhQ0bb4GkFx
GVY58PE1Up2+Tyhuh6vi/O+cskIphARHxijnrgtuMo5h+jiXGR3cdVnDMooibIp9Cb32q2miRq32
bQbtRck1y2Y+fBbe066c82XkplA4ZMuOzVUqQM6hJ9iGZIrIy9yVQ2H2D1+86H3nvmeFMVBJ/KGr
hZyZhv+OLt7GQh5C8j47RmQfL9UssB/ASpw6k1JMWR8C423kmS19XGXW2juVFD+pfU4/K6AdPYnV
ux4eNeqegASHZkQsq27RHuVOVRkEQJh1eKuoclhUjRJ3AAJQIyewfltoxL2gehGrIK8Exw25Wglq
+ZdxdCffVBDFy0bt0uTdjH/WVIu9kPc+urLCgeJqQ9InFrT/ykTNCVXFDE0hiFoJ2v/XvyfZQB+J
pNAPIsuA/KXgJHgDh+qiRwu8QxS5YWeAYCVgYWVYbkbhtLTEc+5SdpbKsoOCHY3mQLPvC79+MkIu
JA03UzktqAigsdv61ylE9n6PpH5//CSXlsBu9HSATIvpjNdLYYsvPTwNGT2btyyd0cV4xcxU8nMd
F/OVfLZ92VryNzYC15d/4vSC//8jdl2ew5L+k6gqcOaa5UQbTblKEYWW5igk9chxw2peocjUx4rB
3N25Cz6Jc7FmVQJYV4ms9S0weVCP3d0h4r26okvdF+OPwGhMV2hpSq7clpwfW6qG4N2iHyZbOaOz
pCAyRdQsrE0AzUeJarwJjhMG0zJRw9fQSev/3pX8Fw59Qnux27Ko2JU2m5zLOSxav5RpaW1NguDA
e4eFZm9Hp5pa2EEcTynPORFMW9R/mZiMOrE11Qb7L8B8qyB1QsccMvSdmEooWN1I+Vd2Crx8SliJ
KwvbKvXx9gWUW2OXcQeIudEL7ALLQBLQvpmokh1DPLxEzMcj1y/VU6FW2bVpVubW4eBu0B1R/gVZ
N4scQXt16+bjfZF/8FFJ5mcyF7P2qqsPENAloeMaTdECdeBMnrndoQWEQvgdnb/nvpoCU02dOi+a
QHp3K7HgrXyLZcw6JjSDgo/N+C7lhboGqPdnPRYnJTXKzK2TLoVL2489E71qZEfL4+J+5K/xd6Ey
77beZ9SHwVnovgUaFvNj6xjSo9vn91/2Jpnf24eODNSnGtb5SVYKOgM5ktqHYUWQ3rksxDm2sWqN
xbmii2CnfObxKy38r8Lv3u6j0v6DNKUwBca8AXu8N5VIwnXIrWEdHgu52G9/D6LEgfCsjt/CjH4n
fepWVZi77UnbQ7NeYIy/XIYXJBMLvkT8u0wNYfqgwvoK/5r8O8GN3engTZRLgDxxx5Qnwgok+NOD
ff0gYgk7Cro4Dz3OApX/lb3B/nY+kNNPQQmiKneLaYqZrCSMIaJ82rx5FzZI7vQw+wjc9VxJpokZ
nsCDcx1EsgoGg6QqGvQSJTr9v0s350WNE2JZPec6aobz0NkwpKturIuID6lwaTR5yzdC9yCIiwlM
IPj5Cz1/XbSkhRiSe03T5qngJsJSaXMeBPFV8Edym7XSrNxpW31U3xGHxD23MVdHFN4PzI8K+Mvr
czRItRqLiKBwS1moZ9a3TQKregPXe1jQdWilOn3zzzhe8yVHmTbG04NCnoy8l8AwfrySEaMdzfvM
t9MZQfe9NrnJ71kNCg7uZWr1cOs10ZdYC8ZGL7sxoQPy8nNUssnsunLcecOEOZg/xb4sim9K7nSv
HHUNh/n3q3B0JMS6iWx1pzFAnx8ggmY4ji6TUBMzVFNHQcm85Fr7r2Zu+1x2oJWs7WBcl5UwckC5
h3PkShaSWU7MV/6QE4PHAsjuVpUST/w5I8k8qBDpVLRweq0eSTZQXncb2sAJw6TqNJMAkXUni6Ld
FVq8DZ68A27t6br40wz6yLxzCeyAtbs+ILFrIXALQeaJA5WLA+fyZ7rZwbjcGb8c7J/VgbveHeXs
2MsSwRaCQhKIO+qH7TsddBZdf56lU3TEvdV3eeZelwQUxdrABRdsulC7T7sy1Fs5t90SRS4v19wF
9JiJ9tDjn/0y5qvquZ479dO+7ZJc2+mH7tEMazZYxeewuY/GTH6R/nSP+cFbm5pHEupXh8Hop6Im
pO3q6WeNCtFXuLtBMlndGHUzcbWbpdfVXjiXhXE/10+pXQ72ttfKxCP6r8QipoSXUI2fvTS5HgQr
XhzAtQC1f9am6jOFfo03nbpPbFMtxT4GpsvkAwClLeNvu9KPdta2Sj85l8Vzm/GVYYIYScdwlitr
zF4xCo38wOSzIiwfXBDHsBkFnP6NMuBEJU6mvUeB+vJXTxuz5XYOiZ4c4HqNPNWm9w25qsGC6m2+
RIC/fRvACUWgZLePEmXXCKVt4f2naUhYSeQISyRJX7bF7YPxjFU1oxxhCq0vB7TUfhO1sf9RuOvg
ebwCG1A6USDo/zakI9BqAAVMcsfRmXsZjUbOUQNcmHuiIiTwyvQWKmkdaD18jT+Hh+siyumTe/b4
Q7Nhqq6OCI7MjVAEdp2Nn1U4M4RdYMdfsy3Hy/ULq8rcuIQ1X19GcNWDmhS3vJULg9Ko3alLtrAG
oGHNKMNcSpFSKLNq1L3btvz2PYhtTDlItjjIHgx/vEeR4pvLPP/B78PRTg5PrQNLLhCG1dUFvogT
nhOETT7KhcGMjXZek9dxV50wrLCwgYM/Pnec5uvBlgCH1GxWtosGaMQbxw6NNRjrZnn66qVYBxqV
rWK8iiMPZiymmdgwvFj6rLftCJMEUrVyiOAf6+eS0TLQr3mbwwCL/eazsnBLY/PVNLRON+oR5mof
iy5W26Lni6txjcjvns4go16K9ieK1AZOg7JXSvVyQMN9ZoToOTc4inKV7pZpVc/VRgyqvuoWtyV/
TkPv4vLl2vvp8JcuKUzAYw5tGd+5iE4WyB1kcIQzaDtVhqM3WvA17vYKur0CiE+V9lU+T1n9cJV2
Zh8KSE9T1k/2o1UqQF4dwR8kRYOvK9DlnrGx8o1jkU0ZhOE5hIvVltgtcMKnlnlEhh+v/OhzoBMd
irAf/btXjRNsYUM6Wdeeb07pyjawqrganMhp4ejXaoF9Lb4z9T8IpM/gHPMcd+HE3JKadqcoY4y9
RWRnZe3SqE1LiOREtvYFcxsG2NjmRQvWMho8k6jqLyma6BRBtlwx0BraDi/x8O4SeNmtRv9vGKUQ
ZWK2CJPAALJ8LfuvhJTCNPSzTESYqQ6CIoP3GcsbIqesINbMZbqyB6fC2r0TCZZ9NZESad2c88d5
YYmv7RZvTMpqdibDHMKLxrgK8IIvUdlF7gLkdYlpdaKUILSNAVKmeTrgdyRlsyNlbDoS7skfUFzw
a/cMVBAq6DaN6dy9KJGX7hSuYFnxvZD6fO/OlocXqqQIkWhfhaEswNBQ2/Yqlfk0sZC4vsm/HOxn
VXlXIfz3bqzi3XGuYsLMG2qVhGqkM1eZY33UoNXZl7fuVjiYK7qCQ+yBFfNmFwKi6B684rPVV9fk
neoYiFZhyn5ZyVQe8Xh5dVLCvKpKt8kXCulxIG50XQA4dyV7r4G7bc+5PILJg3HafaLJhn8DX3+x
tzfzzx0EKYU37LCwOWRqJJiVUlLjL1kBtj+hZI0v3gJM+aTQ5Pc+tC1KIUB+EgV2yZH/Nsd5Fse0
cW8+8A0leEkObo5LFd9whtKgG8GvcPwoFbPzVz56Vcomx46RTz11KOMLVEdC0DzWmesA33HZHU65
AwUG72vXo50vMn2tcU3g0OpxKb6siGTmRFyuT6wLzlzVeg4S9IYbXpsmGpdotme2hZpHyNgqzQxr
PuMEK3OZojvZozScd5RmaswxSDHz00UpjkumTKaFvzoCy9UAHTsKBgi1S3VzQG2O4ckFNRac6LWv
52/IUXm/oQYKq2/wc6DRcQq108XN+M26ildJukuFS6XBzru58OCvn9hgS7INfQxjexDc5tHBtXsL
L5xQjze1v7ELVAIsyOpQR+msVrdLRfeOrwMsoOLoE0HKS/UVWPveTJsN8D7yBzFFud9BHvoTInbU
vdmA+QVx1NO3R18QejAlkmuih3OzEUdDuna4YzXrneTwlGLj1idkp2ssLr6Qcxn20I6pIo03HXVk
fN2DGWDloyqqO1Fz0O1ODK5yCkgMKrKCFe62y5784ZNg5sUoYC9zKnCIZLg3FhYIi/3QP4MHLAri
HyztguOtmMqeUIBTjW+uhjhctzETGc5xOUbY5iC90tOF87kcymVJ8ViPVMn04AA3bXfbPEW09rYe
V2Klx5Joug2+YzVRUciwsJ2igj2K5IML901ESvWJpJLp0XNI6kC1BkOAADkBizjsljuqUjkUEFN4
2mGuWPzaYaHNdzlURaTnn09qcPycTMJBNnsNXXNtq22Y4tD2/Z8OHM/S7RrfciZAB2dJ2h+kWEl8
zEGxatKlbIVttzB7yXYLoRQs2kVo87cobJEl9p+YsSyRCKm/gz7J5kL7dJp5lGEDnz8I+fhDQsOf
TnNNnODiDBtVUqLiP0kkbR6WMg8DBWKjU4d4GN9Gblflanu09o82rId47lAKwwdqs4cN14DPLZW8
ujw44CFIdQ2h+BhUqBQFfyhz+NSKHDrEjDJFPPjelFSSfU3WFu4imwMPuFEOyxeDMgLfsT1g+SU8
2UtaLW7WSqDe2tpzT3XJgUmUPW8L3YLLb7+SozHblqgjT7NPakZbmBRuPA0lt445h2/HXbUMmzfU
tEenSQvf7HFvZpb9Ll8sFzvNzIg2M7RTBEX0wHOEO2SXONY8Cq441NXD3TeyNUnbHwuj6LxtbfeD
HhmVvCzIwm3PIaJlYc/mnyh53FUGxrvpE7Yl8aXDZ+1yWpIUawpglboDoVUnsClp/NwMLJxI4vtt
El59SY1lKZHk3jzTg9SUIRTHy32nhENTbm9X8bbXuCGdqB0u6mnf6FzsPYkXyOJOjWdU0XOR3tN1
joRqiTLV8KGQQiLz3niuRdHGE1dr5LUj326BR/1TLEmF5SIs/j49lH+vIKjiH4aA6diu5Vn+Ckz+
HahdZ96qJh0ith8HJu+P7OdXP/F1Xou8Be9YPOoeS5A++nl3h6hVlBUm5eA66uqqkvPGZjXMp4/3
mytpvNd0yo8Nfh+lK43JkKT4901D1zBFMlFnWpUrHrqkPXvIN13/qPQP6qN5EwSKk8cUqWr41Oxd
6tKRr50CDXOaMhZYYPLq0qm1HAWvsqSSq3/RXH6Sorpslw86vzLNMlLq4nGqhwyPvQzzXuHFO1OF
C0cCiFyXjc8Ihm0QHv/sujrvBVPHvjDAYvds4cD7uZqKKU5naKiYUEFkn+WBM1CQ0gWJAIdKtxaf
4f7Vo5zr+NW7lib2LaIXGHA/KAj63MS9ZaO/fqG4YQK/wffsiKAYNFHXfC1v0O0xWC3snGs26t3k
sa0ceDy9Ed6k4V8OUY51geeDeKjCSlGOwDsbOXzbY2We2A/QJzr6qog9cmh4htDl6gN1ltzxwHY2
ZbqKs3HOr48qtYzfHdtX6c89NdSI05n5SVuicNd8OOxjYMpU9IKkCqnruDbi/qI3AZAipDe0ifKz
1Lg85vHgIq5aaAFSdWg1j3HNQBYrSU959C6JByYkEc81MFY/cjtblvZFrBgrmXvBPwAc9ftVeJoR
+f4nhqTlVYdqOtPudYoBnibYZIl6+gJ2BSDqj37IxVtGHgldkIs6ON4mRt5uZrfJ9nNOspDc7+I6
y0qf4/nMFN0F2ihlfJqyhYJ3HQqjbArmVcKP+Os21qx80Cve6kmmuRjIe/xDvRB7B1WraGVx76mh
FX10enhNqiTvpxyJWPPZcd4T8xGOiDM5YV9VxTn5K7sRW8xeUttj6ZOY12uOQbDfhv4Emb4ADBR2
fN08r1gCY53D5TJ0mrh1MWs+rYBgU1xwWGFFZvQvYyBavRn/3ff7cvdeH0ijC0l+5ZCP1ldiQ1gM
1R4vaxhH6j2SaxQokMHwqT36WoeGbr/P2TYnOZTqveDldKyoF/HdTyLf5m4khawtMUgE9zzla4Mo
wmm6ZIu4NiQ68qRZFfJ+TXIK1ijHrr69EcKfMnvjO+rGphUTCg5s/6tMiQjg/Nhb4N+jGKOV6wyo
8p5CQRPqgyZQ6PkM0QY2tikNbv6qjD9kMjhnICt2tFMpowf+QsmfufqGUD1jUEm62wWDnNJ94cAj
yuS2cIXAAAUxCvdihaloKel7Ie25Ah7Ek9jpVnhJYbyg5j74jVpJFe4Lu6S+g0aQg4xvXKs9/XiO
74BB9XzzlK0102SyNxkxNwOLjbPe223NMnWtzWZxa6wLvShe4APdAsJdlM2DqpHmuTmOcQfIw3Db
DCToPQz0B9Ec/KleBqXqHhQub2tTaBTsl2FrtoebVdt+ZBV15mE55TFbZPTldCMPAQ0CNEmD9REy
BQUIRCqirmU+PGpUu1xxG5O7EDwJ39okfpPuGIZx6HvCsaXcT6dmfTgXNcUE7ctarEUKXm7NMCLa
ajY2gNVbgEbhJvGIY4d8mQ0Jxi2ppc4QDgz2sXFrZHcrXOisudSWrPpiMa0rwjWj9lyw2ydUpxds
BHEHP+anffCFqXiHH+V14UCplK02BDWof/pRTXXADe0TYoHsStU8tjybJ6Vj8jMCzsgj79SKuoGa
mSrOVU+vqsHDIn7v/ifCEGyjUWcfcx5Pf3Q8jCMxWbZWgCBYJw5FvK6mOKFl9fkFRrXo/ZAf2CYT
iuRm0nwLn85rVOJlqYhAC876YRou52LfN0OGWYBGTTkFP/UoQF/QXZuUWy7q+7jA3c5qXQbIIZ1C
ZlH2Jhc9/bQDXPPR4pyv6AOX6GtLc4lwvP4L4TJbqRj51qjiIdPVaRS/F5WHbYOkZGNmHY+SQxn6
IYFtLPwGmSr8x4WMk/3A1cNVLCEixFkcotsHjAdvHOBiaMpxke4kUeNyK2FtR5sBlGh5TeyAlTB9
QPsl8AQU7pgrymkuNyQNFrGdyosoWRcg9Al2IJnNneobJ141P6dhkn+vpFI16l6rL9Suz7f62fnS
ZCiqKd4rXZ/dbn6U8Z/kWlp0meeU5E5waDND4oVscvrqxTRRLZzMuZ5Ex+lgOGusUX6YU1cHCcpi
2XD0YgWbgrTrE6qgY3ACjAZUJx37I0URSJF/jYMWMKE+OBH5Uo1e0DxGYDs97TpjTHKQGA04ddxP
E5WtkCH2rtCuFfvbbnTD7KS9STdrDWlVugAlvHsOsD8CjLwdp8v3vhmFpULnRc0+CC63u/+YnheL
4qLKWsHjuqcbkDBRkTP23butVvgUzlEl2pZck7BYxGG25Fg5B6EIYzXcrnka666sWX16IkGmIGaK
b20xxqIRg/WqUp35tNtXmj/fFIwVrBY4D80Qpg+7gNMXFNKd7fDw33rid6G8+U2eg63ik0Ou9x4u
yVGmGzCYUup1tEaqCl8PImHXG+ZuFog3P58tWLEQOz0KdMBerAHyFQFCZvAihwUFBqzapr0QSEh0
kOvZtVd3IAX9Sub0Oo/WDQDoEHQSU+W+tJrbZWl7gbv9wDstKjCtgMHtGqgsGnTsTs93hS2zEYxK
LDk1dZUfw/boIgo/6RoORZFAYK2wokPn9ggmktcpuZMxrJcDJQpJ8m/h9nHTaoAo1CmzDNZZuKje
gcJjG7ou/6v77PjP40WaH6uR5xKijz4V4uH4/ZQvhvx8yGrlXsDJIkT0XXpWmu2exgyEQpf/1Jxx
U9x56x40LShdQ/d/08ZGAnDyysMj2KHiDubfyChkWNDP2ObMApl0qCcU4BcQWN+8FKr/VsczHjlt
+td1bP+c59jr1JZSE4WuD0p8ouKzu0of/QBIFGe3gKngv6ncuu5KYiSHfhd+gsV1M+6mPGSYXLYV
kkItEcBwrPlz2ONIMZmsRRYsKZY7SIAlASkQDH6YPGl9Hu6dK1WQgzs++ZozMpgdy6MHwfc4GI6F
vlgOXHT9o4I+5MC6HGbJ029gUJEDxjAryd+022lVEuPgXwB/DDDnoWbBTW2TL7nn2tpfnaODSRDr
9plznoYIuLSPDj59/V6QMs9ObT3m0TZEPYczdWQ19UUE5cauJN58HhSPt3QvQ9+o62Rcp/3+VDkM
Z7IniHS7qtOmTRHIttE6JYTJaDl6WULXxtWJDxDygNr7AukGJK2kY+sCBs7UxblDcBIVXYOtbew7
lF9DBRUIs8N5r/VEp6cUjGXnj2Cv8cU475U1/ytRiPQxokN2mfGNkh16k1IkVlQdJnWCrGuvR2Cw
bQYHsegemooxwWu7nf8d5k7c8GKJ947Rh6MZBfv2JCfxVwXnULoDvyr0jHRg4DRUAu7GRMxNXQ8q
32clk6wB9wgZh2nfGrG9QogiHw39d52VyRMP0ByOb78JHQcCGJiVDTeSLv/gRrjQV1ee+svEhuss
OkNUdX78vm3miNjZ4QTmaEIU/g8tWENZ/Cobd8+hAknsQbbkK+/etrwcWXvVsfIjCWQ+AM0dJYo9
PRtDWgZJJFZDvXAi+aT2tA1KqA7qCRZdVfvmLgnV5Dr4Y19+ylXRiXZZJ8W9k1sHauwDTGyxzDWO
VaqYXH4CdbIC6xgzZEYKLtENFEDcUPP5LPAvAuFMvps0eHs95LjI3WfzOq7MBuYKrXKza+GUUcHz
+MK2S/tuBVLlL6FKQt8dmE/UX5P08f6uGDoEgGCOLfasg9Hv7ob4DpxXcDdHSf7PUMgTqTapbsRI
pUvaUByDsUlKcExBCMMpCoJpEtwzwfjA3prkgpOIQVYZr7bnfPaHmeNbGDVO9i28pIiTz6IrQIiQ
inNZUc5rbqigLejAL4M+BN8QblA8uPDDEXXR31N/4xmgifaum0xmZcnExIZ5t5crQiaroL9prCLx
yfdjlU3sLrilZyo2z6OPK5PS0oWwtF5V3jcrOiuBZz4sAlm/MyG2zgZXbGZ/7WPcuK9j8CAofWR0
rt5L9haJy9NjEVsON8w5s6Aj64OxT1mokj/oWNJo4LPKgifwVDgUBe3DkG8lFEzT/s5QgL6yHzNv
Mv2g4+eHGMT7rPkbM1u+3KDLOfQARuJ4YOxr462D/wHW1j1XIyVsFmXXYJGK68oaBTz67HrJPJL+
kp06b/TeSVjxR4CPxoQotQ4aSS7mZEbzYXEvH3O3QEo9juLrA96oSN0k6U4x+OChmlYOJvf2mb01
/ejubvKnIHRXFKO0o2Wn8hJA1Gjmz8jiQlosN8Imy2/WGMupGa9m1S+L8MB+EisdUDovRPkKKCum
oWoNE0O4/N+2hxOKhIWMQBiTpJIr7CtoOweZb8FqNAnH50AP4omsTw712O90TWJmWqWE4br+QmEN
AxTd6Tcr7+6L3XRagalTGe1iMPPTiyYXGV9DH9YD1OJsT4av5cw2wBiyWMGtRF/2ym8cnPKFXAg6
EU8xZEsZRuunktQ0O4UoaP2c2hdp2wp6IHKxKrE7GaO2IOyYCHXvXRTl7kb6HL0lW7emwErkp0u2
zr7dupY3XgElvnrPOngkcqxQ6Q2qhMX8dEPqAbzzFaNZwZTcudmSPrN8aTl3V/j4irc3HsncMLzf
FS5drLVGVpLC7S8qSEYXsICIBKptiXqQKCn/0kuar9ks791DOqszDmOe/Bfg130imBw2TNX3HGC8
4kvgjFI3NujCHAq5B9tljniUvQta/ZBsbo06OHppioepWOlsSI0WIyaPElXsRQobYJo6TSsF2nx2
J37r5shmDYYRmhNskLnyS78stKzytos91svxlpWGrZLjRV2MFZcaXO33YfwP1RuDBcFHwqYZR7Qk
rDHs8fbe6kdizMvp+/SGQMrAWJyaKFQOBX2+tP03Soj4HBxLtRmFHCeJ+V8DvDyz6ORyKhZ+4TZv
VaYK4HtOccEgYgHWq6H5uG/FbgzZhh/wVwGJSDkA/pd5HgAZpgsr+aNOyPLikv6qhSlxRbezqlOc
0S1cyggb67s/If6hwzE4tVwDZl2hOr7giu8k9ArzcJP2Bei6qiGPzyOLl7F1mCu6sOk2Esj0yypW
fRyUdK4SyISU+plmOIlJRS6kGG1Mj7KuxT/bp7YKIjThIy8rfhazf+gq+3iUsWniV0w8TLmWIxFO
R2NBvevYjPeuc1ucSXtR4lUxuanF9W7nqMXCY2Gt0f0A0Kfk9iIvLVh27wUJ1xX9jDnYDSlc3eDw
LiMMgu16BIlZpgvSSbWakSRJ9pgBHujyjdlR+vWdLO7NbOl2IMfep/LdTEenaxcCfF/nncx2GAjg
RqsuX1cbnJZXS88bBejqmaJWce7TgNZj7J/jFGJGU+Pmou+RrIMtyi/vXLDc+70xPAKb22AwNFs3
MpnVXECtfwazJVmPrFTmkGvqbc1r5rhSyi3XNDML4pQPoECVU+P81KkejxZopcQ2GG7cDu1WaUOL
R+E4JIcXPXdFYcEcUXGKgJ7kfebccX/nwLrLCsRVv+Vg8EuaO/NmsUL9u5OveWzLjce1W7Gy9/rb
WdUCJOfDdNV9hp2yXjDKEM9AeeSJo6RN4KzHqiYjhh6TwUFVdViqaCbjXbI5uyGAX5KBAEGgcOyv
cCPGetrZTlaul1OpPyb/AqrIEAP74R/Vtxcsc8WCvznzYo/GwLUpI/wXZqBFX1n/vjPz5WsZy+NA
M1SmOQjmeg74rBd0lHeAwStMkSIxO7/uDiqRbwyyqiauWx009VCWud8EcciCLNX1g3u4PO/R9mIx
uDt3u/RCK+qBNO+kSElQKtGc7fkZU1urmeen0tx6Nzt62FjzBiZRmU80ruest6CW4q7GIaWzw68G
nMZYBLxH1ISLhuj9Od5x+OtwtMZ3OLvYThnOQt6Fs6bZBr9fhgHYYg+38Hv4ft4ameFQdkf9lGX4
raIZMBZIZcF5PRrhCIT39Tf1Z3v19z5m0r9O0KMp2vPrsqJgYMfNErAjHRWbts2jkq9MpNwAVsL3
D97wqxNr1EwhIVTOslqbYfnKHlnAG9niHTnQRosQASJ1SHVxpbHWzTs45MmBTMPWViKxb7JaUcnz
JfAJK5ftQ7S4S9gSosWyS2jASMsp34kbvMVFCBoju4CkfxDmLfuTMAJe1B0TrcNz3VbXCxE9T14Q
A9RJ4/vTiqskaAnj5j8ori9f5Wl+cqZiA0nLvSqFyx5iZz+p8Se7mbyjSSF+b+7B5MTGMD0Vor4n
EARK+or58yG+ds46hSj2ys5TM7urvNbOV24ltKe5JBjFsDWDy8LUWrrAbvdjgSyf0r4boHmi9KMF
DNZJJqPVtX2/3LCwLqh1S5e79n7O+iQH3tqNGLjKhUG12o8h6gw/yGiwUqWT4rF00cBvBmn8HpS4
eKo/RSWHc70YVrE9OUNaqly+mQb7fG/CyAYXbIhfQl0zITO2sCrkQqv+30+QPtvMx3LitRsNLQ9l
mnhM26GLwzycw4Sagjajlr19OlCJ5Jnou3ANemK3hNNYj+vzmvaT49Tv1iTfMyqIE5L8ZjJvVDTY
XXzowwBvsh5Tc/4dzmHKKZQVsO9eMfUpzbaHK6D8NXo/IrTlwQDNKdb3J4qqbv6rD97D5zoVt7Nb
hfkm6YAqUVP8FIQuCdb+1XDqgQtXi59wuJ7oFLzKDT0csAve6szp6AW+0TY67jSJvRVCPV8Vx+j3
8d/WwA6u+UWDuqOI09iGY1ajwMojARGRvDrK4fOntgPZUI74z9JtJzsCBebCaHQOP+nsgPVufKVx
tjGXA8xM/pf5odscOmmHp0k7gPK0k+v/ZtyXmTa3UdHI/JWzBruR5+1eKJ4qIncRez7NAIFx3vAs
V9nAy7xMI1FextNLcSnMMkXU83kkw1g3lpJ+8dvTT69hoZLQbY66Upa4g2G6bfUqSvq2ny1lbcQJ
vvr9qH5ZLVIy2WLTzEHJGDQvgGp+f+ilUbpiYCSV4DSoR6APGYQihh5s2dPE1DBLx0hNmLIOKvbl
3MC+Rg95yUv/E7T3NMDWbowZoEc8BSfj7kkg4H1c1JRJRzutQoCsXWRCj1AeBwZFTV32cRv+JBxp
xseGqrKFvXwL0ACB0Y12Gpl2Kw1otiSyFYrBQiXu1ObvSizumxbyFKoONmKZHesEOaYBooHhRy7U
vW3EQ6RZOQzaGe2mqrShg/hL30pwaWPZoR/n9OCc6sT4VggpE25AO9zrHy3PAT5l0JgHQIy+tv/T
GfyprkNj2EXGhwPVkLrb0S6LdJJEk5mS6S+GO4jb4m+0Srxu6DySIiot/wAT39nQ6VFxg3QT7Hf/
vyFFuWOqtg7e6bEkIAYJU89kGA1KlbNarUxFU9nneungzpMMQOJR8RLCLQe1Tuv/b0ZHwLxTq8A6
2G4AIESyC67Xi+BTi7OAUKgVA3pAilETk7TOcdaBYKlcziPUXTVqIO+ATtfQ/NkHO7HTOj4IW/uS
x20MjY6srPM8KODg5YnLUptA/BCIDuakexiG9Bb/R2r09nmNA2C2qrkiTDp9C8oF1tqs/idBZc9g
cJr3WxEDOW8pu5zmAUk6QRBaaNIU73D9vJFXD723I8OEsrE6tWGQ/u+AvJbSyClwXkEtuZK+WiTJ
KNpGo+fYfBrenZ14+NJKtdYMrsSCuRFZ8B4RnxahCs9bIDq9ivYryC2GZ9HrzVeMQ99qED1Or72/
LheuF+bEYr88zKvO5opgU7SGr+XE+t2nwC7ELS4uuuqnCWEM9PebAns/dFgApJKjVc4GDq+gSv0O
YCpsRNpBq+GTktEbK2d/Fr+wD+7xr2U8UenDiiwh/xlc2OkVtLsdWjfQ5p/Be/c3Fyoxy9zXepj9
YKBHf5qJ2i11J8Ikh/2OTlW7raGIdReclKosLAVE7Wx6b8vuuyOUDI6wMhk9qc0TbAijt4Qcnzum
AQ1+8v0og+0s+PpE+vhImC5dnIabCDB1ytp1jjY/vj7/7DqLAnXL0nhwP0SiNK5RyBzIqzelhgpJ
Y3SKWk9g+Sg5rcxpAvYgeTeEsmvs3U6szUInruR4Q9hZrh1nk3ZZgj4Q63z2kXWHLcpOl5MtVjh2
hljaerDWVb740zAaGrMVFpxHR2K7iQEIait4pWHhH8bVZgapNzA44GgkUbCBIt/oD4d05KPD9TLt
gaEQU3Svlc+k+n24hGJtzqHu2n8MGWINUEQ4c0HP9kicFB6hRlnOmuQxIfK6UNalwYNeQIcfKYpk
mscDTHmoM6PpRx+gA4ZTwRGAHyI9JjsD6OGYp8BhEOL3ieZRvUj4vvLEnlvCd+LemTZ+R9Kltpcj
VvH8KmJekVCl/FLrqVM/shjw2eesDZ/kwg6fH0yQfB9zL799PTEBaLh6LTCW0NVLcpl+vC4JfIRQ
4NYjTHcNHxx+XEi2dx8Afl13bQqYkT1PQVgvGQGshnZDQY/6recbpt73aVzMVJy1Mj7Kx8qaujiu
v36Au6kwto5Nvm1r47SgGgGZdg0xUoppot84OqRvIxDsF1ZRKL4+bdnpggJ0ElVf4kCSJes6X7kQ
a1S95yo+fYWXEUq7mqdXl0mw5t5Tp+fygW5hiMRQdG4mPFlkk3l79KhydkRJ6UhO/kSyZlbdNvyd
Nyxr0OoLkxckrQsM7uHUyIOXteCEvCakl+dRuE5cmFIYvwdBFK2bbkx4SF8iMbOWlnj32OCJt/FB
Q0D3Ys5r4ePfbQixwvD8Kjf8TUTA4yy1LPPGpsMi9CBKHuZPow50k/LNQrcfY8gWLn8soc9NQ4II
gJ+Sg24N3l0DKnBXzns3zSEqTt5ra4Lul6iFDLz86eHlVcmEeGn6k+Hq06fIxhRfa1vZTw4hHj2F
TceYW3NExsXjdPf2/Lcjo6/u3V65HLislVZz86kkawON1/+IXgx4x4T6oUI9bIhmjgfp8jjT6/9p
fsn1qeMZVHn/7Yr4g4922qDdlWt8o+LHkePres66dYMzh9AKcCT4ctAYXZuF2dpmciZiMchAm/Vv
tbO2Y0w0d6krOumw2AO5W7ueT6B75QDuxXGApyKrWQ7OXZJYl52IRPwbcYWl31IND+Bg+vWkWFCS
JOiijLZHn2Rs5ZiP7F9wqcualwbAYFQG9PP82PhxCXKhZjlAZJr7KnrvK6XemJk7Coy+noYnlRps
m7+S6Qg2zZ00SPzmSE8tBBusiGXuULlgsZfGUZMhq5wXhocR8AX9uu94v3GqTkl99Z4JVO2CWU6b
RVKGDOqXrY3oDVzgHfHQHELzj+Dpkmln1xB4CXLwa5Mxc0Od0yTiK8k/FwHlYZtLNwPXDmVhF9Kk
FpFD6XG8P6AibKxHKMBrxP+GWlcwLpr2Cd0+cHicIL2NUvSnZJJEsOxf9b2GVhWBfbyJ9zVl36au
MpjTmsRCj2u8M6l89gNbrM09cgClE4FFdb/0vkz7Gq5pFbnGHfGsd4+LibVBO6Oww3yNV9aWE5t0
hMAf0040TZDZFDdkjNgswf8uRlGMO3/o0NlEED/55VpsECh6TUiq4tTVesuY2VFllVUkNKHDpj/P
18UbBvCkRmdXNXyMDlCf1CeYPT8thJecg9SLLdSRTnmM7BgIwUZVzHhNn33aXF7v7T5EuSK7RcKn
6+deKhERvc6FWmFee0fnBpurmd2xAG14D+7LdrpNUfZkoJ2aMC0IocrAiWBc6Na4ZGoETFamh3dL
zW+jq00XWXGsl2qS8bXBLjSMt0SzEG7dxoZLg7ETjN7VFRNrC6UR57jijjMM4Di3ks0BqUpkfIaX
Yl0tTvkEL/FO+YFbuvRJ9jwQtX4ROe7DdoPg2iVcXDg27kmYh41mGs8bBJ1GAwMXC9c168HI7rbr
X23OrrxC03G3xSpk59iN6+Hy4QikbtX19pHSpcsBEkmh000gigJnaPVAHsxnF2wE1sqrLiJCe+Av
Y5tiDn1gqZ5IH/54vKKG3nU2r+ImMbJ1z8ykjkmuZvm6y8hZfCUO/YnxP1d9A7GS2LwnfGD8DCpq
cv9j0pWWr+nVpEXlMSG/8j2j8nOTFGMW/O/Ryyl1ACd6DRo95DRPb6yWQoxQWqdkFsfmhhMylh2M
yoTPbeAoqtiGkgBi3WYvq/uowCztyNxVQNh0VGJV4mLbvWodp+ojupQOauFUDFzQCBDsxwqKybuq
RM7GGTSICwHmDcKN/Hl3r3TEmX9JaONo4xIHMBrnYdNNfHP1BVwUGLf5KPcyGhiYz17XJsi7pMN5
dnHLaWZO1ozZ7ofV1dpBXIFa3s7hSst8ozFKbEWlwJ0Gn8cwkNQhbZIl4xcsniOtpprn7b5QEcpW
iBNFdbYzZGSgJO3oxjJpfyqKyixOMR4aBnrQWkt1G1Sqxob9hID5nL0nBh1STmQxhBBjEZiODq47
ehhboSM5369+/bAvtun4GcFEQVRXtVL7nlMteWYSQZj84l5gJWn4ppq/NWa6u3Zn+SOwtVl5S5+j
o0iDlXw2Oy9apOIW99r3gt//CW/bMahC5Pumxj3NIUxf3SQaXWT2bwgHdG8H8UwHjGncJ+JD1qmN
oJa1qh37gtcIDgMh7gAC3E+I3UtZPDZIj9A37lK4UjvarkVzlKlr3cjZedZ47u3r7chISCdsTqIF
1BqJReANyYD/uzQRtfDaDJuBL/XPVaLJwLm2ajLXIQxfYtktAOfrWSQy0jxRnkUWuZOfh2RhAF/X
cUVmeBmQ+tznA8sTbpxPKsBEOJnjTRb0met44tTJ2pt8w+eM/aipmOhApM1Nf1KK/vx07wF6OPhF
iT4oVT0XYJRGQGKjxDGXPGiaXR8Sk2M9OOCec//5fF5y3A0yhImMIhm0KnA59G6OzoJ+dYX7BYjN
uZFNUgYegK9gEI8cA81Lsn7EKjmIIw2MvV/m2NNGBmOSG53qk/gkw5JQCB1wAgql0dyj/wa15QzQ
6GGejyqnguh+wYnfYToaoJfuovEI9dcgInqXVMNELpFCx8oS6N3P/i0GERGdubxiAIUTd/5RgcSm
xOYg09Nq1xGSBrFB9Pr9kD7pQXOnWOT+oPxiUdtgeB3LDHPu0A/ypcJGks/qvg3MEIwmnbCMCQrL
d1pDIKf0PKT2YJ4B28m0tP19YD4q4DCRn+FeLP7XqViZNxol9Dqc97930nord4ZtsuaBYEJla8Kp
4BJqS9PbqdsGMYctSl9zXFEamEJ3fRW3j6rdM6k2WvWQpoxJFbt+n9paAHBQiVfUaYPqEAxZymQL
WxjFWjTOkqBeIuwh6YrzJ0Zv7akm1PIsX1vIFlUlJYpC+YKuAcfxdsVXdVlAYAnRpXAA0h3SHlf4
3SwEjAEKAMkUtq8kSsK4164bP1aBCyBl28WjyzeEqHKdUwwX66L6MRA8VXb0iOTVajanC1ZU8nxA
r60oReETI7oTp1/NWshrTAp09kiH4qVm6jbR3v1zRTTl++n9TvMhUdsD3WHy3xH6YFx3hhgdc252
MeZtSvZhtMtKCy5EP2+ZgsHLY3UsUwtJoq+CrBMbp5bLI1q8TJJwJ4tRqX0G4UivxNgGWJ5jhy3K
YKUuqKhPARmlXKgJ3TqJuZz1MLGLtBx9/sgTPzUq5S0GVRxRTJmYD9fDp4KuxSPfQ/hcLZeCWzlt
I/h+jPtbNxzloYWOGg1XgKzicYC85a+1WrsM45QNgFdvSH1qFxJbKZ79BBgV+nV5xgc4a/tgofUz
NnfGBeDaFADFyx2HOJMXcHA5aDI+L1AymGwiJIWlyrvl5l3LKJBq7DunpsCSuBAJJiMJuk1+K1oO
1riRYcM2dCv/0wNJe3H4hqCdK6/fYxFiDoeG9Vst+fSwB6oHIWVy3XJT1+6cN8YMkoEfhubLe2Ru
X/jybSwrEacyOzxEPurkAPDlVZfjh+ESkZDd06MkmEpaPR9WpnPC+KLjlJOLY1ToSrHXO+Ld5ZTU
bI3X30BlGRw+cW+DookZ80r+GSZCVxdIzwaSW/uJX3oixq+PfmLpJjzPeacfvTE3zSnQ3HH71SNz
4DZHS7usvASZTyqDBJab743Wv8THzlENF2gl1LH0T5WEw32WkVbMU69WwTK2ijdLFAhZHcbxPWIP
in+7EPRlGeOTcmXqbrxB4wz85aPLEDfuZpnXcU+qQYG0AD6LQBiITTfhXPblSsn76AQrF0tYi4tb
RcqoNrIohH0cp7QQqKtndZeKL61pFZjisP2pyLdGGLy5yl+RUp2F8ED5/vyVmTRImvQUUR6Dkh+h
XgGmvF9cYN0vBfXFdG2VkhVz9j5YYLct6WLueMRfQg4HHqAMIU1labt/tI5el6iSv8HKfuqI1+Fq
/i5yk457uN8QK+V4xWxjf2f4p102hGBDJr34bQMTtgiyqVh9Z7eGNZccroI+Kosgdgj63VUuOvoW
vpTmw5S1ZCdnaSpHWqlTCL2T7Ta5kDA5G+M0W3qnecmOMkOp2xcP1BVAPTm4uvkKpBgz2fyLqQ4l
fH9Y4pd0iSam00SbDQphs7I8T5/pPuotbfTnwi9cdfuhd3AfwVI33PUrZ1F34LQJZ5fUwQ6sWiRE
fronRnyO5cRj15G/FJVHnc0eharC/cvihE3ifY7pK8OqaEIF+DP6ND9+G3MV3WRKhMRV0KBEUw2B
at22LH2eM98i2ADtRsyxV26q1YlF2Ne5r/OA7q5v/hfv0flJRnn5C9QRe72qmdRAjX8g8XXdCZtS
f2FujMlup1IFtiash2TcLyuL0ONGEcXLPdEir+WfFwqIGRZlM5NHIgetFMQ8FDty0XbxBw+486ti
b2rTvYhnokoIccMC4Hmk8FmmAprRPvV7XcqD6xKo5eeA8pT11pSqFNu6wTgiFkYdGdA2hkO+KoSe
5Md1kIDkpq6+PGiRwr3+dpj3jq5wYUerX6OZNjk9yhSLlD3bOAisxbYIVHygwcQRCKHRQiVgrBsH
a0WU8gXM6Y/ZBeFXn3PaSxHWWu3zRVvUs5PhEQNngY5zulYsHwy2N2WwDREWFY4ZAssNgrV7hrAO
OMcZxKUcm6Ar0XY6MBcBophcVnCFRgc5RDlUBuwU0mdAOx/C7tQQDbJ2Z2Zxo+5bsSOmTjVdr/Kn
+nQ+6bV0eMXkUUsY4zB2w9An1+oOo6109b3s7Px+UPPmVjPAT3tDIX8HxHh3wtSN5FPIcvX8PR9E
Oyil81yr9Opqyi7hemF235dfl7Aal48LFw7EuEtYw+9cnq2XYJItzo3Ky3nKp0f230LC5WOzrlGM
OpXG+u4MuMu0kStWnHTv50gQQcd8zCJdUGzkSJdo406Ey0VqPPUUmM8HfyCRIm1Bq9guwhfHMTl6
5/hov/vtQTwoOEBUf2whgQjIWj9TJ5J1gm8tsEqFA1QUfOOBm0iJ3FJ0bUvtUDYh5rX6prK9iKso
1IXpvTAv1V42SbkBq16rFY4J33viL0NRUgjL/QU1RsPU34OgdAfdWXeoW7hghocxKjJkHteutDsB
m5dZ7pUXDi76ZHOnbtaEhpJY7hLTb+qQrWveMyWhuUDmrJRNIAeRZttEiKCv4UAZ6q8Q8sGzuucp
dSyGf9f7JbEcFgkk+LdKhAWZKfekA30Uy+irqy3Z2NSeFvn3vJX2WW52bdPKZIesrX/Pex8ZGMjj
S7+7+szbmQylO+f9kkaD8nlgcqP3Obu4uZgQwl+1V2mk4SNXNyiTrAPpdbKuvAPnIgNzTJvfeibQ
yVLVMC8neSf/zh5O6LezA2lS9LronJxrLg86lvkodAUOFez1GWLv82i4o0AQWMDpsPEoHdqz13W6
oN4JO+SqNnEcx2zXPDJJGlIBzdGyt2+K433LjxjhXXidZ7qXB7KyE10W1w1i1meQPOhuWa+ah0YW
Mk3zWM2/WBgxzsLO4Stu7rBhM0ebXMMZgRrdKz+Yf9l2gtnsSSooPRxrymAO0KIVw4PqkL0RHW9O
GmhL0cr/319nSRVvasD9/LTj7TgBf2eNfwIjMx94wkWzq7OjrSaY7PL/AUQxrOwTSwNAxi8K9kQI
NygH34dh7icv5ph3LKHXYxxLAKYILayA1sNoJgFpCKfHSLNTdby992gYgj+bL6De2RVgbMuBhxVf
QP060SF8QCNUcvEYhLT6RKCTJtq0Kn3S3gK6rej4U/P8a7y/tyXd/UgOOAdI2ZXDFOsAK9zoTUqe
dI7nVnEjEDmHdBlkJ2Hw4Sk5CIiQKSfObwG8aY0VlhAqXAUws4hE7TAB7oTt5sdjRyEyeW2APqvf
zpg2DCh+8Sy3VnrLeHCdecJYP/QxHID75ZI7kHIq0T6WhwV3Y0jwFFMhBHiKq6ssaXg5LQGc9k1O
pHk9Df+eURBY00cL+8Lg0p0oje/bwieKWv1lY5NNNcrGti8i8yRqP/B3NxeVoBAbilBEVK5Okl0A
Yv6oYzKnMVKJJH9dr+rtgaAO6RP9b0+3o1avAa6eXkbudeI1kFyI/fewPGxxtoDnwqqjsXsjTbv+
MZtEhSzKeV9FXx+0T6sRPrzkDwjim83dK6iQUhznxup5fqejat3GlIX+H1X6k0S7vH4uaEysxylU
2Jr2ER7f0JmcKg19PnQJYbMpl5qunxSbYojdVC0PyoBNBIMG6Ef2WVey8rVEuTmwU8Z9bUH4uXtU
saHShTlg+6UF4Fp9aQHn1KQTo6UWyl8UhkokTZlChpYeTgvnDtNQsJgT9v2hljAZcKXykyqETPA4
5094TALaYJ80+ZPu3BeinhQJlEVtOg2JcEWc/cBsuMrXHyyaRluhFMigg38hwFWiKUGj06kGHoe9
ehIjoo4oZ0NP9PntftcqsGZkHeEjae8T8VBhYks7GyaP+c5CQ9ajW20yhXRlN9j7ZnB5++uHWA7d
u+B00p23WExGcziuwaIvPRhl7K7IRkM5ntJDmiP7AsnY+faOSnciJAlEl2K8Mw6SfpDw/ZVA0Kpw
4G8fxPDiYLEU3H5SDiXahslgRez5QQIOP1m86uD1EkJFg1kcyRsIkTPC3d5SB/GPWW6ovr+6k7aY
NLZQVF+pywcwWl7+UbXLqyybnTfPmjQHlp07n3iBhdhJcNfYqqN36T8gVSitrFgZq9k+Ey9gdGKP
T/RL+nkg0juc+ghxdJXXBd0halEnZoWxRMvHJAr0dBhF0AfIOfa8oqYMnBQfE3ww/BbU8eEKFHKk
Atme9nM5G25OsZO+7zpQeKsWpw0FOgr0xYaQgclY4NYV4YKkOFUOAbmocPGawacU7cDm1NvydH6d
S/7WlBiDMnSlAYw+II0z2EOGUWbvqY7eTnbvY9ZixMxP1yEpR2fvLh0wvO2W5T7XC/91qiEIryaD
CKf4c8fPH0TlA3K+yCMU+hwMzwWiUU4dI1+bYYQs6jPiK+OAnO7nyUs3HG2y9s6q26wnMDUBnTIi
hjFE8VD/y/3FdvmUIxnIKmdXRYj2j72JwuOCuNlUGdTiF+rgQeBUSuGEmiWFOntS9NMBk1HqrM5k
HNy1BLFD76VP8lOFNlRaoZSZbO0Mlhg9mD6fO4ik6Qsew3go/BkQgACg00ZgfYxEiVhhDZyLXs/g
I1boNl4VgBM3uJKXSdyRD/ywnTuIR0ltVi24X/JsDkLrF6ijdXzNU2n1V7Z56uDVKTFmlNRJFGpq
bACxw+SjGbcC/meLiexG2v7drqJOiLswud+Qj3RsxuQ4I3wAtlYHHGtnl1gL726APzkHF9m5FRj+
ELX4lZYDwTUwtAbLE746YTJtM5lkxrqtUcj5iZyjDQLSZ3SqmARycvgoXSXkGPNWODa6uEMPyejT
ASAVJiNPUIKpFibrBLcq5usenxqMpT6b2/7eOphnZib1j9y9PwnOZKpwxo0dpaosjOEdxXG7y2cK
tW7XMHLfYYMkQbDWJkFVB+owsI4OtceykpgUxV77QHmfrMMl9ME0/TGlY+In/wMb02Yo53JNiIz4
WcAjLaFMtasmuHbtsc80ZQBnFOWezDe4WCE5aGy6Sydnz+r2AkLhS8v9aVFe7SVl5txw74xmSXTw
h3xcnwBiyje9+kuvHZmSstL4P+xtUFpVbZgLTzkQemwHKTFfgEP2z2nl8JIW7/zyDh5lhjmvuVbv
z+txCuBVEZcPacEaf1g/ntNwB9lxeGEwGVSOtgP9A5p08SWG0/igioCKln6R74LldNkUMupjzWmY
3whGU4mGveVqsrAZW1vsFYJE7LZs+AUfiQ2GQTqnjfNXB0sVTAyQOahJHPbSAskTZ23QjwDJkF55
mpyCpxa4gJ0PARN+6h94Twlu5Q9LhPEorb4JhMxIwLwM99GDiPA0Fd2yE3i5JlC3E51Gr6CdMUm5
eQMlvl96LfGmbuWQdff1UMrv5Q7ycFUxMD+CL1jjAbnTSp94P45HXKM48bUSeIyqsGNYPlQieNDU
ppAIpnCopKDn7an+3b2qG0caLzp+UmIquuXvpyURo9jfv94CoZhSwRiUdusv+ZbkumTrBs1eMfqT
3r11n8WlU7r7pZyzzP7JO9GitVWm3GPfeS52rRbqbPn9hfp09lxljIZSQSOvILQs/9paN1qOtYQM
DZ6/I4LS+62nwJBQILoZAK5/q1qfGo3U75jc4cnBGTkZ3s3LRLID0mFi15xkjNXFPa4mb/pvdT78
72Fe5gwGWaqGSdOqwQ1Mao0XaX2sTGlRBhv9dC+GFqiK/KbG0BcYEE5WG6cXIx5npg/t6aK3fhRw
GLn3+4SUslugZ4laTBgTbgWyYR9rDpP5lZWvmnoOeKwE0FbWUM01Bd52taynyiL4scID6bgQ01kZ
Y61A2EbVsyDy650sATB218g/oCdzCJJcbHx3Gzr87M4KGsHQNBeurgPy7YhpS7qcumUuOV6Q3WIn
w2UGraxv9axnx6hTDiYRjHrKKj7vnFPppTHTQisbC6xxGSaOYU4l5P8L1VndRay/9r7kxQ5VSBCK
AatQp3jpxmegcX1fRjtQlpWS6G86CkJnw5TjMolihL+CVnlfK+V83ZeJoKa0hJUr9FIEttZ8C1a2
qMUqCttha6ZJKNGkqCmQMIR8ty36+GyUMVEFIOMW5TGydB2EET3WSKx6wB1aZ+CAQevp8aS5VTlk
1/EMYaGpb8N3JjJQzUXI+4E0ltgPweGvN8tclyKddfxdomQ2H6Hx0xz0ZzZwgydyP0QlBUVgoN8x
VkhEMo5NAsmH6ORSsNODGa6yueaVcpdpqRRbp7RdKmLEl3Nk7a1fX84aoXg+rHFMgqMDZkn9jPeh
Vh7WCAD7LSB2nZB2j7aV7IHD35Tg2w7jH3QJnN8JsE8LgMQ8OVNWXiFkK+To2NWq4e7gwH2qgqJg
jxctWgBO4Py1Wkm8fTx2nAfszMKUkVme+Vy4ojZwb4zOav9TM2BKPhzJ3/6EBUaWh4so0Oedt7dw
DzDAb03aBpjfDKUueCmkDXjeg17Iul+UO6iN+vn1ul9Z1FrFDb1/Qg9st8VBrgbwnnSgTAQUD1lx
g5dK/RHsyOgqWf9eOknJIn/oJX/LHZBZmarKzmV7HNx+EHDi+PXWN+2sBgu4WnQNPUEAsFAwn4f6
Sh8H8Oc2Lh69UkUCCPOZlbDRZoBJSNgbPXE2isUjUq96OoYx7kieUXqGyXw3awB6TfUR+ZxGzL83
/im18PZCvNGrBvHZEUL77/5jh1ciRKMZLHrXXrNxqhYgOREA/kYydOkqM3qtFbkQYwcUmLgtXZ3/
jImJ5t0rms21op7z9qq8mvkDC6KxhYPwsVSaGwjHyAGfznbEYVhdTl+BLqMA75cxtj2pBI6J85gR
Ac3L5OWfqwjg3l5zfxqgCQW6HY8B0BWOpKfMoLKH+DBKrkU3/nbB9PdXyZnXBXPhw3OuKiCL99er
MZn1QhO85ctszeLAJRaH0ZkFzJj4BCg6dFNVsfhfVEr0FYpthqFCj3hEvHcu8/bqSrVr9gLdUPV6
V6P7H0QuP0JCA271ahpkVt71aeSVCK6CXbLxmdDbGSEmwujSZ+zZQ91ZgQNxyREZyuyRguR/oiO8
H1qQzQUVlHkqB/4PbVJFS9Shoc7QEkeKVUQJHjEtO5jriAadFopGNBdvzjCfU0f1PVU9NN65kq4G
SvJUPod+SuF6SGihVRhjWnaE3EHmXhgp+lXYGusSo7d1cJhbNIcurLR9p06Y2LEL9aA0TrPnshtn
ifpte7LG73WKXK/sFG8tgumv1rU9bqpSnzqVYrCjG0OV0WOG3PknAhu9Pot4BmGx/AH205KJqF8E
ydc3rezFnAe+0RGxRMt9DXRHYwgguBX8oL8DPpyC8iWr6E+uLCd8n12ozVkIljUHdnI2ye6zr3Vf
sD1Qa5ZT1Md39pkCjC/mASgtwXIDu2hD2anhdc9oM1wXEaOFM2BUvTW9DC5mz0ZxP8p8RKSxifyW
LZxDxgF3rhFN1q1FG5zDx/N8NTC5hLlxReHybpc9NKeJE7QAEhlJoWIWOgGOt9BhdXtR9+KavIO4
fF2IFXxCz4tU/C4TBIw+n4kf1Ao5jUP795UvScUUG9QuFO2+5XKSz5Ix2SVkf9LCfjbkoakalmy0
YdJSGGlyJFwqCx59IO3hGN2a/GwF47oxMgdb0Nj1CzVeLSUbJMQ5936mS9ANVSgx+v6BcHWg5MaQ
ynzJONb/HSJEtkPlU2WfNHa1MVMMByzB05V1yiW1MHyTfuX1LWfx5VdlauIboG5Zk83/vWNoXJoL
jenZhG6PXhGEsm68GfsalcpPq6tvC4T+w+ZIIbfmopqCnebFN0739BO3qOFo5cuvgdTyTTl6R1M9
kONh4u/ntuD2GbHN6zYTJ7GBwqdk6Jh4zpFRNFFpOESYhAsG4q4FVybdsndvClTL8imQBZiH+PgQ
wC77xixrAgEaIjmU6tatiFoosdB4gM3bbWYkemvDVNxOOJGdgz3BFJ0X1xXuGvwxs8PqoW2Jf8wq
h3hiQWhc0cfov3TT0q8iLdWD94q2lAkvIpSSt9Ihm1ZX+r4DQBmJ6PbpwsS3qjjstabTP+2ry/Js
xtpCsfN2p6sgDZzSPMmJeFFEj0fTFUfNdPHy5qOpF1XDryc4MvG/G5shOurZzudN/ND41acrFDNi
BgP4rUoC0BZO/pjHuisWtg7Zv/u7JKk0My6OYelGqBvpvSG1S5lk56Y1H8DqfGzBzst1GsJQeUN3
aUZ+BOB3jqaB7iApEVguc+vaobXgtYOQxOd6QS9/sWwl6t1oHVf7glTKWxDEwcmZGBhIcr8zoE1l
xzuXAcTQRrBCNSc48wjUe8HzMIynZg9fik1kgYaSQypuoyPz7Wm6PtQb6Yt/PaGmhx7GIQs5H4Vp
T/KaptvDlENK1uCSPuoCW2xNnKx31ddyhpkNd8dWqK/aVcgx0XN+f8LcjCE9xerBt837cxfYq/xT
RPkJgedehcB+ghDOYk22//rPP/mfftDbvNNqOKoPVWNEaGJf/MhfzacTfAk0szWbZPib9hrhQ5eT
ccyADvIdb28uSMnXADZdM1RDpCGsz7qqdtIIi9N7DXgdNf8Ru/QU0C+ahC7Q4P/GMblzwyX+yIo7
eLuM3HFRbUTn4jPoYg1R9aHHFImE2d0VHBno78RZnAYMCabD2xCg+dh6niNJzFxQps1ikrzABsFA
JxXVrd3S5uQKk7RQ81U1VLgVWk/cTyc8JfUb5Xe94yceskJ0ufHaBZ54su5MIDkEP+duxfJ7zRgi
rc4MnzFtxk+A+jVXYlRlpFys3LjjTxLxBpsvzN1PE8UE21TXbR2UOD5pq6MelQva3r+xgrW+8/b2
3PrEgPSDkte5weYsrIKKAKn1oGe8Tzl0E6grdi31hkwSb8w8xChOmJ5iBcEjCsXGTXoGxMVurYQ2
pl7pT2zQnSjKn86qnwJPQNRcEM59DF3f+0R5lDBv42t142Cg7rFZU7uH8/fDHGsWt+ze8wWKwgWW
zZq+M7ybZfom/CCo4ovb6xFB0DLNO5fVhPF9MdHvkX0SiN1W8fh4lGXYpvJskSGInkhlKznNbGEL
19od02ZPRog/2Ad4wsq1Y7WDknZbx/4kw/TZP0jQhxqML0oX9lI1L766ALOtGh1poonW5yUiFQrl
1BCvv70s+qHg9w95XkcO4OAciDL0vcXiDlsfvJH2M6OyfwQGrfhomWhWxL/TkDOkBQInkQ0wjVAH
ygsA1K5ROUjvrlCh8z3Gf0ONXge6D8fW7e3Z4vSOTJFwzXd6t7GTpxiwgY56HMZl2Zmj4DSEu4B8
DoxkmQNKmuNUwR1Yknfkpr2FLp1ZmwvQxjjtKZ90uilYyKa/XTpYM0FI3Jc85izwDeEGsd/kQ31p
5VbA6wKApx836DQaYE4o00vaE/nQeCY8Tn6UlT6C+igTjee/CkC5U6yVSuZIZEw69Cm3yrDD/KUt
aPOb5VBuu0gGrOzekTnkWSydBD+DxpDaMsCHl36O1L894CJJmp/S7k+MZNKPK57039vZhRZK1PG6
byI9SBod0rVY2fQloe7sP5ba8alPs+iDX5Vj+J/ul1kSkz7HOpZHJOE5U33G1W4c1er/e4dz1W5c
ZzGmdvNna2NNK56dSYuxlPO5M4PBkaJd/jQKDBl0jarF3XyvWho1P5cYbMyOrVkCoTlPmlQCMyWf
99rH1Zb93WQ92JKz5W4rQcH7SsAo6Qmk/YVfqfYGu7Pqzrg3P2CSg4tUc6oXw+0LdGjNPlGw5Esh
LLE2xCQGp2gC2Ed9lAW3xW9YGP+mGxN0dnJBcbBFbaMcUZYtl2P8MZYKST0bBqqqvQimO/dN6+cC
5jfk8jNYpuBCtk2YRkXxZPece+z9ceJDbnyW/x3MRtkMA80byxrmylG7xOeaTYfiCFVjfIiaXMjQ
lyP2ViNk8jat0fg5spzXXF5T1zuqagguHZrgiTpG8ab1VP928z8NMhciXZKC3DUjS3Dg+sbFB08i
2AP/E9+wDK8CXGeYGIbWqpNyA5nxrZp6Oxb3quadBLXWrBrGTi/rjielbkpgcYoF0IrmQBX7qhaa
hMDd1Fdq1xFxHRnXfF3tBaEEew30AwXSjHb/m2whjbXbi74s4xWKiMhZXJg4BPGINmOT/CZFDpKZ
BZq70XvK4UI9QfHh8db20u2QWOz93KcwTKdTeH0wDx55xBCNA9xYJWgnGwaYmwIDSzMiNd0l599R
VtW8Fj8QmUIqLKgorxxGFv1OYGrzkdoRaKXeIlBkhV0+ZPpg6S8NsUeMewzGXZGMJ6PtuoTPaATb
uLF4YtUMJKbe+SSeF2779+ZSZsyCd5YnTQvTp1lv4hBsdJHX1D3w+9sWdRNdZ+RJF0JQg+mFeGkB
1L8rN9gzPjXBsZCdxBtNJ0lo/Xq19il9t+Wb1bcOxASHwKBMPeE+SgWXRUhbNydHhnJiQHOjssxi
7jqkhoFnSdi+UbwUiU9RX1k6qkyJxsyjfqhnp9PP8h728bIR3UwjAmrZFbIhb5dQ2nnLmIUpdOt1
30CB8RhF6LV2Q7MNUno5dmrVLG0Vwt8tUOJrcuA71nhiGpCfyYl5b+CRY3jSuNzdqUfK39kV8dvq
eHm9WTN8GAC1r+BMa4PkmyYV1/I0UOG8kmEzFitCMz/5grOm16oNGnRpYEQftTpq0WGZDx61eKuz
zkYYPi0yTnJZ+rGFBV5gQH/GEBnBC9EFMr5ARSBOVGOOrfWBu330CTlkCzaXJ443KCd3xztQ6DYy
NmNHQyJEEMeT5ls94e2DrLrTHidQDZr8PJPfjCiaG4C+/pSz+rTYoRJXUlmtamYAfHDohSryBgAL
IHcueBlrelQtZGRZ67AwbEFmZ5eKf90xU3zBKukI772KVeWqrl+/WJiFqWy47KA7kHdUmhVmpviE
hbrJvqPWMByWfmFM+OlsV0MIJHdpT/acFui1XbeHdp2y8DjyY8Y0Bv42aVEl84RzargPagN4Xavr
47yowNBi8lEPzd+nxgTyVLnAhb4h5sVNC0ijl3KIBZ5sQI+bqqLiOzQkv7Jy/wi07FrKEef9HQEI
Hdfylj5GufBnIe2zjMO7IR01WdRV1d81QpmIcS30Ob8HhaouIJW/EItzMIOTybqfhz9/Ir1Emp3A
U2YfnTO+pNLRRaVcTwRNMRi0AdK8e2J9A4IVLYOlHBl4gzPC8AcUfA9/amQi1Jo/Ycy5Qijuq3Rm
3T3teVGcbT5XnCDyet4mN8DkpEu3RWKJGrBclKcI9tYkHFS95q115sC1IL0joi23jWGAP+N6qsog
hyjf2J99o6zxHvwAtpouMCYrFsgj5XFAdfdIcVWu1Tn9xC2+jck/7p5VdRZw2eSUyHapvDiELGiM
4Z+v1ZLR20/ZVtUIp4BqK8XtoAP7vRqu2ZXSsHk4EJufNusQbeXDxJBbV8DCuzyRtiEPBqgbJrGQ
5dvBBx5PpQvNRCvEVcaHYIHSe5Xh6aU4r1QligjmERzmmkHEpBtyhWMRowYUp2lKI3Cmt6leXJLh
u0jpbLxzK7e83abqVv2vdM+7zcgQgjBHvqaUMheDMv2pmHHSsNFbwETCRHQQjKXFdnX6r6Bn/Yjn
3Z/PCfnCdVy6xYXypqufRdXN2Ja1OX0XYiQjOKmmRKmJcg7+VShZ4WOLNvHWsy6nmaNalnGdUpYS
eU9g6f6etKqTdacMBWMk20NtqgHTaGzWMA3YIOUkafFFjSCySl6hodscF6Cb7cJsaaOyxUJ2VcH3
2IGQfMd2/fq566m9O1iMgtVivSZlpupcajLl2QHJ2Z/9KvV4GiMrwrwwmlWVwTWXQBEL5dx/JtlF
b8lx9dzTBPuFj+BW1OoMNdOgwIJ4HAXSH2Z/2d/pnS90O71ibp13k5FTGxKAa/DpMHBTdfhRL6qD
n90czbCBgFqtHxrxv4//RHCnYdtKfwwPhNmgKrcD55Xh6BC+Aq9DGMvg5BTck7YJ80iNj9K9YfZq
re/nC4zYMuevnJserqDCoV34blxm08To2xBdFKP3HP0/ZSEuRiqIW5W0ZkLLyj2Qd+FoK8+iCgK9
7InNeWZwNSve5QJ9OYbSYHrADRFGPmEk3rsxhPIBMYklKICG0wmLfOBXnWMMngspydyhetYO8G8A
hfJFmb0MJjofGL8oyWDejYPLRkSPLbg+VCLkfY2bQdKnRbmcUuKEuUt2OqCWge/yL2V3TjtvP02v
PXy3IZ8k1Qu1pg3l45Oyd/bcugXMuepcu540d3+Wm7A3vExXulyR5Sjl1ok3YmExtNYXoD115QvE
aCvaGwxxvOrpKA1yrJ0Qu5Fv0PTpaP4kSntKjNQGUE+lvZ+aZhlBXMpbw0vpHJKgZTCQVMToEBZb
7i695Ugd+5EBKycB6CKQszRODdZGbnE1TgvRKQoDJIby1h/Rk+SIXAw+FjvTf0EYF9h5/xUrm3iD
lLIkIFmtbpVDqlmzb92if9XYsuZ0Iw3DjFO04nbXwp979BaUN2pbePyOxtZZg/lZefp9bisoDzis
T9N1/+lIsqupD9K8w4ntKrrFOro8dgciLsbpEghHYK6ZZjq+boXKX6VAsdtTR1mRYSyZ+uHCMpug
e8HQYwzZ9qvSgJXLdRpjpJWQxYHJDGBH5NZ8xONyIXEMRjibnaNukPXbNoOgGTr1URcC2X+1ku/A
1nuRwRYTu7db5Ys0GkFDG5YHP+8buFfwTGM29WjsEhTZiieQKRDxZ0XykEUI5k69E2TtNyq5M4HS
GR0wmb4KyfEkKDyh8yvLl2hK+z0AlKwPdWqqmKIrnHi3JocX1Vkdq9xGaLkG7iissgg3O/Mz1IUh
4V6qfTMwhUjNi8BveT/eFuvX7rGHcQ1CyzUMCLffGcLT9CiP8l6m1OfokphF0OhqAAPvvJAuFQpO
ZxLgDyx6IQso74EKfjqU9iGStKk+nyR9rMESUtjK4f+yiWoZ5+alN+marZjilbWVwN8u95mIcEIM
iMP9Y0SpZ2E8dFqqbZHrMTnEgeHAVhXVKkMf7WWNBRnfCX/BrxLSp7BBN1MUj4gv8e37a2vTVhjs
nOJwmjPni3quLslCoSqfAWu7HfNV3+6V1WGRbVIUHqQZbpuDoBK16SOpv4CI4/Ei22BLp7xwtx6x
zF85SKZBVvpjFrthWykJVuf8dxU4WX1faJVVh8sxBj0M8es8Lmmlp4kIjOHWON29ruPdo+Md0kSq
SMJMQEDxYYp0fR1zUtUy8nhNhosoXj9s4sfi+voEUrl57T/X34W2nndR+dXSmohuAK+BvRuTI/77
S/v9q+wWCBCDpH/ZCybDfY/c1HwwztLhi9mNumK8yMCrf2pZiIZLN+kJnIMyoiwvbOHvuUXKnjDN
hps1PX+0F0cEYhyj2rna0f/ao6Lg0OgRmefzjcGwSB4UvVKmgQbPfWn6zefTzlXTmWC2V9LOxgW2
gZhgaNSgZmrVfoMay6klESo9OmrbVooX8QdJFA9t8aWWvLqaR6LhBrpt3AFJNQn+PriRAkkUg9LB
t8yef/l3EENionltnER+R8jCk7cnoZbBmgKBOE1qFpwQ8LInOyj1Nky1H6vq1mNABMAlRCNnAqkK
JQw7sz0ss3azwYbPArRrODAC1bxuObrKbPMhsxn4O9bg/b7QZf9PmuOKl1BmHIkGe1yGYCeww4gD
WXn2ricfIsqZEa48RO30dNQHFDkC6uF6w4+yF1pPnSjv5T8tof2Zn9ctnlgWgtWKzj/PfmqvUwaE
Wy16A2J88ukjHwkcY8foEe/TUpGWIRucfb3bnd9PbQ6J3J+UGJ4pZGQQN7sK6NB1oJ/MHFosnqFz
9uH+xyyKqXb/rPpVJya17b5q6vhOnNM1l/X8CKJGkzMHqdD0kxZ7FnX6nRxVC8cMs8wRyoF8l2to
RLlu5eAi7N02uHj2c4rszrjWVUIIDwzdswZFAlV3gLTKWF/Dw0c8stwzn6ZOogQMY54585EL64Cx
xNWKNqLing336qazB1lHVBwDvzfdq2Rp/u+f4d0hY8Kp08CwsVnQjA0My5aTIs9r5FRnSYGhOXvV
yrx2FktMmSVJE1+4lj6WUPdE32wNdlbs1RsVcCvJc7KtU3mUwBFtLhpY/8rtuh563zZaXYTQMp5i
sZVXi7lIoV6BNnRqSddSOvL8ENmF62vZx7+vIHDcakMhGfmPuejOZFbrIsW+iwcXl9F6JabHSkxw
cbb8y8L4HrS2gOQKYicFv9FedovPy712ycFVRebQAKITPNrQmyOfCoB0t5mqVaAIyCXJktu1OTeL
eoHiERnxujQxNeHHFgjOj2av2K9ODYSqnxJ7tJLylTD2ypM3AnM+Sg3PLC5azlk9C7axEUaF99i/
fc4CuGS8uJU+NKQyxQxg6BCyy0rwnpquaJUHjqp1dw19rmeGDiShLDo+YwVajDUP7qlrNE3e+6aS
eXO6P1wOg6R5/cwhaetP/0tQTJmQOrli34TdW/i7KD++MfcetoGQ8N1YPrY77P05l5Ps4dr9Kh+F
iCtrGej/yLnP+0eicT/QiMrJTrDvOQ5XJ5wGB2UQpAmTIdxchSXmBpYGpFH+ZA7PEqyGdliWZP2W
aQGoCPhDHUgetbu8l7yfM7HhcH8ohQSS0/XwGFNh2hGoSX8w182R3wbSBv/3Co1m6pYI/BYNjKgD
DA4OrHR9dckXh6Sx2GFXVmzeFPdZF5sGgA/4o59VUA5eefD40NxrUvL5d3kZdXOzpvfLOq/Lr2Cs
kmoXmnDkmG4cXR7uPLkgV/5kRm1N1kunHTDC7ajtCyW2JiR3QKheuGr3ADQUiSBbhUMF5P819Gmr
kibsjt+ooosoLq0XvIFwbXHpoYHoNaTsDfF+zLbFU5yFy1mu6vEv9fH+pQfGSQ7zIc+AJWBI82HO
Bz2rjXtYclSC4AoogPfCAj1Tt5S7H6UElHJw7ulHJHV8xm7axTAj8CSICY8cgPaCY4tnOKy8DqmO
O7a4p7QUZ07Y5iYc1O7DLD6GIQCgWc3lOp0xAPwnQwpTm5zLcAGKDOuDCewXnNsRXE+phmXoHEhj
5vgnk0IMw6SDF90zAEw83ZQjoXKYpbxHdRvA3sozz7Iwe4C3RGdNjso7PSNTs4mrRnHMrB7zruda
A6eAS9nSIlNPKaUoD4PqhSXaFeTsq7XkMWwAC0hnbGqoJIewsxKPLIkDVsYi4/CPC5THG7mNH9Ds
OFXFnoF0GzTQJnBb3wQ6mzI3TkIJ0oA9Y+ivLm6tGGJ7/7jAGx9VhhjRTU0TgTzYflyvLVGbOGBQ
VpKQoddMgc4j2xgndTZqMCbvTz5pODURre6Sq0FWJUfBAVh6dEtK29lXoK0DmranUD5BIoa+4TOl
LgrhD7g8djuLtEdxaP/107g+a4HRpYzORbutgMKEOUXQeK2OQfCkZALrVYeeZBXBAbqk6y49YeC3
X2Z+eulQz2Lbqlz3EeiCAIEsYXEbz3CPSeW8qn/warWnmZM2lSzr7eykqdzWoBN3r2w4yItorqDj
5ROAi4/n98kYESTc1mYMxlA8mWfQWyghliukpo2I0MqyXhzjLDLDnFWv3E431xKwOehGTKo25nMW
NN68DdoL0/Cg5YTGegrkIes715uuXaFKxUmau641jW0mwLnf68JiPsjk9N+2/YvnAYQXL20jxeWe
0Up9hmKrg2+gJleF28AgsO6ifDEFiTo8dGaFbxr9SWYSlOOxX8enjuNmzW0MXuRdlsJHjWy6rMG0
/+Gq+C9kXdHDrOWQPMv1I381BeQbAy0L/shDLjgwT1mIl6nGM4pYJucXjYjg3oWXbC7t0q5cGq8h
xDaF/Rb1GMhsI8ztzTPMynddlnqnYqQi65v+f/W+ISqV0bQBzMotAXZISljvClA54D2ROxmnvKWA
0UZ4aUtVdsLo+hC56gGZc+s+DOnHUvTqck7zDP0K3E41+eDx188g2vC3zxnFUFdd9wV/4hBd+Qsi
74dEmDOQ0WVN+tmi3IdljuquToqI+YDf54dH72KiMgIyhMk/2I7rLaOsQJw1zrHXOQsGgjt2KWb4
+RlKptAt4uwi7R/t4myVazoNEOG+wJCkiDIEbxltBqUkaRiobZGC14kXbzkiDnfBxoZUf6KeckP3
JSdq/LsTVgCv94A7AEHWl6MtJKnZk2+opVlMtFbo3snA3kvF/1bbAh9No8feKlkIvT87SgTptixQ
aN7Jl27uiqYD2l5+Dqz5J/emzezTdNzqfvf1HxyMxoUd3DCvDBPhx3UGkEroXZsoRs1bbbZCbIwg
czt/iY/MfJ057d8QiDec5TnLAciYqnp7pY8S1xb1sqIa+cshYYsjkwgKFJiVsPRn7HxWgAxEaXMr
asc84m5OzqUSV2j26LUVEsqN4IndcsmjbXPgcG9mDOj/MjYkj3xPYhMWXY1HCelMCqr5rQfEx/Tf
byRvW9rVWKMAOM+hf1neuo5bxj/hPobS5xqEh6GkAXrIAevjnxiO8WmmnzWgHQNi7H+/1ypaXEjP
FEbf+jHfXEDyBAx6s1EXy5LLqV1ZXi6gopqCy4ZNno0GIDQg0PBjrlrgASh5GdYH3GsgzfKlHa/C
oB4PKmPyui/6DqG+jsznvyImghEDQbv0UWlXNuJJ6aY5kIW4WEbIYXf7qd7FRVGDSSTo3cyHwB9H
vPweElZNUh4f+ghtdoFqPmXjz/qlrsodme5YpS7wntSi/5RcnC5puXvtWiFV75yxyGyeHKV0063P
2XnqrQ2JTWM57aZlwDCcbpD6l4m+yxzLu2U0MNseisd7c0LZOdfY9VUgbIrwLYb2AYi54ApTjRAk
5a2bHaFVmEH7RXVNVnVyam1m5E1W8dfuyhGrFlZEAgYZ3twsZTRF+OcuScjUjADUzDLhLhSqib2V
Ya5UMdFSHFTlg/ec5WyYiF6ErALi3kqwcSKSi6c2ZymH/oqLTofUWzlukcTTMyhbJoJYMVWC0VSv
GiicLf769iHHMfmVZW+c03d2axAV+E78qAx6O1AsksqgQTgH6Y6yq+aeTnmpMhZDYD45PQTqa5Cy
H3mEIxWMorI8HLQQ221Ml5HoiyQI3vF4F90t7uIBwkZAD1tQbN10FU/fa3N5/S8nqg9mkhAyiHle
5czSJu0MvwCy2gsd66xU3BoGF1RE7ilBv0CjBrZYcIuFbOLTLHAmqHo3/DrBoO87AlhGjp4gScV/
lxy/KLdUf2mujJqTb9gtO8KhZDCYdz221TO88VZ+OAGFgivluqNAUf8aloWS05AGB9OMoaibRFyx
fcEmYhOYThublKaG+LEHPBe4pU8j8fWX2doWJqCNgSS+SvXTiOFFgyR5T/UTmgYpMiIdqvHF/7s+
9ZUwNEk6TXiRPZCu5cnwkjD5artOpuU5nWVEudNalNjHBrkLW+DgEvdKqi153wtqCXnwBu7WdUnc
KfgZL0Ya6sXWbzRd68DCQ7hqO8Wl7maFB88FWgX0HKBIUWmfUIx2f8c2/fVr350wYb9auhPtVT9e
t08ycKBp0cZVyjmukquFBKRPeAf2npFIkJnqx4YGyTunwFZNUc5msJWQcxTbcsfKD/N1p4rrpWsE
90PgB+uy5ecRuUDuB3znyxN0dy5H5yLfQ4xEc8MR5JV7W5TlQtuOMprM3oOnh3YkxZU2KljxVEyC
9X8DSeTNgmgbOSz4qNC1im7ca9wlnS2svA7tNw2so5WmPgrtGsBtymSkhSyp+xd9S6f3RgN/uOpc
9LmsQPWAcTeI7pMYffDpAjCpFlZiTKPwmp2Z2imQ8fusnXamzwDrTcp6s80Z2RrbQ60aqXXzBp5Q
sNVf9yNcoI3XZw52ntKgJk4RYYNPb4fSIZsUaJGAFld5Q82wztxLK1pORshMeM2BVbpoAohdUWjb
SOM9oI9pgVhWElC/lg7DsmmaeRN7z0WHGMVIS+NmLZVb1PXzWbTlVCpjf39XYcC50VsLDxjly6WQ
ojpu7ZTUbss+6M48dhmTQgbuGeB5Lz0U/D2UUOSyXfxUC3o/fJuZCEPmmmbt0pgFH+Rhkv5oD4nq
J9t5LIskFHLLYKBEx5STGQfXVOjxC+Xg9tH4FHOPTAb/czv27N+7TkU/tVwzWt7Y4LMZvJrXs8US
4YoxLTSrcSqM0oLd19wWRicPA4bo36496p/r0LBnmt02AZsRdQNHLD58fkuxDCgniR7/lbiG3qxR
Kvs5KKaBJcxhvNZMk2LU3HNdkTRqhWiXnEXc/YGhADn9M3FRnyMf0/RmxOQEPO0WZGNN9LoKIVom
eBKSGsaxPgE7biX8G4X6P+WHOL1XSSAhSKnKJcc9Tf1YE4mPVJg4hQV2oaniKV1FDlYjHbnZsfXH
iKtgJTX/qUoe5z0mp8QYJajR+PyQnIlHHL6SZx3XyQxCegjUh5YU2ZBYrZEyXFm+rukL5cpzBjSI
6y5oAmSum0N2qJdxMeWMomyIPyrgqcklceNoZlnSQxPnYGkqjC7ljwy0HqIwNxp0wBZP5L5qTok7
sia6FRzjBfafv0NEvwFf3nYPwyZnxUiwrW5ll1FKETNqlnmBYeGgNjJeGc0TCTbg0dIkO9RIWqKW
SChfRAtkgFAV65WOanwRDDIGm3BdWFymUVe7pIZGd2OygQlNhbuzP8b9klNSKvTYKmxSYMb9UW41
G8eJCKlme+lvra25HTTOcSp6dgsoLiWr51u+roUFnXQKOnVtRhhIJxXW64/qEM9Uy+HPadK96hFU
3f2jWi7bUpJ3gqL2WZhREYtVccwaJzGNO/OAHauGXzQ9szIv5UiJ5nQ7XBfTHW5JDNpN1ijTW+0i
FoYr+bXxkgetx3Kh4JjC4jVmPWU/EavIrkv82TWN1JWcbuSjBcMWXdj/phj4PSLdj46fw8o12HLG
52wycvWpyzOKrJyXmeFxhdCJdrUVwqeSfwHVWBNPccoAI0W8mDhXrYNpzmgHBCfWvme7Y6mSegKt
jcIoS4x95cj6ZVE+PZzzXeIL0mQO6CdlupFBAxuQohSJIYlEO+fXejDPm62sYNywgJrA1MzYjLAi
4xSKvJ+qoy1m4EzMzMczXdXXC+KNUNBwYHcUfWcIIARla1nPhUUFAQYZY19lAazNGFqFT6xJyjcA
g1qRIzHsnmcSwwddXuAIzgIjlutYnebb9jH/wVvuFxdz76RYL5bOEXXAzB2dWlpZElOqSpnd5XjB
4O+/VdktItc0BsPcgL0kWYsDEhMPC1lK+b2STlBUGM7XtMZvy7p7pWeqjVgksVl+om7jy4Ih5Nh+
M5+689E7JAc7c06iV9t/jSwzxeZbLaeXJKmJGXiPomM5tW3BCPu9A1fDLV8Inp180u7vOZKplTmQ
4+8OC66+wWVJGwpOoUKo1b1QqAGGECxL41xCkr+4XHJp4cuAxuYQAOVpTvCe0ASnoxcS60DyDyhi
gbvA31bd45//ZLpsbiIL+Fz0KUTLPFq1NOEc9v8FnCV3ft6CKGmuAz4NAQsSBpUC1raEQk+nH08N
38+dCEBCYTM62TTD1g1z+RXlbuSYQnYH1UhZ0iNcr/lktlwvj2Fn/5zqS7b0GfbUYGpbM8bIqK4N
P0HKEUkitHr11VQXd1v6fTD6fRh7hs1mQgCMQlWL9ZwR8Zk4As4z12MPfqDLdrs0uuJl9vO/O6Uu
KnVS4QJNgV5uU1Tx3XvszY+wuJABNj9cAUWFi7NKBDn7MRuW/R1AnBRJRxFaEDkpTDQTIRJ5iK1r
s35HTdt+UOCZrvzyxjsp0jJqb4ecRH2bWfQQbjVzw6yL+37DMnFNGj6tPlqLpyqAqmYvwrkCAzDF
dWxHXOv12hi9ey7DyLBuqQd6pBIZYq7zh7JVLAhb7UBvb8UBXwGzEJT8ibR6XM5rCxo8Dc5zPno7
6gKyWQRHoDu7XJXu1yyjtIx3wrZLDvLOlobufcfi9kVel9e3okJOcVnXamNOpWPC9EoOFaQW8A0U
8mh/s2/zTkVV9kBUYyEfocqKCywQ+4WHTvauKAJSg47QAIyj1Z1v6gZcnPp8yy6akcgL2bQddF9G
yOPvuvUydLVziFuMd6bEJd7UnA5ZxQiid9LUf0rdrbLqSNghxK10ZM7sX5KSqyjwkrC9yQDd3hrK
5hHLhNyLJy0ujV+bJivI18O3nGMB1lSo10N2guBfXqtOBScFnspxgRWonuW9yf+akizclQDHIUfI
f0Fd4vFhhLkD+Yjr4JUO3VkgiMZLge0Tw9nc17/40czlqKdwx5RsT57hqrQrbi8GVFDu4fR3ds8W
nuG8/6bdwQ8lS4iTVTmR5weaHEtjX63CkJPOzBYtuaZUlPYSVq2cx/FP72LxVwMo9nOp7VCUGemV
kXZUH+LXhPNCQLJiEoiz4SKc1AIDDeMMo3WAhMAmLkjRRZzWWCxUQqQvatDZiJK1Mz9kyewM9ukQ
K0nQbBiLVfkH+0Pv4ODz6Lk5fjUrd6f1BSVlM30NYa9fr0uVMgx1M4VK3OVq7+KPazjPRWjynnlj
up7f5gcsVC2H4zW2PfirSkF7wdjb0k4PlpexwEumVmFA8ak9f0l6bwZs2ZNXzQgA0TWJPj25jhm1
ZOpmNX9CfMw3V1rI+2RjHn/YRXw5IyQ5Bso1LpeBKoUhS0hHzmZltacTZrepQeBfF6w6vlUKpVbV
aCWUQI5HLqIaaBq0uI/RxOKubd3zcHwgK5XREWdBOgi54b+iUnDJQmXnV/eBV3IiTRlrln/fpm8=
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
