----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:08:59 04/19/2015 
-- Design Name: 
-- Module Name:    K6T1008 - Behavioral 
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

entity K6T1008 is
    Port ( IO : inout  STD_LOGIC_VECTOR (8 downto 1);
           A : in  STD_LOGIC_VECTOR (16 downto 0);
           OE : in  STD_LOGIC;
           WE : in  STD_LOGIC;
           CS : in  STD_LOGIC);
end K6T1008;

architecture Behavioral of K6T1008 is

begin


end Behavioral;

