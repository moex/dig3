--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : sch2vhdl
--  /   /         Filename : TopModule.vhf
-- /___/   /\     Timestamp : 04/20/2015 10:59:48
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: "E:\Program Files (x86)\Xinlix\bin\nt\sch2vhdl.exe" -intstyle ise -family spartan3e -flat -suppress -w "E:/Agus/Facultad/Digital 3/dig3/TUVIEJAENTANGA/TopModule.sch" TopModule.vhf
--Design Name: TopModule
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity TopModule is
   port ( );
end TopModule;

architecture BEHAVIORAL of TopModule is
   signal XLXN_1                    : std_logic;
   signal XLXN_2                    : std_logic;
   signal XLXN_4                    : std_logic;
   signal XLXN_5                    : std_logic;
   signal XLXN_6                    : std_logic;
   signal XLXN_7                    : std_logic;
   signal XLXN_8                    : std_logic;
   signal XLXN_9                    : std_logic;
   signal XLXN_11                   : std_logic;
   signal XLXN_13                   : std_logic;
   signal XLXN_14                   : std_logic;
   signal XLXN_15                   : std_logic;
   signal XLXN_16                   : std_logic_vector (19 downto 16);
   signal XLXN_17                   : std_logic_vector (15 downto 0);
   signal XLXI_1_CLK_openSignal     : std_logic;
   signal XLXI_1_IRQ_openSignal     : std_logic_vector (7 downto 0);
   signal XLXI_1_ReadyIN_openSignal : std_logic;
   signal XLXI_1_Reset_openSignal   : std_logic;
   signal XLXI_3_A_openSignal       : std_logic_vector (18 downto 0);
   signal XLXI_3_CE_openSignal      : std_logic;
   signal XLXI_3_OE_openSignal      : std_logic;
   signal XLXI_3_WE_openSignal      : std_logic;
   signal XLXI_4_A_openSignal       : std_logic_vector (16 downto 0);
   signal XLXI_4_CS_openSignal      : std_logic;
   signal XLXI_4_OE_openSignal      : std_logic;
   signal XLXI_4_WE_openSignal      : std_logic;
   signal XLXI_5_A_openSignal       : std_logic_vector (16 downto 0);
   signal XLXI_5_CS_openSignal      : std_logic;
   signal XLXI_5_OE_openSignal      : std_logic;
   signal XLXI_5_WE_openSignal      : std_logic;
   signal XLXI_6_A_openSignal       : std_logic_vector (16 downto 0);
   signal XLXI_6_CS_openSignal      : std_logic;
   signal XLXI_6_OE_openSignal      : std_logic;
   signal XLXI_6_WE_openSignal      : std_logic;
   signal XLXI_7_A_openSignal       : std_logic_vector (16 downto 0);
   signal XLXI_7_CS_openSignal      : std_logic;
   signal XLXI_7_OE_openSignal      : std_logic;
   signal XLXI_7_WE_openSignal      : std_logic;
   signal XLXI_8_A_openSignal       : std_logic_vector (18 downto 0);
   signal XLXI_8_CE_openSignal      : std_logic;
   signal XLXI_8_OE_openSignal      : std_logic;
   signal XLXI_8_WE_openSignal      : std_logic;
   signal XLXI_9_A_openSignal       : std_logic_vector (18 downto 0);
   signal XLXI_9_CE_openSignal      : std_logic;
   signal XLXI_9_OE_openSignal      : std_logic;
   signal XLXI_9_WE_openSignal      : std_logic;
   signal XLXI_10_A_openSignal      : std_logic_vector (18 downto 0);
   signal XLXI_10_CE_openSignal     : std_logic;
   signal XLXI_10_OE_openSignal     : std_logic;
   signal XLXI_10_WE_openSignal     : std_logic;
   component schematic
      port ( ADh        : in    std_logic_vector (3 downto 0); 
             Ale        : in    std_logic; 
             DTR        : in    std_logic; 
             DEN        : in    std_logic; 
             MIO        : in    std_logic; 
             WR         : in    std_logic; 
             BHE        : in    std_logic; 
             CLK        : in    std_logic; 
             ReadyIN    : in    std_logic; 
             Reset      : in    std_logic; 
             IRQ        : in    std_logic_vector (7 downto 0); 
             INTA       : in    std_logic; 
             RD         : in    std_logic; 
             ADl        : inout std_logic_vector (15 downto 0); 
             Puertos    : inout std_logic_vector (15 downto 0); 
             ADComp     : out   std_logic_vector (19 downto 0); 
             CHIPs      : out   std_logic_vector (2 downto 0); 
             ClkMicro   : out   std_logic; 
             ReadyMicro : out   std_logic; 
             ResetMicro : out   std_logic; 
             HighW      : out   std_logic; 
             LowW       : out   std_logic; 
             HighR      : out   std_logic; 
             LowR       : out   std_logic; 
             INTR       : out   std_logic);
   end component;
   
   component I80c86
      port ( READY : in    std_logic; 
             WR    : out   std_logic; 
             ALE   : out   std_logic; 
             MIO   : out   std_logic; 
             RD    : out   std_logic; 
             CLK   : in    std_logic; 
             INTR  : in    std_logic; 
             INTA  : out   std_logic; 
             DEN   : out   std_logic; 
             A     : inout std_logic_vector (19 downto 16); 
             AD    : inout std_logic_vector (15 downto 0); 
             DTR   : out   std_logic; 
             BHE   : out   std_logic; 
             RESET : in    std_logic);
   end component;
   
   component AM29F040
      port ( WE : in    std_logic; 
             CE : in    std_logic; 
             OE : in    std_logic; 
             A  : in    std_logic_vector (18 downto 0); 
             DQ : inout std_logic_vector (8 downto 0));
   end component;
   
   component K6T1008
      port ( OE : in    std_logic; 
             WE : in    std_logic; 
             CS : in    std_logic; 
             A  : in    std_logic_vector (16 downto 0); 
             IO : inout std_logic_vector (8 downto 1));
   end component;
   
