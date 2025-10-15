// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Oct 14 20:53:09 2025
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29200)
`pragma protect data_block
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
MlZooAhoKDF8I4oPMHA6ug==
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
