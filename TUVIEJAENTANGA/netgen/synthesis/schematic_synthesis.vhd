--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.36
--  \   \         Application: netgen
--  /   /         Filename: schematic_synthesis.vhd
-- /___/   /\     Timestamp: Sat Apr 18 21:29:14 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm schematic -w -dir netgen/synthesis -ofmt vhdl -sim schematic.ngc schematic_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: schematic.ngc
-- Output file	: E:\Agus\Facultad\Digital 3\dig3\TUVIEJAENTANGA\netgen\synthesis\schematic_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: schematic
-- Xilinx	: E:\Program Files (x86)\Xinlix
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity schematic is
  port (
    DEN : in STD_LOGIC := 'X'; 
    CLK : in STD_LOGIC := 'X'; 
    LowR : out STD_LOGIC; 
    LowW : out STD_LOGIC; 
    ClkMicro : out STD_LOGIC; 
    ReadyIN : in STD_LOGIC := 'X'; 
    Reset : in STD_LOGIC := 'X'; 
    ReadyMicro : out STD_LOGIC; 
    MIO : in STD_LOGIC := 'X'; 
    DTR : in STD_LOGIC := 'X'; 
    RD : in STD_LOGIC := 'X'; 
    ResetMicro : out STD_LOGIC; 
    WR : in STD_LOGIC := 'X'; 
    Ale : in STD_LOGIC := 'X'; 
    BHE : in STD_LOGIC := 'X'; 
    INTA : in STD_LOGIC := 'X'; 
    HighR : out STD_LOGIC; 
    HighW : out STD_LOGIC; 
    INTR : out STD_LOGIC; 
    ADl : inout STD_LOGIC_VECTOR ( 15 downto 0 ); 
    Puertos : inout STD_LOGIC_VECTOR ( 15 downto 0 ); 
    CHIPs : out STD_LOGIC_VECTOR ( 2 downto 0 ); 
    ADComp : out STD_LOGIC_VECTOR ( 19 downto 0 ); 
    IRQ : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    ADh : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end schematic;

architecture Structure of schematic is
  signal DEN_IBUF_0 : STD_LOGIC; 
  signal CLK_BUFGP_1 : STD_LOGIC; 
  signal LowR_OBUF_2 : STD_LOGIC; 
  signal LowW_OBUF_3 : STD_LOGIC; 
  signal ClkMicro_OBUF_4 : STD_LOGIC; 
  signal ReadyIN_IBUF_5 : STD_LOGIC; 
  signal XLXI_6_readyf_6 : STD_LOGIC; 
  signal MIO_IBUF_7 : STD_LOGIC; 
  signal DTR_IBUF_8 : STD_LOGIC; 
  signal RD_IBUF_9 : STD_LOGIC; 
  signal WR_IBUF_10 : STD_LOGIC; 
  signal Ale_BUFGP_11 : STD_LOGIC; 
  signal BHE_IBUF_12 : STD_LOGIC; 
  signal INTA_IBUF_13 : STD_LOGIC; 
  signal HighR_OBUF_14 : STD_LOGIC; 
  signal HighW_OBUF_15 : STD_LOGIC; 
  signal XLXI_15_BHEL_16 : STD_LOGIC; 
  signal CHIPs_2_OBUF_17 : STD_LOGIC; 
  signal CHIPs_1_OBUF_18 : STD_LOGIC; 
  signal CHIPs_0_OBUF_19 : STD_LOGIC; 
  signal IRQ_7_IBUF_20 : STD_LOGIC; 
  signal IRQ_6_IBUF_21 : STD_LOGIC; 
  signal IRQ_5_IBUF_22 : STD_LOGIC; 
  signal IRQ_4_IBUF_23 : STD_LOGIC; 
  signal IRQ_3_IBUF_24 : STD_LOGIC; 
  signal IRQ_2_IBUF_25 : STD_LOGIC; 
  signal IRQ_1_IBUF_26 : STD_LOGIC; 
  signal IRQ_0_IBUF_27 : STD_LOGIC; 
  signal ADh_3_IBUF_28 : STD_LOGIC; 
  signal ADh_2_IBUF_29 : STD_LOGIC; 
  signal ADh_1_IBUF_30 : STD_LOGIC; 
  signal ADh_0_IBUF_31 : STD_LOGIC; 
  signal INTR_OBUF_32 : STD_LOGIC; 
  signal ResetMicro_OBUF_33 : STD_LOGIC; 
  signal XLXI_6_IOReady_inv : STD_LOGIC; 
  signal XLXI_3_Reg_0_0_not0000 : STD_LOGIC; 
  signal XLXI_3_Reg_and0000 : STD_LOGIC; 
  signal XLXI_2_Datout_and0000_inv : STD_LOGIC; 
  signal XLXI_2_Datin_and0000_inv : STD_LOGIC; 
  signal XLXI_14_IRQE_0_0_not0000 : STD_LOGIC; 
  signal XLXI_14_IRQE_not0001 : STD_LOGIC; 
  signal Puertos_7_MLTSRCEDGE : STD_LOGIC; 
  signal Puertos_6_MLTSRCEDGE : STD_LOGIC; 
  signal Puertos_5_MLTSRCEDGE : STD_LOGIC; 
  signal Puertos_4_MLTSRCEDGE : STD_LOGIC; 
  signal Puertos_3_MLTSRCEDGE : STD_LOGIC; 
  signal Puertos_2_MLTSRCEDGE : STD_LOGIC; 
  signal Puertos_1_MLTSRCEDGE : STD_LOGIC; 
  signal Puertos_0_MLTSRCEDGE : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal XLXI_14_CS_and0000 : STD_LOGIC; 
  signal XLXI_14_Data_not0001_inv : STD_LOGIC; 
  signal Puertos_1_MLTSRCEDGELogicTrst_map1 : STD_LOGIC; 
  signal Puertos_1_MLTSRCEDGELogicTrst_map9 : STD_LOGIC; 
  signal Puertos_1_MLTSRCEDGELogicTrst_map11 : STD_LOGIC; 
  signal Puertos_2_MLTSRCEDGELogicTrst_map1 : STD_LOGIC; 
  signal Puertos_2_MLTSRCEDGELogicTrst_map3 : STD_LOGIC; 
  signal Puertos_2_MLTSRCEDGELogicTrst_map8 : STD_LOGIC; 
  signal Puertos_4_MLTSRCEDGELogicTrst_map1 : STD_LOGIC; 
  signal Puertos_4_MLTSRCEDGELogicTrst_map8 : STD_LOGIC; 
  signal Puertos_4_MLTSRCEDGELogicTrst_map10 : STD_LOGIC; 
  signal Puertos_3_MLTSRCEDGELogicTrst_map1 : STD_LOGIC; 
  signal Puertos_3_MLTSRCEDGELogicTrst_map4 : STD_LOGIC; 
  signal Puertos_3_MLTSRCEDGELogicTrst_map9 : STD_LOGIC; 
  signal Puertos_0_MLTSRCEDGELogicTrst_map2 : STD_LOGIC; 
  signal Puertos_0_MLTSRCEDGELogicTrst_map5 : STD_LOGIC; 
  signal Puertos_0_MLTSRCEDGELogicTrst_map8 : STD_LOGIC; 
  signal Puertos_6_MLTSRCEDGELogicTrst_map2 : STD_LOGIC; 
  signal Puertos_6_MLTSRCEDGELogicTrst_map7 : STD_LOGIC; 
  signal Puertos_6_MLTSRCEDGELogicTrst_map10 : STD_LOGIC; 
  signal Puertos_5_MLTSRCEDGELogicTrst_map2 : STD_LOGIC; 
  signal Puertos_5_MLTSRCEDGELogicTrst_map3 : STD_LOGIC; 
  signal Puertos_5_MLTSRCEDGELogicTrst_map9 : STD_LOGIC; 
  signal Puertos_7_MLTSRCEDGELogicTrst_map2 : STD_LOGIC; 
  signal Puertos_7_MLTSRCEDGELogicTrst_map10 : STD_LOGIC; 
  signal Puertos_7_MLTSRCEDGELogicTrst_map11 : STD_LOGIC; 
  signal Puertos_7_MLTSRCEDGELogicTrst_map14 : STD_LOGIC; 
  signal Puertos_15_IOBUF_34 : STD_LOGIC; 
  signal Puertos_14_IOBUF_35 : STD_LOGIC; 
  signal Puertos_13_IOBUF_36 : STD_LOGIC; 
  signal Puertos_12_IOBUF_37 : STD_LOGIC; 
  signal Puertos_11_IOBUF_38 : STD_LOGIC; 
  signal Puertos_10_IOBUF_39 : STD_LOGIC; 
  signal Puertos_9_IOBUF_40 : STD_LOGIC; 
  signal Puertos_8_IOBUF_41 : STD_LOGIC; 
  signal N270 : STD_LOGIC; 
  signal N271 : STD_LOGIC; 
  signal N272 : STD_LOGIC; 
  signal N273 : STD_LOGIC; 
  signal N274 : STD_LOGIC; 
  signal N275 : STD_LOGIC; 
  signal N276 : STD_LOGIC; 
  signal N277 : STD_LOGIC; 
  signal ADl_15_IOBUF_42 : STD_LOGIC; 
  signal ADl_14_IOBUF_43 : STD_LOGIC; 
  signal ADl_13_IOBUF_44 : STD_LOGIC; 
  signal ADl_12_IOBUF_45 : STD_LOGIC; 
  signal ADl_11_IOBUF_46 : STD_LOGIC; 
  signal ADl_10_IOBUF_47 : STD_LOGIC; 
  signal ADl_9_IOBUF_48 : STD_LOGIC; 
  signal ADl_8_IOBUF_49 : STD_LOGIC; 
  signal ADl_7_IOBUF_50 : STD_LOGIC; 
  signal ADl_6_IOBUF_51 : STD_LOGIC; 
  signal ADl_5_IOBUF_52 : STD_LOGIC; 
  signal ADl_4_IOBUF_53 : STD_LOGIC; 
  signal ADl_3_IOBUF_54 : STD_LOGIC; 
  signal ADl_2_IOBUF_55 : STD_LOGIC; 
  signal ADl_1_IOBUF_56 : STD_LOGIC; 
  signal ADl_0_IOBUF_57 : STD_LOGIC; 
  signal N326 : STD_LOGIC; 
  signal N328 : STD_LOGIC; 
  signal N330 : STD_LOGIC; 
  signal N331 : STD_LOGIC; 
  signal N333 : STD_LOGIC; 
  signal N334 : STD_LOGIC; 
  signal N335 : STD_LOGIC; 
  signal N336 : STD_LOGIC; 
  signal N337 : STD_LOGIC; 
  signal N338 : STD_LOGIC; 
  signal XLXI_1_S_19_1_58 : STD_LOGIC; 
  signal XLXI_1_S_18_1_59 : STD_LOGIC; 
  signal XLXI_1_S_15_1_60 : STD_LOGIC; 
  signal XLXI_1_S_14_1_61 : STD_LOGIC; 
  signal XLXI_1_S_0_1_62 : STD_LOGIC; 
  signal XLXI_1_S : STD_LOGIC_VECTOR ( 19 downto 0 ); 
  signal XLXI_6_Count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal XLXI_3_Reg : STD_LOGIC_VECTOR ( 5 downto 3 ); 
  signal XLXI_3_ent : STD_LOGIC_VECTOR ( 5 downto 3 ); 
  signal XLXI_14_IRQE : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => INTR_OBUF_32
    );
  XST_VCC : VCC
    port map (
      P => ResetMicro_OBUF_33
    );
  XLXI_6_Count_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_1,
      D => XLXI_6_Count(1),
      Q => XLXI_6_Count(2)
    );
  XLXI_6_Count_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_1,
      D => XLXI_6_Count(0),
      Q => XLXI_6_Count(1)
    );
  XLXI_6_Count_0 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => CLK_BUFGP_1,
      D => XLXI_6_Count(2),
      Q => XLXI_6_Count(0)
    );
  XLXI_6_readyf : FDR
    port map (
      C => CLK_BUFGP_1,
      D => ResetMicro_OBUF_33,
      R => XLXI_6_IOReady_inv,
      Q => XLXI_6_readyf_6
    );
  XLXI_15_BHEL : LD
    port map (
      D => BHE_IBUF_12,
      G => Ale_BUFGP_11,
      Q => XLXI_15_BHEL_16
    );
  XLXI_3_Reg_5 : LDE
    port map (
      D => XLXI_3_ent(5),
      G => XLXI_3_Reg_and0000,
      GE => XLXI_3_Reg_0_0_not0000,
      Q => XLXI_3_Reg(5)
    );
  XLXI_3_Reg_4 : LDE
    port map (
      D => XLXI_3_ent(4),
      G => XLXI_3_Reg_and0000,
      GE => XLXI_3_Reg_0_0_not0000,
      Q => XLXI_3_Reg(4)
    );
  XLXI_3_Reg_3 : LDE
    port map (
      D => XLXI_3_ent(3),
      G => XLXI_3_Reg_and0000,
      GE => XLXI_3_Reg_0_0_not0000,
      Q => XLXI_3_Reg(3)
    );
  XLXI_4 : OR2
    port map (
      I0 => WR_IBUF_10,
      I1 => XLXI_15_BHEL_16,
      O => HighW_OBUF_15
    );
  XLXI_5 : OR2
    port map (
      I0 => XLXI_1_S(0),
      I1 => WR_IBUF_10,
      O => LowW_OBUF_3
    );
  XLXI_16 : OR2
    port map (
      I0 => RD_IBUF_9,
      I1 => XLXI_15_BHEL_16,
      O => HighR_OBUF_14
    );
  XLXI_17 : OR2
    port map (
      I0 => XLXI_1_S(0),
      I1 => RD_IBUF_9,
      O => LowR_OBUF_2
    );
  XLXI_1_S_0 : LD
    port map (
      D => N277,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(0)
    );
  XLXI_1_S_1 : LD
    port map (
      D => N276,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(1)
    );
  XLXI_1_S_2 : LD
    port map (
      D => N275,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(2)
    );
  XLXI_1_S_3 : LD
    port map (
      D => N274,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(3)
    );
  XLXI_1_S_4 : LD
    port map (
      D => N273,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(4)
    );
  XLXI_1_S_5 : LD
    port map (
      D => N272,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(5)
    );
  XLXI_1_S_6 : LD
    port map (
      D => N271,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(6)
    );
  XLXI_1_S_7 : LD
    port map (
      D => N270,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(7)
    );
  XLXI_1_S_8 : LD
    port map (
      D => Puertos_8_IOBUF_41,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(8)
    );
  XLXI_1_S_9 : LD
    port map (
      D => Puertos_9_IOBUF_40,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(9)
    );
  XLXI_1_S_10 : LD
    port map (
      D => Puertos_10_IOBUF_39,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(10)
    );
  XLXI_1_S_11 : LD
    port map (
      D => Puertos_11_IOBUF_38,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(11)
    );
  XLXI_1_S_12 : LD
    port map (
      D => Puertos_12_IOBUF_37,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(12)
    );
  XLXI_1_S_13 : LD
    port map (
      D => Puertos_13_IOBUF_36,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(13)
    );
  XLXI_1_S_14 : LD
    port map (
      D => Puertos_14_IOBUF_35,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(14)
    );
  XLXI_1_S_15 : LD
    port map (
      D => Puertos_15_IOBUF_34,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(15)
    );
  XLXI_1_S_16 : LD
    port map (
      D => ADh_0_IBUF_31,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(16)
    );
  XLXI_1_S_17 : LD
    port map (
      D => ADh_1_IBUF_30,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(17)
    );
  XLXI_1_S_18 : LD
    port map (
      D => ADh_2_IBUF_29,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(18)
    );
  XLXI_1_S_19 : LD
    port map (
      D => ADh_3_IBUF_28,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S(19)
    );
  XLXI_14_IRQE_7 : LDCE_1
    port map (
      CLR => ResetMicro_OBUF_33,
      D => ADl_7_IOBUF_50,
      G => XLXI_14_IRQE_not0001,
      GE => XLXI_14_IRQE_0_0_not0000,
      Q => XLXI_14_IRQE(7)
    );
  XLXI_14_IRQE_6 : LDCE_1
    port map (
      CLR => ResetMicro_OBUF_33,
      D => ADl_6_IOBUF_51,
      G => XLXI_14_IRQE_not0001,
      GE => XLXI_14_IRQE_0_0_not0000,
      Q => XLXI_14_IRQE(6)
    );
  XLXI_14_IRQE_5 : LDCE_1
    port map (
      CLR => ResetMicro_OBUF_33,
      D => ADl_5_IOBUF_52,
      G => XLXI_14_IRQE_not0001,
      GE => XLXI_14_IRQE_0_0_not0000,
      Q => XLXI_14_IRQE(5)
    );
  XLXI_14_IRQE_4 : LDCE_1
    port map (
      CLR => ResetMicro_OBUF_33,
      D => ADl_4_IOBUF_53,
      G => XLXI_14_IRQE_not0001,
      GE => XLXI_14_IRQE_0_0_not0000,
      Q => XLXI_14_IRQE(4)
    );
  XLXI_14_IRQE_3 : LDCE_1
    port map (
      CLR => ResetMicro_OBUF_33,
      D => ADl_3_IOBUF_54,
      G => XLXI_14_IRQE_not0001,
      GE => XLXI_14_IRQE_0_0_not0000,
      Q => XLXI_14_IRQE(3)
    );
  XLXI_14_IRQE_2 : LDCE_1
    port map (
      CLR => ResetMicro_OBUF_33,
      D => ADl_2_IOBUF_55,
      G => XLXI_14_IRQE_not0001,
      GE => XLXI_14_IRQE_0_0_not0000,
      Q => XLXI_14_IRQE(2)
    );
  XLXI_14_IRQE_1 : LDCE_1
    port map (
      CLR => ResetMicro_OBUF_33,
      D => ADl_1_IOBUF_56,
      G => XLXI_14_IRQE_not0001,
      GE => XLXI_14_IRQE_0_0_not0000,
      Q => XLXI_14_IRQE(1)
    );
  XLXI_14_IRQE_0 : LDCE_1
    port map (
      CLR => ResetMicro_OBUF_33,
      D => ADl_0_IOBUF_57,
      G => XLXI_14_IRQE_not0001,
      GE => XLXI_14_IRQE_0_0_not0000,
      Q => XLXI_14_IRQE(0)
    );
  XLXI_2_Datout_and0000_inv1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => DEN_IBUF_0,
      I1 => DTR_IBUF_8,
      O => XLXI_2_Datout_and0000_inv
    );
  XLXI_2_Datin_and0000_inv1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => DTR_IBUF_8,
      I1 => DEN_IBUF_0,
      O => XLXI_2_Datin_and0000_inv
    );
  XLXI_6_Mclk_cmp_eq00001 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => XLXI_6_Count(2),
      I1 => XLXI_6_Count(1),
      I2 => XLXI_6_Count(0),
      O => ClkMicro_OBUF_4
    );
  XLXI_3_S_cmp_eq00001 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => XLXI_3_Reg(3),
      I1 => XLXI_3_Reg(5),
      I2 => XLXI_3_Reg(4),
      O => CHIPs_0_OBUF_19
    );
  XLXI_3_S_2_1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => XLXI_3_Reg(5),
      I1 => XLXI_3_Reg(4),
      I2 => XLXI_3_Reg(3),
      O => CHIPs_2_OBUF_17
    );
  XLXI_3_S_1_1 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => XLXI_3_Reg(4),
      I1 => XLXI_3_Reg(5),
      I2 => XLXI_3_Reg(3),
      O => CHIPs_1_OBUF_18
    );
  XLXI_3_Reg_and00001 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => MIO_IBUF_7,
      I1 => XLXI_1_S(19),
      I2 => XLXI_1_S(18),
      O => XLXI_3_Reg_and0000
    );
  XLXI_3_ent_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_1_S(0),
      I1 => N272,
      I2 => Puertos_13_IOBUF_36,
      O => XLXI_3_ent(5)
    );
  XLXI_3_ent_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_1_S(0),
      I1 => N273,
      I2 => Puertos_12_IOBUF_37,
      O => XLXI_3_ent(4)
    );
  XLXI_3_ent_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => XLXI_1_S(0),
      I1 => N274,
      I2 => Puertos_11_IOBUF_38,
      O => XLXI_3_ent(3)
    );
  Puertos_1_MLTSRCEDGELogicTrst2 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => N276,
      I1 => XLXI_2_Datout_and0000_inv,
      O => Puertos_1_MLTSRCEDGELogicTrst_map1
    );
  Puertos_1_MLTSRCEDGELogicTrst26 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_14_IRQE(1),
      I1 => XLXI_14_Data_not0001_inv,
      O => Puertos_1_MLTSRCEDGELogicTrst_map11
    );
  Puertos_1_MLTSRCEDGELogicTrst38 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => N111,
      I1 => Puertos_1_MLTSRCEDGELogicTrst_map9,
      I2 => Puertos_1_MLTSRCEDGELogicTrst_map11,
      I3 => Puertos_1_MLTSRCEDGELogicTrst_map1,
      O => Puertos_1_MLTSRCEDGE
    );
  Puertos_2_MLTSRCEDGELogicTrst2 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => N275,
      I1 => XLXI_2_Datout_and0000_inv,
      O => Puertos_2_MLTSRCEDGELogicTrst_map1
    );
  Puertos_2_MLTSRCEDGELogicTrst5 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => IRQ_2_IBUF_25,
      I1 => N10,
      I2 => Puertos_0_MLTSRCEDGELogicTrst_map5,
      O => Puertos_2_MLTSRCEDGELogicTrst_map3
    );
  Puertos_2_MLTSRCEDGELogicTrst40 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => N111,
      I1 => Puertos_2_MLTSRCEDGELogicTrst_map3,
      I2 => Puertos_2_MLTSRCEDGELogicTrst_map8,
      I3 => Puertos_2_MLTSRCEDGELogicTrst_map1,
      O => Puertos_2_MLTSRCEDGE
    );
  XLXI_14_CS_and00001 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_1_S(14),
      I1 => XLXI_1_S(15),
      O => XLXI_14_CS_and0000
    );
  XLXI_14_Data_mux0000_7_21 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => INTA_IBUF_13,
      I1 => RD_IBUF_9,
      I2 => XLXI_14_CS_and0000,
      I3 => XLXI_1_S(0),
      O => Puertos_0_MLTSRCEDGELogicTrst_map5
    );
  Puertos_4_MLTSRCEDGELogicTrst2 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => N273,
      I1 => XLXI_2_Datout_and0000_inv,
      O => Puertos_4_MLTSRCEDGELogicTrst_map1
    );
  Puertos_4_MLTSRCEDGELogicTrst24 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_14_IRQE(4),
      I1 => XLXI_14_Data_not0001_inv,
      O => Puertos_4_MLTSRCEDGELogicTrst_map10
    );
  Puertos_4_MLTSRCEDGELogicTrst35 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => N111,
      I1 => Puertos_4_MLTSRCEDGELogicTrst_map8,
      I2 => Puertos_4_MLTSRCEDGELogicTrst_map10,
      I3 => Puertos_4_MLTSRCEDGELogicTrst_map1,
      O => Puertos_4_MLTSRCEDGE
    );
  Puertos_3_MLTSRCEDGELogicTrst2 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => N274,
      I1 => XLXI_2_Datout_and0000_inv,
      O => Puertos_3_MLTSRCEDGELogicTrst_map1
    );
  Puertos_3_MLTSRCEDGELogicTrst32 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => N111,
      I1 => Puertos_3_MLTSRCEDGELogicTrst_map4,
      I2 => Puertos_3_MLTSRCEDGELogicTrst_map9,
      I3 => Puertos_3_MLTSRCEDGELogicTrst_map1,
      O => Puertos_3_MLTSRCEDGE
    );
  Puertos_0_MLTSRCEDGELogicTrst5 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => N277,
      I1 => XLXI_2_Datout_and0000_inv,
      I2 => N111,
      O => Puertos_0_MLTSRCEDGELogicTrst_map2
    );
  Puertos_0_MLTSRCEDGELogicTrst34 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => Puertos_0_MLTSRCEDGELogicTrst_map5,
      I1 => XLXI_14_IRQE(0),
      I2 => Puertos_0_MLTSRCEDGELogicTrst_map8,
      I3 => Puertos_0_MLTSRCEDGELogicTrst_map2,
      O => Puertos_0_MLTSRCEDGE
    );
  Puertos_6_MLTSRCEDGELogicTrst5 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => N271,
      I1 => XLXI_2_Datout_and0000_inv,
      I2 => N111,
      O => Puertos_6_MLTSRCEDGELogicTrst_map2
    );
  Puertos_6_MLTSRCEDGELogicTrst16 : LUT4
    generic map(
      INIT => X"40C0"
    )
    port map (
      I0 => XLXI_14_IRQE(5),
      I1 => IRQ_6_IBUF_21,
      I2 => N9,
      I3 => IRQ_5_IBUF_22,
      O => Puertos_6_MLTSRCEDGELogicTrst_map7
    );
  Puertos_6_MLTSRCEDGELogicTrst24 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_14_IRQE(6),
      I1 => XLXI_14_Data_not0001_inv,
      O => Puertos_6_MLTSRCEDGELogicTrst_map10
    );
  Puertos_6_MLTSRCEDGELogicTrst35 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => Puertos_0_MLTSRCEDGELogicTrst_map5,
      I1 => Puertos_6_MLTSRCEDGELogicTrst_map10,
      I2 => Puertos_6_MLTSRCEDGELogicTrst_map7,
      I3 => Puertos_6_MLTSRCEDGELogicTrst_map2,
      O => Puertos_6_MLTSRCEDGE
    );
  Puertos_5_MLTSRCEDGELogicTrst5 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => N272,
      I1 => XLXI_2_Datout_and0000_inv,
      I2 => N111,
      O => Puertos_5_MLTSRCEDGELogicTrst_map2
    );
  Puertos_5_MLTSRCEDGELogicTrst6 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => IRQ_5_IBUF_22,
      I1 => N9,
      O => Puertos_5_MLTSRCEDGELogicTrst_map3
    );
  Puertos_5_MLTSRCEDGELogicTrst32 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => Puertos_0_MLTSRCEDGELogicTrst_map5,
      I1 => Puertos_5_MLTSRCEDGELogicTrst_map9,
      I2 => Puertos_5_MLTSRCEDGELogicTrst_map3,
      I3 => Puertos_5_MLTSRCEDGELogicTrst_map2,
      O => Puertos_5_MLTSRCEDGE
    );
  Puertos_7_MLTSRCEDGELogicTrst5 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => N270,
      I1 => XLXI_2_Datout_and0000_inv,
      I2 => N111,
      O => Puertos_7_MLTSRCEDGELogicTrst_map2
    );
  Puertos_7_MLTSRCEDGELogicTrst23 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N9,
      I1 => Puertos_7_MLTSRCEDGELogicTrst_map10,
      O => Puertos_7_MLTSRCEDGELogicTrst_map11
    );
  Puertos_7_MLTSRCEDGELogicTrst40 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => XLXI_14_IRQE(7),
      I1 => XLXI_14_Data_not0001_inv,
      O => Puertos_7_MLTSRCEDGELogicTrst_map14
    );
  Puertos_7_MLTSRCEDGELogicTrst54 : LUT4
    generic map(
      INIT => X"FFC8"
    )
    port map (
      I0 => Puertos_0_MLTSRCEDGELogicTrst_map5,
      I1 => Puertos_7_MLTSRCEDGELogicTrst_map14,
      I2 => Puertos_7_MLTSRCEDGELogicTrst_map11,
      I3 => Puertos_7_MLTSRCEDGELogicTrst_map2,
      O => Puertos_7_MLTSRCEDGE
    );
  DEN_IBUF : IBUF
    port map (
      I => DEN,
      O => DEN_IBUF_0
    );
  ReadyIN_IBUF : IBUF
    port map (
      I => ReadyIN,
      O => ReadyIN_IBUF_5
    );
  MIO_IBUF : IBUF
    port map (
      I => MIO,
      O => MIO_IBUF_7
    );
  DTR_IBUF : IBUF
    port map (
      I => DTR,
      O => DTR_IBUF_8
    );
  RD_IBUF : IBUF
    port map (
      I => RD,
      O => RD_IBUF_9
    );
  WR_IBUF : IBUF
    port map (
      I => WR,
      O => WR_IBUF_10
    );
  BHE_IBUF : IBUF
    port map (
      I => BHE,
      O => BHE_IBUF_12
    );
  INTA_IBUF : IBUF
    port map (
      I => INTA,
      O => INTA_IBUF_13
    );
  IRQ_7_IBUF : IBUF
    port map (
      I => IRQ(7),
      O => IRQ_7_IBUF_20
    );
  IRQ_6_IBUF : IBUF
    port map (
      I => IRQ(6),
      O => IRQ_6_IBUF_21
    );
  IRQ_5_IBUF : IBUF
    port map (
      I => IRQ(5),
      O => IRQ_5_IBUF_22
    );
  IRQ_4_IBUF : IBUF
    port map (
      I => IRQ(4),
      O => IRQ_4_IBUF_23
    );
  IRQ_3_IBUF : IBUF
    port map (
      I => IRQ(3),
      O => IRQ_3_IBUF_24
    );
  IRQ_2_IBUF : IBUF
    port map (
      I => IRQ(2),
      O => IRQ_2_IBUF_25
    );
  IRQ_1_IBUF : IBUF
    port map (
      I => IRQ(1),
      O => IRQ_1_IBUF_26
    );
  IRQ_0_IBUF : IBUF
    port map (
      I => IRQ(0),
      O => IRQ_0_IBUF_27
    );
  ADh_3_IBUF : IBUF
    port map (
      I => ADh(3),
      O => ADh_3_IBUF_28
    );
  ADh_2_IBUF : IBUF
    port map (
      I => ADh(2),
      O => ADh_2_IBUF_29
    );
  ADh_1_IBUF : IBUF
    port map (
      I => ADh(1),
      O => ADh_1_IBUF_30
    );
  ADh_0_IBUF : IBUF
    port map (
      I => ADh(0),
      O => ADh_0_IBUF_31
    );
  ADl_15_IOBUF : IOBUF
    port map (
      I => ADl_15_IOBUF_42,
      T => XLXI_2_Datin_and0000_inv,
      O => Puertos_15_IOBUF_34,
      IO => ADl(15)
    );
  ADl_14_IOBUF : IOBUF
    port map (
      I => ADl_14_IOBUF_43,
      T => XLXI_2_Datin_and0000_inv,
      O => Puertos_14_IOBUF_35,
      IO => ADl(14)
    );
  ADl_13_IOBUF : IOBUF
    port map (
      I => ADl_13_IOBUF_44,
      T => XLXI_2_Datin_and0000_inv,
      O => Puertos_13_IOBUF_36,
      IO => ADl(13)
    );
  ADl_12_IOBUF : IOBUF
    port map (
      I => ADl_12_IOBUF_45,
      T => XLXI_2_Datin_and0000_inv,
      O => Puertos_12_IOBUF_37,
      IO => ADl(12)
    );
  ADl_11_IOBUF : IOBUF
    port map (
      I => ADl_11_IOBUF_46,
      T => XLXI_2_Datin_and0000_inv,
      O => Puertos_11_IOBUF_38,
      IO => ADl(11)
    );
  ADl_10_IOBUF : IOBUF
    port map (
      I => ADl_10_IOBUF_47,
      T => XLXI_2_Datin_and0000_inv,
      O => Puertos_10_IOBUF_39,
      IO => ADl(10)
    );
  ADl_9_IOBUF : IOBUF
    port map (
      I => ADl_9_IOBUF_48,
      T => XLXI_2_Datin_and0000_inv,
      O => Puertos_9_IOBUF_40,
      IO => ADl(9)
    );
  ADl_8_IOBUF : IOBUF
    port map (
      I => ADl_8_IOBUF_49,
      T => XLXI_2_Datin_and0000_inv,
      O => Puertos_8_IOBUF_41,
      IO => ADl(8)
    );
  ADl_7_IOBUF : IOBUF
    port map (
      I => ADl_7_IOBUF_50,
      T => XLXI_2_Datin_and0000_inv,
      O => N270,
      IO => ADl(7)
    );
  ADl_6_IOBUF : IOBUF
    port map (
      I => ADl_6_IOBUF_51,
      T => XLXI_2_Datin_and0000_inv,
      O => N271,
      IO => ADl(6)
    );
  ADl_5_IOBUF : IOBUF
    port map (
      I => ADl_5_IOBUF_52,
      T => XLXI_2_Datin_and0000_inv,
      O => N272,
      IO => ADl(5)
    );
  ADl_4_IOBUF : IOBUF
    port map (
      I => ADl_4_IOBUF_53,
      T => XLXI_2_Datin_and0000_inv,
      O => N273,
      IO => ADl(4)
    );
  ADl_3_IOBUF : IOBUF
    port map (
      I => ADl_3_IOBUF_54,
      T => XLXI_2_Datin_and0000_inv,
      O => N274,
      IO => ADl(3)
    );
  ADl_2_IOBUF : IOBUF
    port map (
      I => ADl_2_IOBUF_55,
      T => XLXI_2_Datin_and0000_inv,
      O => N275,
      IO => ADl(2)
    );
  ADl_1_IOBUF : IOBUF
    port map (
      I => ADl_1_IOBUF_56,
      T => XLXI_2_Datin_and0000_inv,
      O => N276,
      IO => ADl(1)
    );
  ADl_0_IOBUF : IOBUF
    port map (
      I => ADl_0_IOBUF_57,
      T => XLXI_2_Datin_and0000_inv,
      O => N277,
      IO => ADl(0)
    );
  Puertos_15_IOBUF : IOBUF
    port map (
      I => Puertos_15_IOBUF_34,
      T => XLXI_2_Datout_and0000_inv,
      O => ADl_15_IOBUF_42,
      IO => Puertos(15)
    );
  Puertos_14_IOBUF : IOBUF
    port map (
      I => Puertos_14_IOBUF_35,
      T => XLXI_2_Datout_and0000_inv,
      O => ADl_14_IOBUF_43,
      IO => Puertos(14)
    );
  Puertos_13_IOBUF : IOBUF
    port map (
      I => Puertos_13_IOBUF_36,
      T => XLXI_2_Datout_and0000_inv,
      O => ADl_13_IOBUF_44,
      IO => Puertos(13)
    );
  Puertos_12_IOBUF : IOBUF
    port map (
      I => Puertos_12_IOBUF_37,
      T => XLXI_2_Datout_and0000_inv,
      O => ADl_12_IOBUF_45,
      IO => Puertos(12)
    );
  Puertos_11_IOBUF : IOBUF
    port map (
      I => Puertos_11_IOBUF_38,
      T => XLXI_2_Datout_and0000_inv,
      O => ADl_11_IOBUF_46,
      IO => Puertos(11)
    );
  Puertos_10_IOBUF : IOBUF
    port map (
      I => Puertos_10_IOBUF_39,
      T => XLXI_2_Datout_and0000_inv,
      O => ADl_10_IOBUF_47,
      IO => Puertos(10)
    );
  Puertos_9_IOBUF : IOBUF
    port map (
      I => Puertos_9_IOBUF_40,
      T => XLXI_2_Datout_and0000_inv,
      O => ADl_9_IOBUF_48,
      IO => Puertos(9)
    );
  Puertos_8_IOBUF : IOBUF
    port map (
      I => Puertos_8_IOBUF_41,
      T => XLXI_2_Datout_and0000_inv,
      O => ADl_8_IOBUF_49,
      IO => Puertos(8)
    );
  Puertos_7_IOBUF : IOBUF
    port map (
      I => Puertos_7_MLTSRCEDGE,
      T => N111,
      O => ADl_7_IOBUF_50,
      IO => Puertos(7)
    );
  Puertos_6_IOBUF : IOBUF
    port map (
      I => Puertos_6_MLTSRCEDGE,
      T => N111,
      O => ADl_6_IOBUF_51,
      IO => Puertos(6)
    );
  Puertos_5_IOBUF : IOBUF
    port map (
      I => Puertos_5_MLTSRCEDGE,
      T => N111,
      O => ADl_5_IOBUF_52,
      IO => Puertos(5)
    );
  Puertos_4_IOBUF : IOBUF
    port map (
      I => Puertos_4_MLTSRCEDGE,
      T => N111,
      O => ADl_4_IOBUF_53,
      IO => Puertos(4)
    );
  Puertos_3_IOBUF : IOBUF
    port map (
      I => Puertos_3_MLTSRCEDGE,
      T => N111,
      O => ADl_3_IOBUF_54,
      IO => Puertos(3)
    );
  Puertos_2_IOBUF : IOBUF
    port map (
      I => Puertos_2_MLTSRCEDGE,
      T => N111,
      O => ADl_2_IOBUF_55,
      IO => Puertos(2)
    );
  Puertos_1_IOBUF : IOBUF
    port map (
      I => Puertos_1_MLTSRCEDGE,
      T => N111,
      O => ADl_1_IOBUF_56,
      IO => Puertos(1)
    );
  Puertos_0_IOBUF : IOBUF
    port map (
      I => Puertos_0_MLTSRCEDGE,
      T => N111,
      O => ADl_0_IOBUF_57,
      IO => Puertos(0)
    );
  LowR_OBUF : OBUF
    port map (
      I => LowR_OBUF_2,
      O => LowR
    );
  LowW_OBUF : OBUF
    port map (
      I => LowW_OBUF_3,
      O => LowW
    );
  ClkMicro_OBUF : OBUF
    port map (
      I => ClkMicro_OBUF_4,
      O => ClkMicro
    );
  ReadyMicro_OBUF : OBUF
    port map (
      I => XLXI_6_readyf_6,
      O => ReadyMicro
    );
  ResetMicro_OBUF : OBUF
    port map (
      I => ResetMicro_OBUF_33,
      O => ResetMicro
    );
  HighR_OBUF : OBUF
    port map (
      I => HighR_OBUF_14,
      O => HighR
    );
  HighW_OBUF : OBUF
    port map (
      I => HighW_OBUF_15,
      O => HighW
    );
  INTR_OBUF : OBUF
    port map (
      I => INTR_OBUF_32,
      O => INTR
    );
  CHIPs_2_OBUF : OBUF
    port map (
      I => CHIPs_2_OBUF_17,
      O => CHIPs(2)
    );
  CHIPs_1_OBUF : OBUF
    port map (
      I => CHIPs_1_OBUF_18,
      O => CHIPs(1)
    );
  CHIPs_0_OBUF : OBUF
    port map (
      I => CHIPs_0_OBUF_19,
      O => CHIPs(0)
    );
  ADComp_19_OBUF : OBUF
    port map (
      I => XLXI_1_S_19_1_58,
      O => ADComp(19)
    );
  ADComp_18_OBUF : OBUF
    port map (
      I => XLXI_1_S_18_1_59,
      O => ADComp(18)
    );
  ADComp_17_OBUF : OBUF
    port map (
      I => XLXI_1_S(17),
      O => ADComp(17)
    );
  ADComp_16_OBUF : OBUF
    port map (
      I => XLXI_1_S(16),
      O => ADComp(16)
    );
  ADComp_15_OBUF : OBUF
    port map (
      I => XLXI_1_S_15_1_60,
      O => ADComp(15)
    );
  ADComp_14_OBUF : OBUF
    port map (
      I => XLXI_1_S_14_1_61,
      O => ADComp(14)
    );
  ADComp_13_OBUF : OBUF
    port map (
      I => XLXI_1_S(13),
      O => ADComp(13)
    );
  ADComp_12_OBUF : OBUF
    port map (
      I => XLXI_1_S(12),
      O => ADComp(12)
    );
  ADComp_11_OBUF : OBUF
    port map (
      I => XLXI_1_S(11),
      O => ADComp(11)
    );
  ADComp_10_OBUF : OBUF
    port map (
      I => XLXI_1_S(10),
      O => ADComp(10)
    );
  ADComp_9_OBUF : OBUF
    port map (
      I => XLXI_1_S(9),
      O => ADComp(9)
    );
  ADComp_8_OBUF : OBUF
    port map (
      I => XLXI_1_S(8),
      O => ADComp(8)
    );
  ADComp_7_OBUF : OBUF
    port map (
      I => XLXI_1_S(7),
      O => ADComp(7)
    );
  ADComp_6_OBUF : OBUF
    port map (
      I => XLXI_1_S(6),
      O => ADComp(6)
    );
  ADComp_5_OBUF : OBUF
    port map (
      I => XLXI_1_S(5),
      O => ADComp(5)
    );
  ADComp_4_OBUF : OBUF
    port map (
      I => XLXI_1_S(4),
      O => ADComp(4)
    );
  ADComp_3_OBUF : OBUF
    port map (
      I => XLXI_1_S(3),
      O => ADComp(3)
    );
  ADComp_2_OBUF : OBUF
    port map (
      I => XLXI_1_S(2),
      O => ADComp(2)
    );
  ADComp_1_OBUF : OBUF
    port map (
      I => XLXI_1_S(1),
      O => ADComp(1)
    );
  ADComp_0_OBUF : OBUF
    port map (
      I => XLXI_1_S_0_1_62,
      O => ADComp(0)
    );
  Puertos_0_MLTSRCEDGELogicTrst16 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => IRQ_0_IBUF_27,
      I1 => INTA_IBUF_13,
      O => Puertos_0_MLTSRCEDGELogicTrst_map8
    );
  XLXI_14_IRQE_not00011 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => XLXI_1_S(14),
      I1 => WR_IBUF_10,
      I2 => XLXI_1_S(15),
      O => XLXI_14_IRQE_not0001
    );
  Puertos_0_MLTSRCEDGELogicTrst21 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => XLXI_14_Data_not0001_inv,
      I1 => DTR_IBUF_8,
      I2 => DEN_IBUF_0,
      O => N111
    );
  XLXI_14_Data_and00021 : LUT4
    generic map(
      INIT => X"A8AA"
    )
    port map (
      I0 => INTA_IBUF_13,
      I1 => RD_IBUF_9,
      I2 => XLXI_1_S(15),
      I3 => XLXI_1_S(14),
      O => XLXI_14_Data_not0001_inv
    );
  Puertos_2_MLTSRCEDGELogicTrst17 : LUT4
    generic map(
      INIT => X"22A2"
    )
    port map (
      I0 => XLXI_14_IRQE(2),
      I1 => INTA_IBUF_13,
      I2 => XLXI_14_CS_and0000,
      I3 => RD_IBUF_9,
      O => Puertos_2_MLTSRCEDGELogicTrst_map8
    );
  Puertos_4_MLTSRCEDGELogicTrst18_SW0 : LUT4
    generic map(
      INIT => X"40C0"
    )
    port map (
      I0 => XLXI_14_IRQE(2),
      I1 => N10,
      I2 => IRQ_4_IBUF_23,
      I3 => IRQ_2_IBUF_25,
      O => N326
    );
  Puertos_4_MLTSRCEDGELogicTrst18 : LUT4
    generic map(
      INIT => X"FF4C"
    )
    port map (
      I0 => XLXI_14_IRQE(3),
      I1 => N326,
      I2 => IRQ_3_IBUF_24,
      I3 => Puertos_0_MLTSRCEDGELogicTrst_map5,
      O => Puertos_4_MLTSRCEDGELogicTrst_map8
    );
  Puertos_3_MLTSRCEDGELogicTrst20 : LUT4
    generic map(
      INIT => X"22A2"
    )
    port map (
      I0 => XLXI_14_IRQE(3),
      I1 => INTA_IBUF_13,
      I2 => XLXI_14_CS_and0000,
      I3 => RD_IBUF_9,
      O => Puertos_3_MLTSRCEDGELogicTrst_map9
    );
  XLXI_14_Data_mux0000_7_31_SW1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => XLXI_14_IRQE(3),
      I1 => IRQ_3_IBUF_24,
      I2 => XLXI_14_IRQE(2),
      I3 => IRQ_2_IBUF_25,
      O => N328
    );
  XLXI_14_Data_mux0000_7_31 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => IRQ_4_IBUF_23,
      I1 => N10,
      I2 => N328,
      I3 => XLXI_14_IRQE(4),
      O => N9
    );
  Puertos_5_MLTSRCEDGELogicTrst20 : LUT4
    generic map(
      INIT => X"22A2"
    )
    port map (
      I0 => XLXI_14_IRQE(5),
      I1 => INTA_IBUF_13,
      I2 => XLXI_14_CS_and0000,
      I3 => RD_IBUF_9,
      O => Puertos_5_MLTSRCEDGELogicTrst_map9
    );
  Puertos_1_MLTSRCEDGELogicTrst21 : MUXF5
    port map (
      I0 => N330,
      I1 => N331,
      S => INTA_IBUF_13,
      O => Puertos_1_MLTSRCEDGELogicTrst_map9
    );
  Puertos_1_MLTSRCEDGELogicTrst21_F : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => XLXI_14_IRQE(0),
      I1 => IRQ_1_IBUF_26,
      I2 => IRQ_0_IBUF_27,
      O => N330
    );
  Puertos_1_MLTSRCEDGELogicTrst21_G : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => XLXI_14_CS_and0000,
      I1 => RD_IBUF_9,
      I2 => XLXI_1_S(0),
      O => N331
    );
  Ale_BUFGP : BUFGP
    port map (
      I => Ale,
      O => Ale_BUFGP_11
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_1
    );
  XLXI_6_IOReady_inv1_INV_0 : INV
    port map (
      I => ReadyIN_IBUF_5,
      O => XLXI_6_IOReady_inv
    );
  XLXI_3_Reg_0_0_not00001_INV_0 : INV
    port map (
      I => WR_IBUF_10,
      O => XLXI_3_Reg_0_0_not0000
    );
  XLXI_14_IRQE_0_0_not00001_INV_0 : INV
    port map (
      I => XLXI_1_S(0),
      O => XLXI_14_IRQE_0_0_not0000
    );
  Puertos_3_MLTSRCEDGELogicTrst81 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N10,
      I1 => IRQ_3_IBUF_24,
      I2 => IRQ_2_IBUF_25,
      I3 => Puertos_0_MLTSRCEDGELogicTrst_map5,
      O => N333
    );
  Puertos_3_MLTSRCEDGELogicTrst82 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => IRQ_3_IBUF_24,
      I1 => N10,
      I2 => Puertos_0_MLTSRCEDGELogicTrst_map5,
      O => N334
    );
  Puertos_3_MLTSRCEDGELogicTrst8_f5 : MUXF5
    port map (
      I0 => N334,
      I1 => N333,
      S => XLXI_14_IRQE(2),
      O => Puertos_3_MLTSRCEDGELogicTrst_map4
    );
  XLXI_14_Data_mux0000_2_111 : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => XLXI_14_IRQE(0),
      I1 => IRQ_1_IBUF_26,
      I2 => INTA_IBUF_13,
      I3 => IRQ_0_IBUF_27,
      O => N335
    );
  XLXI_14_Data_mux0000_2_112 : LUT3
    generic map(
      INIT => X"15"
    )
    port map (
      I0 => INTA_IBUF_13,
      I1 => XLXI_14_IRQE(0),
      I2 => IRQ_0_IBUF_27,
      O => N336
    );
  XLXI_14_Data_mux0000_2_11_f5 : MUXF5
    port map (
      I0 => N336,
      I1 => N335,
      S => XLXI_14_IRQE(1),
      O => N10
    );
  Puertos_7_MLTSRCEDGELogicTrst201 : LUT4
    generic map(
      INIT => X"040C"
    )
    port map (
      I0 => XLXI_14_IRQE(5),
      I1 => IRQ_7_IBUF_20,
      I2 => IRQ_6_IBUF_21,
      I3 => IRQ_5_IBUF_22,
      O => N337
    );
  Puertos_7_MLTSRCEDGELogicTrst202 : LUT3
    generic map(
      INIT => X"4C"
    )
    port map (
      I0 => XLXI_14_IRQE(5),
      I1 => IRQ_7_IBUF_20,
      I2 => IRQ_5_IBUF_22,
      O => N338
    );
  Puertos_7_MLTSRCEDGELogicTrst20_f5 : MUXF5
    port map (
      I0 => N338,
      I1 => N337,
      S => XLXI_14_IRQE(6),
      O => Puertos_7_MLTSRCEDGELogicTrst_map10
    );
  XLXI_1_S_19_1 : LD
    port map (
      D => ADh_3_IBUF_28,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S_19_1_58
    );
  XLXI_1_S_18_1 : LD
    port map (
      D => ADh_2_IBUF_29,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S_18_1_59
    );
  XLXI_1_S_15_1 : LD
    port map (
      D => Puertos_15_IOBUF_34,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S_15_1_60
    );
  XLXI_1_S_14_1 : LD
    port map (
      D => Puertos_14_IOBUF_35,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S_14_1_61
    );
  XLXI_1_S_0_1 : LD
    port map (
      D => N277,
      G => Ale_BUFGP_11,
      Q => XLXI_1_S_0_1_62
    );

end Structure;

