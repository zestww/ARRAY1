//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue Sep  6 01:03:38 2022
//Host        : DESKTOP-G8Q6RC9 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (c0_init_calib_complete,
    ddr4_sdram_062_act_n,
    ddr4_sdram_062_adr,
    ddr4_sdram_062_ba,
    ddr4_sdram_062_bg,
    ddr4_sdram_062_ck_c,
    ddr4_sdram_062_ck_t,
    ddr4_sdram_062_cke,
    ddr4_sdram_062_cs_n,
    ddr4_sdram_062_dm_n,
    ddr4_sdram_062_dq,
    ddr4_sdram_062_dqs_c,
    ddr4_sdram_062_dqs_t,
    ddr4_sdram_062_odt,
    ddr4_sdram_062_reset_n,
    din,
    reset,
    rst_n,
    ui_clk,
    user_si570_sysclk_clk_n,
    user_si570_sysclk_clk_p,
    wr_en);
  output c0_init_calib_complete;
  output ddr4_sdram_062_act_n;
  output [16:0]ddr4_sdram_062_adr;
  output [1:0]ddr4_sdram_062_ba;
  output ddr4_sdram_062_bg;
  output ddr4_sdram_062_ck_c;
  output ddr4_sdram_062_ck_t;
  output ddr4_sdram_062_cke;
  output ddr4_sdram_062_cs_n;
  inout [1:0]ddr4_sdram_062_dm_n;
  inout [15:0]ddr4_sdram_062_dq;
  inout [1:0]ddr4_sdram_062_dqs_c;
  inout [1:0]ddr4_sdram_062_dqs_t;
  output ddr4_sdram_062_odt;
  output ddr4_sdram_062_reset_n;
  input [127:0]din;
  input reset;
  input rst_n;
  output ui_clk;
  input user_si570_sysclk_clk_n;
  input user_si570_sysclk_clk_p;
  input wr_en;

  wire c0_init_calib_complete;
  wire ddr4_sdram_062_act_n;
  wire [16:0]ddr4_sdram_062_adr;
  wire [1:0]ddr4_sdram_062_ba;
  wire ddr4_sdram_062_bg;
  wire ddr4_sdram_062_ck_c;
  wire ddr4_sdram_062_ck_t;
  wire ddr4_sdram_062_cke;
  wire ddr4_sdram_062_cs_n;
  wire [1:0]ddr4_sdram_062_dm_n;
  wire [15:0]ddr4_sdram_062_dq;
  wire [1:0]ddr4_sdram_062_dqs_c;
  wire [1:0]ddr4_sdram_062_dqs_t;
  wire ddr4_sdram_062_odt;
  wire ddr4_sdram_062_reset_n;
  wire [127:0]din;
  wire reset;
  wire rst_n;
  wire ui_clk;
  wire user_si570_sysclk_clk_n;
  wire user_si570_sysclk_clk_p;
  wire wr_en;

  design_1 design_1_i
       (.c0_init_calib_complete(c0_init_calib_complete),
        .ddr4_sdram_062_act_n(ddr4_sdram_062_act_n),
        .ddr4_sdram_062_adr(ddr4_sdram_062_adr),
        .ddr4_sdram_062_ba(ddr4_sdram_062_ba),
        .ddr4_sdram_062_bg(ddr4_sdram_062_bg),
        .ddr4_sdram_062_ck_c(ddr4_sdram_062_ck_c),
        .ddr4_sdram_062_ck_t(ddr4_sdram_062_ck_t),
        .ddr4_sdram_062_cke(ddr4_sdram_062_cke),
        .ddr4_sdram_062_cs_n(ddr4_sdram_062_cs_n),
        .ddr4_sdram_062_dm_n(ddr4_sdram_062_dm_n),
        .ddr4_sdram_062_dq(ddr4_sdram_062_dq),
        .ddr4_sdram_062_dqs_c(ddr4_sdram_062_dqs_c),
        .ddr4_sdram_062_dqs_t(ddr4_sdram_062_dqs_t),
        .ddr4_sdram_062_odt(ddr4_sdram_062_odt),
        .ddr4_sdram_062_reset_n(ddr4_sdram_062_reset_n),
        .din(din),
        .reset(reset),
        .rst_n(rst_n),
        .ui_clk(ui_clk),
        .user_si570_sysclk_clk_n(user_si570_sysclk_clk_n),
        .user_si570_sysclk_clk_p(user_si570_sysclk_clk_p),
        .wr_en(wr_en));
endmodule
