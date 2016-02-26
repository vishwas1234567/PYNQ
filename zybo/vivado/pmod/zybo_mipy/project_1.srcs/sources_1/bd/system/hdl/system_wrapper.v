//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.3 (lin64) Build 1368829 Mon Sep 28 20:06:39 MDT 2015
//Date        : Wed Jan  6 13:36:09 2016
//Host        : xsjpsgv106 running 64-bit Red Hat Enterprise Linux Client release 5.9 (Tikanga)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    Vaux14_v_n,
    Vaux14_v_p,
    Vaux15_v_n,
    Vaux15_v_p,
    Vaux6_v_n,
    Vaux6_v_p,
    Vaux7_v_n,
    Vaux7_v_p,
    Vp_Vn_v_n,
    Vp_Vn_v_p,
    btns_4bits_tri_i,
    leds_4bits_tri_o,
    pmodJB_data_in,
    pmodJB_data_out,
    pmodJB_tri_out,
    pmodJC_data_in,
    pmodJC_data_out,
    pmodJC_tri_out,
    pmodJD_data_in,
    pmodJD_data_out,
    pmodJD_tri_out,
    pmodJE_data_in,
    pmodJE_data_out,
    pmodJE_tri_out,
    sws_4bits_tri_i);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input Vaux14_v_n;
  input Vaux14_v_p;
  input Vaux15_v_n;
  input Vaux15_v_p;
  input Vaux6_v_n;
  input Vaux6_v_p;
  input Vaux7_v_n;
  input Vaux7_v_p;
  input Vp_Vn_v_n;
  input Vp_Vn_v_p;
  input [3:0]btns_4bits_tri_i;
  output [3:0]leds_4bits_tri_o;
  input [7:0]pmodJB_data_in;
  output [7:0]pmodJB_data_out;
  output [7:0]pmodJB_tri_out;
  input [7:0]pmodJC_data_in;
  output [7:0]pmodJC_data_out;
  output [7:0]pmodJC_tri_out;
  input [7:0]pmodJD_data_in;
  output [7:0]pmodJD_data_out;
  output [7:0]pmodJD_tri_out;
  input [7:0]pmodJE_data_in;
  output [7:0]pmodJE_data_out;
  output [7:0]pmodJE_tri_out;
  input [3:0]sws_4bits_tri_i;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire Vaux14_v_n;
  wire Vaux14_v_p;
  wire Vaux15_v_n;
  wire Vaux15_v_p;
  wire Vaux6_v_n;
  wire Vaux6_v_p;
  wire Vaux7_v_n;
  wire Vaux7_v_p;
  wire Vp_Vn_v_n;
  wire Vp_Vn_v_p;
  wire [3:0]btns_4bits_tri_i;
  wire [3:0]leds_4bits_tri_o;
  wire [7:0]pmodJB_data_in;
  wire [7:0]pmodJB_data_out;
  wire [7:0]pmodJB_tri_out;
  wire [7:0]pmodJC_data_in;
  wire [7:0]pmodJC_data_out;
  wire [7:0]pmodJC_tri_out;
  wire [7:0]pmodJD_data_in;
  wire [7:0]pmodJD_data_out;
  wire [7:0]pmodJD_tri_out;
  wire [7:0]pmodJE_data_in;
  wire [7:0]pmodJE_data_out;
  wire [7:0]pmodJE_tri_out;
  wire [3:0]sws_4bits_tri_i;

  system system_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .Vaux14_v_n(Vaux14_v_n),
        .Vaux14_v_p(Vaux14_v_p),
        .Vaux15_v_n(Vaux15_v_n),
        .Vaux15_v_p(Vaux15_v_p),
        .Vaux6_v_n(Vaux6_v_n),
        .Vaux6_v_p(Vaux6_v_p),
        .Vaux7_v_n(Vaux7_v_n),
        .Vaux7_v_p(Vaux7_v_p),
        .Vp_Vn_v_n(Vp_Vn_v_n),
        .Vp_Vn_v_p(Vp_Vn_v_p),
        .btns_4bits_tri_i(btns_4bits_tri_i),
        .leds_4bits_tri_o(leds_4bits_tri_o),
        .pmodJB_data_in(pmodJB_data_in),
        .pmodJB_data_out(pmodJB_data_out),
        .pmodJB_tri_out(pmodJB_tri_out),
        .pmodJC_data_in(pmodJC_data_in),
        .pmodJC_data_out(pmodJC_data_out),
        .pmodJC_tri_out(pmodJC_tri_out),
        .pmodJD_data_in(pmodJD_data_in),
        .pmodJD_data_out(pmodJD_data_out),
        .pmodJD_tri_out(pmodJD_tri_out),
        .pmodJE_data_in(pmodJE_data_in),
        .pmodJE_data_out(pmodJE_data_out),
        .pmodJE_tri_out(pmodJE_tri_out),
        .sws_4bits_tri_i(sws_4bits_tri_i));
endmodule