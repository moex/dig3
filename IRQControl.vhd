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
    Port ( IRQ : in  STD_LOGIC_VECTOR (7 downto 0);
           Clk : in  STD_LOGIC;
           IRQR : in  STD_LOGIC;--interrupt request
           IRQA : in  STD_LOGIC;--interrupt acknowledge
           Data : inout  STD_LOGIC_VECTOR (7 downto 0);--bus de datos		  
           RD : in  STD_LOGIC;-- read y write para los registros internos
           RW : in  STD_LOGIC;
           CS : in  STD_LOGIC; --chip select
           RS : in  STD_LOGIC); -- selector de registro
end IRQControl;

architecture Behavioral of IRQControl is
 
begin


end Behavioral;

