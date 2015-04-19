----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:57:57 04/19/2015 
-- Design Name: 
-- Module Name:    80c86 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity I80c86 is
    Port ( ALE : out  STD_LOGIC;
           DEN : out  STD_LOGIC;
           DTR : out  STD_LOGIC;
           MIO : out  STD_LOGIC;
           INTA : out  STD_LOGIC;
           INTR : out  STD_LOGIC;
           CLK : out  STD_LOGIC;
           READY : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           WR : out  STD_LOGIC;
           RD : out  STD_LOGIC;
           BHR : out  STD_LOGIC;
           A : inout  STD_LOGIC_VECTOR (19 downto 16);
           AD : inout  STD_LOGIC_VECTOR (15 downto 0));
end I80c86;

architecture Behavioral of I80c86 is

begin


end Behavioral;

