----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:15:57 04/01/2015 
-- Design Name: 
-- Module Name:    IRQControl - Behavioral 
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

entity IRQControl is
    Port ( Reset: in STD_LOGIC;
			  IRQ : in  STD_LOGIC_VECTOR (7 downto 0);
           Clk : in  STD_LOGIC;
           IRQR : out  STD_LOGIC;--interrupt request
           IRQA : in  STD_LOGIC;--interrupt acknowledge
           Data : inout  STD_LOGIC_VECTOR (7 downto 0);--bus de datos		  
           RD : in  STD_LOGIC;-- read y write para los registros internos
           RW : in  STD_LOGIC;
           Dir : in  STD_LOGIC_VECTOR (19 downto 0)); --chip select
           --RS : in  STD_LOGIC); -- selector de registro
			  
end IRQControl;

architecture Behavioral of IRQControl is
 signal S: std_logic_vector(7 downto 0);
 signal IRQE: std_logic_vector(7 downto 0);
 signal IRQT: std_logic_vector(7 downto 0);
 signal CS: std_logic;
 signal end1: std_logic;
 signal cuenta: std_logic_vector(1 downto 0);
 signal flag: std_logic;
 
begin
	
	-- fuzzy logic
	process(Clk, Reset)
		--variable cuenta: integer;
		--variable flag: boolean;
	begin
		if(Reset = '1')then
			cuenta <= "00";
			flag <= '0';

		elsif(Clk'event and clk = '1')then
			if(flag = '0')then
				if(IRQA = '0')then
					cuenta<= cuenta + "01";
					flag <= '1';
				end if;
			else
				if(IRQA = '1')then
					flag <= '0';
					if(cuenta = "10")then
						cuenta<= "00";
					end if;
				end if;
			end if;
		end if;
		
		if(cuenta = "10" and IRQA = '1')then 
			end1 <= '0';
		else
			end1<= '1';
		end if;
	end process;
	
	process(S)
	begin
		if(end1='1') then		
			if S(0)='1' then
				F<="0000001";
			elsif( S(1)='1')then
				F<="0000001";
			elsif( S(2)='1')then
				F<="0000010";
			elsif( S(3)='1')then
				F<="0000100";
			elsif( S(4)='1')then
				F<="0001000";
			elsif( S(5)='1')then
				F<="0010000";
			elsif( S(6)='1')then
				F<="0100000";
			elsif( S(7)='1')then
				F<="1000000";
			end if;
		end if;
	end process;
	
	
	CS <= '0' when (Dir(15)='0' and Dir(14)='1') else '1';--señal chip select
	
	--registros
	IRQE <= (Others => '0') when Reset = '1' else Data when (RW = '0' and CS = '0' and Dir(0) = '0');
	IRQT <= (Others => '0') when Reset = '1';
	
	
	--interrupcion después del enable
	S <= IRQE and IRQ;
	
	--interrupt request
	IRQR <= '1' when (S /= "00000000" and end1='1') else '0' when (end1='0' or Reset='1');
	
	--bus de datos tres estados
	
	Data <= F+IRQT when (IRQA='0') else
				IRQE when (RD='0' and CS='0' and Dir(0)='0')else
				IRQT when (RD='0' and CS='0' and Dir(0)='1')else
				(Others=>'Z');
	
	


end Behavioral;

