----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:40:49 04/01/2015 
-- Design Name: 
-- Module Name:    Reloj - Behavioral 
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

entity Reloj is
    Port ( Clk : in  STD_LOGIC;
           Mclk : out  STD_LOGIC;
           Ready : out  STD_LOGIC;
           IOReady : in  STD_LOGIC;
           ResetIN : in  STD_LOGIC;
           ResetOUT : out  STD_LOGIC);
end Reloj;

architecture Behavioral of Reloj is
	signal Count : std_logic_vector (1 downto 0);
	signal resetclk, resetf, readyf, TCR, RRC : std_logic;
	signal Resetcount : std_logic_vector (1 downto 0);
begin

	process (Clk, resetclk) -- Contador con reset asincronico...
		begin
		if resetclk = '1' then Count <= "00"; 
		elsif clk'event and clk = '1' then
			count <= count + 1;
		end if;
	end process;
	
	process (Clk, RRC) -- Cuenta de cuatro times para el reseteo del micro...
		begin
		if RRC = '1' then Resetcount <= "00"; 
		elsif clk'event and clk = '1' then
			if resetf = '1' then
				Resetcount <= Resetcount + 1;
			end if;	
		end if;
	end process;
	
	TCR <= '1' when Resetcount = "11" else '0';
	
	process (Clk) -- Logica de control de READY y RESET...
		begin
		if clk'event and clk = '1' then
			if IOReady = '1' then
				readyf <= '1';
			else
				readyf <= '0';
			end if;
			if ResetIN = '1' then
				resetf <= '1';
			elsif TCR = '1' then
				resetf <= '0';
				RRC <= '1';			
			end if;
		end if;
	end process;
	
	Mclk <= '1' when Count = "10" else '0';
	resetclk <= '1' when Count = "10" else '0';
	ResetOUT <= '1' when resetf = '1' else '0';
	Ready <= '1' when readyf = '1' else '0';		
			
end Behavioral;