begin
   XLXI_1 : schematic
      port map (ADh(3 downto 0)=>XLXN_16(19 downto 16),
                Ale=>XLXN_4,
                BHE=>XLXN_8,
                CLK=>XLXI_1_CLK_openSignal,
                DEN=>XLXN_7,
                DTR=>XLXN_6,
                INTA=>XLXN_9,
                IRQ(7 downto 0)=>XLXI_1_IRQ_openSignal(7 downto 0),
                MIO=>XLXN_2,
                RD=>XLXN_1,
                ReadyIN=>XLXI_1_ReadyIN_openSignal,
                Reset=>XLXI_1_Reset_openSignal,
                WR=>XLXN_5,
                ADComp=>open,
                CHIPs=>open,
                ClkMicro=>XLXN_11,
                HighR=>open,
                HighW=>open,
                INTR=>XLXN_13,
                LowR=>open,
                LowW=>open,
                ReadyMicro=>XLXN_15,
                ResetMicro=>XLXN_14,
                ADl(15 downto 0)=>XLXN_17(15 downto 0),
                Puertos=>open);
   
   XLXI_2 : I80c86
      port map (CLK=>XLXN_11,
                INTR=>XLXN_13,
                READY=>XLXN_15,
                RESET=>XLXN_14,
                ALE=>XLXN_4,
                BHE=>XLXN_8,
                DEN=>XLXN_7,
                DTR=>XLXN_6,
                INTA=>XLXN_9,
                MIO=>XLXN_2,
                RD=>XLXN_1,
                WR=>XLXN_5,
                A(19 downto 16)=>XLXN_16(19 downto 16),
                AD(15 downto 0)=>XLXN_17(15 downto 0));
   
   XLXI_3 : AM29F040
      port map (A(18 downto 0)=>XLXI_3_A_openSignal(18 downto 0),
                CE=>XLXI_3_CE_openSignal,
                OE=>XLXI_3_OE_openSignal,
                WE=>XLXI_3_WE_openSignal,
                DQ=>open);
   
   XLXI_4 : K6T1008
      port map (A(16 downto 0)=>XLXI_4_A_openSignal(16 downto 0),
                CS=>XLXI_4_CS_openSignal,
                OE=>XLXI_4_OE_openSignal,
                WE=>XLXI_4_WE_openSignal,
                IO=>open);
   
   XLXI_5 : K6T1008
      port map (A(16 downto 0)=>XLXI_5_A_openSignal(16 downto 0),
                CS=>XLXI_5_CS_openSignal,
                OE=>XLXI_5_OE_openSignal,
                WE=>XLXI_5_WE_openSignal,
                IO=>open);
   
   XLXI_6 : K6T1008
      port map (A(16 downto 0)=>XLXI_6_A_openSignal(16 downto 0),
                CS=>XLXI_6_CS_openSignal,
                OE=>XLXI_6_OE_openSignal,
                WE=>XLXI_6_WE_openSignal,
                IO=>open);
   
   XLXI_7 : K6T1008
      port map (A(16 downto 0)=>XLXI_7_A_openSignal(16 downto 0),
                CS=>XLXI_7_CS_openSignal,
                OE=>XLXI_7_OE_openSignal,
                WE=>XLXI_7_WE_openSignal,
                IO=>open);
   
   XLXI_8 : AM29F040
      port map (A(18 downto 0)=>XLXI_8_A_openSignal(18 downto 0),
                CE=>XLXI_8_CE_openSignal,
                OE=>XLXI_8_OE_openSignal,
                WE=>XLXI_8_WE_openSignal,
                DQ=>open);
   
   XLXI_9 : AM29F040
      port map (A(18 downto 0)=>XLXI_9_A_openSignal(18 downto 0),
                CE=>XLXI_9_CE_openSignal,
                OE=>XLXI_9_OE_openSignal,
                WE=>XLXI_9_WE_openSignal,
                DQ=>open);
   
   XLXI_10 : AM29F040
      port map (A(18 downto 0)=>XLXI_10_A_openSignal(18 downto 0),
                CE=>XLXI_10_CE_openSignal,
                OE=>XLXI_10_OE_openSignal,
                WE=>XLXI_10_WE_openSignal,
                DQ=>open);
   
end BEHAVIORAL;


