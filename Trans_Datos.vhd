----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:38:01 03/25/2015 
-- Design Name: 
-- Module Name:    Trans_Datos - PACO2 
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

entity Trans_Datos is
    Port ( Datin : inout  STD_LOGIC_VECTOR (15 downto 0);
           Datout : inout  STD_LOGIC_VECTOR (15 downto 0);
           Dtr : in  STD_LOGIC;
           Den : in  STD_LOGIC);
end Trans_Datos;

architecture Behavioral of Trans_Datos is

begin

	Datout <= Datin when Dtr = '1' and Den = '0' else (others => 'Z');
	Datin <= Datout when Dtr = '0' and Den = '0' else (others => 'Z');


end Behavioral;

