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
           Dir : in  STD_LOGIC_VECTOR (19 downto 0); --chip select
           RS : in  STD_LOGIC); -- selector de registro
end IRQControl;

architecture Behavioral of IRQControl is
 signal S: std_logic_vector(7 downto 0);
 signal IRQE: std_logic_vector(7 downto 0);
 signal IRQT: std_logic_vector(7 downto 0);
 signal CS: std_logic;
 signal end1: std_logic;
 
begin
	
	-- fuzzy logic
	process(Clk, Reset)
		variable cuenta: integer;
		variable flag: boolean;
	begin
		if(Reset = '1')then
			cuenta := 0;
			flag := false;
		elsif(Clk'event and clk = '1')then
			if(flag = false)then
				if(IRQA = '0')then
					cuenta:= cuenta + 1;
					flag:= true;
				end if;
			else
				if(IRQA = '1')then
					flag:=true;
					if(cuenta = 2)then
						cuenta:=0;
					end if;
				end if;
			end if;
		end if;
			
		--end1 <= '0' when cuenta=2 and IRQA='1' else '1';
	end process;
	
	CS <= '0' when (Dir(15)='0' and Dir(14)='1') else '1';--señal chip select
	
	--interrupcion después del enable
	S <= IRQE and IRQ;
	
	--interrupt request
	IRQR <= '0' when end1='1' else '1' when (S /= "00000000");
	
	--bus de datos tres estados
	Data <= S+IRQT when (IRQA='0') else
				IRQE when (RD='0' and CS='0' and Dir(0)='0')else
				IRQT when (RD='0' and CS='0' and Dir(0)='1')else
				(Others =>'Z');
	
	


end Behavioral;

