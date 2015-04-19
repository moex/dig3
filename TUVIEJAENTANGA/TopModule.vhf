--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : sch2vhdl
--  /   /         Filename : TopModule.vhf
-- /___/   /\     Timestamp : 04/18/2015 21:27:46
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
   signal XLXI_1_ADh_openSignal     : std_logic_vector (3 downto 0);
   signal XLXI_1_Ale_openSignal     : std_logic;
   signal XLXI_1_BHE_openSignal     : std_logic;
   signal XLXI_1_CLK_openSignal     : std_logic;
   signal XLXI_1_DEN_openSignal     : std_logic;
   signal XLXI_1_DTR_openSignal     : std_logic;
   signal XLXI_1_INTA_openSignal    : std_logic;
   signal XLXI_1_IRQ_openSignal     : std_logic_vector (7 downto 0);
   signal XLXI_1_MIO_openSignal     : std_logic;
   signal XLXI_1_RD_openSignal      : std_logic;
   signal XLXI_1_ReadyIN_openSignal : std_logic;
   signal XLXI_1_Reset_openSignal   : std_logic;
   signal XLXI_1_WR_openSignal      : std_logic;
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
   
begin
   XLXI_1 : schematic
      port map (ADh(3 downto 0)=>XLXI_1_ADh_openSignal(3 downto 0),
                Ale=>XLXI_1_Ale_openSignal,
                BHE=>XLXI_1_BHE_openSignal,
                CLK=>XLXI_1_CLK_openSignal,
                DEN=>XLXI_1_DEN_openSignal,
                DTR=>XLXI_1_DTR_openSignal,
                INTA=>XLXI_1_INTA_openSignal,
                IRQ(7 downto 0)=>XLXI_1_IRQ_openSignal(7 downto 0),
                MIO=>XLXI_1_MIO_openSignal,
                RD=>XLXI_1_RD_openSignal,
                ReadyIN=>XLXI_1_ReadyIN_openSignal,
                Reset=>XLXI_1_Reset_openSignal,
                WR=>XLXI_1_WR_openSignal,
                ADComp=>open,
                CHIPs=>open,
                ClkMicro=>open,
                HighR=>open,
                HighW=>open,
                INTR=>open,
                LowR=>open,
                LowW=>open,
                ReadyMicro=>open,
                ResetMicro=>open,
                ADl=>open,
                Puertos=>open);
   
end BEHAVIORAL;


