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
           -- RS : in  STD_LOGIC); -- selector de registro
			  
end IRQControl;

architecture Behavioral of IRQControl is
 signal S: std_logic_vector(7 downto 0);
 signal J: std_logic_vector(7 downto 0);
 signal IRQE: std_logic_vector(7 downto 0);
 signal IRQT: std_logic_vector(7 downto 0);
 signal CS: std_logic;
 signal end1: std_logic;
 signal cuenta: std_logic_vector(1 downto 0) := "00";
 signal flag: std_logic;
 signal reg : std_logic_vector(2 downto 0) := "001";
begin
	
	process (Clk)
	begin
		if Clk = '1' and clk'event then 
			reg <= reg(1 downto 0)& reg(2);
		end if;
	end process;
		
			
	-- fuzzy logic
	process(Clk, Reset)
		--variable cuenta: integer := 0;
		--variable flag: boolean;
	begin
		if(Reset = '1')then
			flag <= '0';
		elsif(Clk='1' and clk'event)then
			if (reg = "100") then
				if(flag = '0')then
					if(IRQA = '0')then
						flag <= '1';
						cuenta <= cuenta + "01";
					end if;
				else
					if(IRQA = '1')then
						flag <= '0';
						if(cuenta = "10") then cuenta <= "00"; end if;
					end if;
				end if;
			end if;	
		end if;
	end process;
	
	CS <= '0' when (Dir(15)='0' and Dir(14)='1') else '1';--señal chip select
	
	--registros
	IRQE <= (Others => '0') when Reset = '1' else Data when (RW = '0' and CS = '0' and Dir(0) = '0');
	IRQT <= (Others => '0') when Reset = '1';
	
	--interrupt request
	IRQR <= '1' when (irq /= "00000000")and end1='0' else '0' when (Reset='1' or flag = '1');
	
	--interrupcion después del enable
	end1 <= '1' when (irq /= "00000000") else '0' when(irqa='1' and cuenta = "10")or(reset='1');
	S <= (IRQE and IRQ) + IRQT when end1 = '0' else (Others => '0') when (irqa='1' and cuenta="10")or(reset='1'); --
	
	--manejo de prioridades
	J<=     "00000001" when (S(0)='1')
		else "00000010" when (S(1)='1' and S(0)='0')
		else "00000100" when (S(2)='1' and S(1 downto 0)="00")
		else "00001000" when (S(3)='1' and S(2 downto 0)="000")
		else "00010000" when (S(4)='1' and S(3 downto 0)="0000")
		else "00100000" when (S(5)='1' and S(4 downto 0)="00000")
		else "01000000" when (S(6)='1' and S(5 downto 0)="000000")
		else "10000000" when (S(7)='1' and S(6 downto 0)="0000000")
		else "00000000";
		
	--bus de datos tres estados
	
	Data <=  J when (IRQA='0') else
				IRQE when (RD='0' and CS='0' and Dir(0)='0')else
				IRQT when (RD='0' and CS='0' and Dir(0)='1')else
				(Others=>'Z');
	
	


end Behavioral;

