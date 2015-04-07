--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : schematic.vhf
-- /___/   /\     Timestamp : 04/06/2015 21:32:11
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family spartan3e -flat -suppress -w C:/Dig3/dig3/TUVIEJAENTANGA/schematic.sch schematic.vhf
--Design Name: schematic
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

entity schematic is
   port ( ADh        : in    std_logic_vector (3 downto 0); 
          ADl        : in    std_logic_vector (15 downto 0); 
          Ale        : in    std_logic; 
          BHE        : in    std_logic; 
          CLK        : in    std_logic; 
          DEN        : in    std_logic; 
          DTR        : in    std_logic; 
          MIO        : in    std_logic; 
          ReadyIN    : in    std_logic; 
          Reset      : in    std_logic; 
          WR         : in    std_logic; 
          XLXN_73    : in    std_logic; 
          ADComp     : out   std_logic_vector (19 downto 0); 
          CHIPs      : out   std_logic_vector (2 downto 0); 
          ClkMicro   : out   std_logic; 
          HighW      : out   std_logic; 
          LowW       : out   std_logic; 
          ReadyMicro : out   std_logic; 
          ResetMicro : out   std_logic; 
          Puertos    : inout std_logic_vector (15 downto 0));
end schematic;

architecture BEHAVIORAL of schematic is
   attribute BOX_TYPE   : string ;
   attribute INIT       : string ;
   signal BHEL             : std_logic;
   signal XLXN_74          : std_logic;
   signal XLXN_75          : std_logic;
   signal XLXN_76          : std_logic_vector (7 downto 0);
   signal XLXN_77          : std_logic;
   signal ClkMicro_DUMMY   : std_logic;
   signal ResetMicro_DUMMY : std_logic;
   signal ADComp_DUMMY     : std_logic_vector (19 downto 0);
   signal ADl_DUMMY        : std_logic_vector (15 downto 0);
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
   
   component Reloj
      port ( Clk      : in    std_logic; 
             IOReady  : in    std_logic; 
             ResetIN  : in    std_logic; 
             Mclk     : out   std_logic; 
             Ready    : out   std_logic; 
             ResetOUT : out   std_logic);
   end component;
   
   component LD
      -- synopsys translate_off
      generic( INIT : bit :=  '0');
      -- synopsys translate_on
      port ( D : in    std_logic; 
             G : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute INIT of LD : component is "0";
   attribute BOX_TYPE of LD : component is "BLACK_BOX";
   
   component IRQControl
      port ( Reset : in    std_logic; 
             Clk   : in    std_logic; 
             IRQA  : in    std_logic; 
             RD    : in    std_logic; 
             RW    : in    std_logic; 
             RS    : in    std_logic; 
             IRQ   : in    std_logic_vector (7 downto 0); 
             Dir   : in    std_logic_vector (19 downto 0); 
             IRQR  : out   std_logic; 
             Data  : inout std_logic_vector (7 downto 0));
   end component;
   
begin
   ADComp(19 downto 0) <= ADComp_DUMMY(19 downto 0);
   ClkMicro <= ClkMicro_DUMMY;
   ResetMicro <= ResetMicro_DUMMY;
   ADl_DUMMY(15 downto 0) <= ADl(15 downto 0);
   XLXI_1 : Latch_De_Direcciones
      port map (ALE=>Ale,
                Dirh(3 downto 0)=>ADh(3 downto 0),
                Dirl(15 downto 0)=>ADl_DUMMY(15 downto 0),
                S(19 downto 0)=>ADComp_DUMMY(19 downto 0));
   
   XLXI_2 : Trans_Datos
      port map (Den=>DEN,
                Dtr=>DTR,
                Datin(15 downto 0)=>ADl_DUMMY(15 downto 0),
                Datout(15 downto 0)=>Puertos(15 downto 0));
   
   XLXI_3 : Reg_de_Paginacion
      port map (Direccion(19 downto 0)=>ADComp_DUMMY(19 downto 0),
                Entrada(15 downto 0)=>ADl_DUMMY(15 downto 0),
                IO=>MIO,
                WR=>WR,
                S(2 downto 0)=>CHIPs(2 downto 0));
   
   XLXI_4 : OR2
      port map (I0=>WR,
                I1=>BHEL,
                O=>HighW);
   
   XLXI_5 : OR2
      port map (I0=>ADComp_DUMMY(0),
                I1=>WR,
                O=>LowW);
   
   XLXI_6 : Reloj
      port map (Clk=>CLK,
                IOReady=>ReadyIN,
                ResetIN=>Reset,
                Mclk=>ClkMicro_DUMMY,
                Ready=>ReadyMicro,
                ResetOUT=>ResetMicro_DUMMY);
   
   XLXI_13 : LD
      port map (D=>BHE,
                G=>Ale,
                Q=>BHEL);
   
   XLXI_14 : IRQControl
      port map (Clk=>ClkMicro_DUMMY,
                Dir(19 downto 0)=>ADComp_DUMMY(19 downto 0),
                IRQ(7 downto 0)=>XLXN_76(7 downto 0),
                IRQA=>XLXN_77,
                RD=>XLXN_73,
                Reset=>ResetMicro_DUMMY,
                RS=>XLXN_74,
                RW=>XLXN_75,
                IRQR=>open,
                Data(7 downto 0)=>Puertos(7 downto 0));
   
end BEHAVIORAL;


