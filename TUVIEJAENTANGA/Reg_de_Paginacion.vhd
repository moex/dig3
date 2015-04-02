----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:34:34 03/25/2015 
-- Design Name: 
-- Module Name:    Reg_de_Paginacion - Behavioral 
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

entity Reg_de_Paginacion is
    Port ( Direccion : in  STD_LOGIC_VECTOR (19 downto 0);
           Entrada : in  STD_LOGIC_VECTOR (15 downto 0);
           S : out  STD_LOGIC_VECTOR (2 downto 0);
           IO : in  STD_LOGIC;
           WR : in  STD_LOGIC);
end Reg_de_Paginacion;

architecture Fermin of Reg_de_Paginacion is
signal Reg : std_logic_vector (7 downto 0);
signal Dir : std_logic_vector (3 downto 0);
Signal ent : std_logic_vector (7 downto 0);

begin
	
	ent <= Entrada(15 downto 8) when Direccion (0) = '1' else Entrada (7 downto 0);
	Dir <= Direccion(19) & Direccion(18) & Direccion(17) & Direccion(16);
	reg <= ent when (((Dir="0000") or (Dir="0011")or (Dir="0001") or (Dir="0010")) and (IO='0') and (WR='0'));
	S <= "001" when reg(5)&reg(4)&reg(3) = "001" else "010" when reg(5)&reg(4)&reg(3) = "010" else "100" when reg(5)&reg(4)&reg(3) = "100" else "000";


end Fermin;

