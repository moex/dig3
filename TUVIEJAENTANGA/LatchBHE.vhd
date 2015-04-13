----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:49:42 04/13/2015 
-- Design Name: 
-- Module Name:    LatchBHE - Behavioral 
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

entity LatchBHE is
    Port ( BHE : in  STD_LOGIC;
           Ale : in  STD_LOGIC;
           BHEL : out  STD_LOGIC);
end LatchBHE;

architecture Behavioral of LatchBHE is

begin

	BHEL <= BHE when Ale = '1';

end Behavioral;

