----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:28:59 03/25/2015 
-- Design Name: 
-- Module Name:    Latch_De_Direcciones - PACO 
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

entity Latch_De_Direcciones is
    Port ( Dirh : in  STD_LOGIC_VECTOR (3 downto 0);
           Dirl : in  STD_LOGIC_VECTOR (15 downto 0);
           S : out  STD_LOGIC_VECTOR (19 downto 0);
           ALE : in  STD_LOGIC);
end Latch_De_Direcciones;

architecture Behavioral of Latch_De_Direcciones is
begin

	S <= Dirh & Dirl when ALE = '1'; 

end Behavioral;

