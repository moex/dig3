----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:04:32 04/19/2015 
-- Design Name: 
-- Module Name:    AM29F040 - Behavioral 
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

entity AM29F040 is
    Port ( A : in  STD_LOGIC_VECTOR (18 downto 0);
           DQ : inout  STD_LOGIC_VECTOR (8 downto 0);
           WE : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           OE : in  STD_LOGIC);
end AM29F040;

architecture Behavioral of AM29F040 is

begin


end Behavioral;

