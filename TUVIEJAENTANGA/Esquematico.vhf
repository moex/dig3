--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : sch2vhdl
--  /   /         Filename : Esquematico.vhf
-- /___/   /\     Timestamp : 04/20/2015 10:59:49
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: "E:\Program Files (x86)\Xinlix\bin\nt\sch2vhdl.exe" -intstyle ise -family spartan3e -flat -suppress -w "E:/Agus/Facultad/Digital 3/dig3/TUVIEJAENTANGA/Esquematico.sch" Esquematico.vhf
--Design Name: Esquematico
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

entity Esquematico is
   port ( Clk     : in    std_logic; 
          IRQ     : in    std_logic_vector (7 downto 0); 
          ResetIN : in    std_logic);
end Esquematico;

architecture BEHAVIORAL of Esquematico is
   attribute BOX_TYPE   : string ;
   signal WR                        : std_logic;
   signal XLXN_1                    : std_logic;
   signal XLXN_4                    : std_logic_vector (19 downto 16);
   signal XLXN_5                    : std_logic_vector (15 downto 0);
   signal XLXN_6                    : std_logic;
   signal XLXN_7                    : std_logic;
   signal XLXN_8                    : std_logic;
   signal XLXN_9                    : std_logic;
   signal XLXN_11                   : std_logic_vector (19 downto 0);
   signal XLXN_13                   : std_logic;
   signal XLXN_16                   : std_logic;
   signal XLXN_17                   : std_logic;
   signal XLXN_25                   : std_logic;
   signal XLXN_27                   : std_logic;
   signal XLXN_28                   : std_logic;
   signal XLXN_29                   : std_logic;
   signal XLXI_5_IOReady_openSignal : std_logic;
   signal XLXI_6_Dir_openSignal     : std_logic_vector (19 downto 0);
   signal XLXI_6_RD_openSignal      : std_logic;
   signal XLXI_6_RW_openSignal      : std_logic;
   signal XLXI_9_I0_openSignal      : std_logic;
   signal XLXI_13_I0_openSignal     : std_logic;
   signal XLXI_18_A_openSignal      : std_logic_vector (18 downto 0);
   signal XLXI_18_CE_openSignal     : std_logic;
   signal XLXI_18_OE_openSignal     : std_logic;
   signal XLXI_18_WE_openSignal     : std_logic;
   signal XLXI_19_A_openSignal      : std_logic_vector (18 downto 0);
   signal XLXI_19_CE_openSignal     : std_logic;
   signal XLXI_19_OE_openSignal     : std_logic;
   signal XLXI_19_WE_openSignal     : std_logic;
   signal XLXI_20_A_openSignal      : std_logic_vector (18 downto 0);
   signal XLXI_20_CE_openSignal     : std_logic;
   signal XLXI_20_OE_openSignal     : std_logic;
   signal XLXI_20_WE_openSignal     : std_logic;
   signal XLXI_21_A_openSignal      : std_logic_vector (18 downto 0);
   signal XLXI_21_CE_openSignal     : std_logic;
   signal XLXI_21_OE_openSignal     : std_logic;
   signal XLXI_21_WE_openSignal     : std_logic;
   signal XLXI_22_A_openSignal      : std_logic_vector (16 downto 0);
   signal XLXI_22_CS_openSignal     : std_logic;
   signal XLXI_22_OE_openSignal     : std_logic;
   signal XLXI_22_WE_openSignal     : std_logic;
   signal XLXI_23_A_openSignal      : std_logic_vector (16 downto 0);
   signal XLXI_23_CS_openSignal     : std_logic;
   signal XLXI_23_OE_openSignal     : std_logic;
   signal XLXI_23_WE_openSignal     : std_logic;
   signal XLXI_24_A_openSignal      : std_logic_vector (16 downto 0);
   signal XLXI_24_CS_openSignal     : std_logic;
   signal XLXI_24_OE_openSignal     : std_logic;
   signal XLXI_24_WE_openSignal     : std_logic;
   signal XLXI_25_A_openSignal      : std_logic_vector (16 downto 0);
   signal XLXI_25_CS_openSignal     : std_logic;
   signal XLXI_25_OE_openSignal     : std_logic;
   signal XLXI_25_WE_openSignal     : std_logic;
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
   
   component Latch_De_Direcciones
      port ( ALE  : in    std_logic; 
             Dirh : in    std_logic_vector (3 downto 0); 
             Dirl : in    std_logic_vector (15 downto 0); 
             S    : out   std_logic_vector (19 downto 0));
   end component;
   
   component Trans_Datos
      port ( Dtr    : in    std_logic; 
             Den    : in    std_logic; 
             Datin  : inout std_logic_vector (15 downto 0); 
             Datout : inout std_logic_vector (15 downto 0));
   end component;
   
   component LatchBHE
      port ( BHE  : in    std_logic; 
             Ale  : in    std_logic; 
             BHEL : out   std_logic);
   end component;
   
   component Reloj
      port ( Clk      : in    std_logic; 
             IOReady  : in    std_logic; 
             ResetIN  : in    std_logic; 
             Mclk     : out   std_logic; 
             Ready    : out   std_logic; 
             ResetOUT : out   std_logic);
   end component;
   
   component IRQControl
      port ( Reset : in    std_logic; 
             Clk   : in    std_logic; 
             IRQA  : in    std_logic; 
             RD    : in    std_logic; 
             RW    : in    std_logic; 
             IRQ   : in    std_logic_vector (7 downto 0); 
             Dir   : in    std_logic_vector (19 downto 0); 
             Data  : inout std_logic_vector (7 downto 0); 
             IRQR  : out   std_logic);
   end component;
   
   component Reg_de_Paginacion
      port ( IO        : in    std_logic; 
             WR        : in    std_logic; 
             Direccion : in    std_logic_vector (19 downto 0); 
             Entrada   : in    std_logic_vector (15 downto 0); 
             S         : out   std_logic_vector (2 downto 0));
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
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
   XLXI_1 : I80c86
      port map (CLK=>XLXN_27,
                INTR=>XLXN_17,
                READY=>XLXN_28,
                RESET=>XLXN_25,
                ALE=>XLXN_9,
                BHE=>XLXN_8,
                DEN=>XLXN_7,
                DTR=>XLXN_6,
                INTA=>XLXN_16,
                MIO=>XLXN_1,
                RD=>open,
                WR=>WR,
                A(19 downto 16)=>XLXN_4(19 downto 16),
                AD(15 downto 0)=>XLXN_5(15 downto 0));
   
   XLXI_2 : Latch_De_Direcciones
      port map (ALE=>XLXN_9,
                Dirh(3 downto 0)=>XLXN_4(19 downto 16),
                Dirl(15 downto 0)=>XLXN_5(15 downto 0),
                S(19 downto 0)=>XLXN_11(19 downto 0));
   
   XLXI_3 : Trans_Datos
      port map (Den=>XLXN_7,
                Dtr=>XLXN_6,
                Datin(15 downto 0)=>XLXN_5(15 downto 0),
                Datout=>open);
   
   XLXI_4 : LatchBHE
      port map (Ale=>XLXN_9,
                BHE=>XLXN_8,
                BHEL=>XLXN_13);
   
   XLXI_5 : Reloj
      port map (Clk=>Clk,
                IOReady=>XLXI_5_IOReady_openSignal,
                ResetIN=>ResetIN,
                Mclk=>XLXN_27,
                Ready=>XLXN_28,
                ResetOUT=>XLXN_25);
   
   XLXI_6 : IRQControl
      port map (Clk=>Clk,
                Dir(19 downto 0)=>XLXI_6_Dir_openSignal(19 downto 0),
                IRQ(7 downto 0)=>IRQ(7 downto 0),
                IRQA=>XLXN_16,
                RD=>XLXI_6_RD_openSignal,
                Reset=>XLXN_25,
                RW=>XLXI_6_RW_openSignal,
                IRQR=>XLXN_17,
                Data=>open);
   
   XLXI_7 : Reg_de_Paginacion
      port map (Direccion(19 downto 0)=>XLXN_11(19 downto 0),
                Entrada(15 downto 0)=>XLXN_5(15 downto 0),
                IO=>XLXN_1,
                WR=>WR,
                S=>open);
   
   XLXI_8 : OR2
      port map (I0=>WR,
                I1=>XLXN_13,
                O=>open);
   
   XLXI_9 : OR2
      port map (I0=>XLXI_9_I0_openSignal,
                I1=>WR,
                O=>open);
   
   XLXI_12 : OR2
      port map (I0=>XLXN_29,
                I1=>XLXN_13,
                O=>open);
   
   XLXI_13 : OR2
      port map (I0=>XLXI_13_I0_openSignal,
                I1=>XLXN_29,
                O=>open);
   
   XLXI_18 : AM29F040
      port map (A(18 downto 0)=>XLXI_18_A_openSignal(18 downto 0),
                CE=>XLXI_18_CE_openSignal,
                OE=>XLXI_18_OE_openSignal,
                WE=>XLXI_18_WE_openSignal,
                DQ=>open);
   
   XLXI_19 : AM29F040
      port map (A(18 downto 0)=>XLXI_19_A_openSignal(18 downto 0),
                CE=>XLXI_19_CE_openSignal,
                OE=>XLXI_19_OE_openSignal,
                WE=>XLXI_19_WE_openSignal,
                DQ=>open);
   
   XLXI_20 : AM29F040
      port map (A(18 downto 0)=>XLXI_20_A_openSignal(18 downto 0),
                CE=>XLXI_20_CE_openSignal,
                OE=>XLXI_20_OE_openSignal,
                WE=>XLXI_20_WE_openSignal,
                DQ=>open);
   
   XLXI_21 : AM29F040
      port map (A(18 downto 0)=>XLXI_21_A_openSignal(18 downto 0),
                CE=>XLXI_21_CE_openSignal,
                OE=>XLXI_21_OE_openSignal,
                WE=>XLXI_21_WE_openSignal,
                DQ=>open);
   
   XLXI_22 : K6T1008
      port map (A(16 downto 0)=>XLXI_22_A_openSignal(16 downto 0),
                CS=>XLXI_22_CS_openSignal,
                OE=>XLXI_22_OE_openSignal,
                WE=>XLXI_22_WE_openSignal,
                IO=>open);
   
   XLXI_23 : K6T1008
      port map (A(16 downto 0)=>XLXI_23_A_openSignal(16 downto 0),
                CS=>XLXI_23_CS_openSignal,
                OE=>XLXI_23_OE_openSignal,
                WE=>XLXI_23_WE_openSignal,
                IO=>open);
   
   XLXI_24 : K6T1008
      port map (A(16 downto 0)=>XLXI_24_A_openSignal(16 downto 0),
                CS=>XLXI_24_CS_openSignal,
                OE=>XLXI_24_OE_openSignal,
                WE=>XLXI_24_WE_openSignal,
                IO=>open);
   
   XLXI_25 : K6T1008
      port map (A(16 downto 0)=>XLXI_25_A_openSignal(16 downto 0),
                CS=>XLXI_25_CS_openSignal,
                OE=>XLXI_25_OE_openSignal,
                WE=>XLXI_25_WE_openSignal,
                IO=>open);
   
end BEHAVIORAL;


