// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Sat Sep 27 14:15:14 2025
// Host        : valkyrie running 64-bit Arch Linux
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21712)
`pragma protect data_block
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
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
