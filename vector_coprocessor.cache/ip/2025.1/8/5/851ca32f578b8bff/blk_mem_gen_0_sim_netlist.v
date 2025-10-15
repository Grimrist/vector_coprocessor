// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Oct 14 20:53:09 2025
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 29520)
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
