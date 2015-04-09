--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : Testclock.vhw
-- /___/   /\     Timestamp : Wed Apr 08 21:21:34 2015
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: Testclock
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY Testclock IS
END Testclock;

ARCHITECTURE testbench_arch OF Testclock IS
    COMPONENT Reloj
        PORT (
            Clk : In std_logic;
            Mclk : Out std_logic;
            Ready : Out std_logic;
            IOReady : In std_logic;
            ResetIN : In std_logic;
            ResetOUT : Out std_logic
        );
    END COMPONENT;

    SIGNAL Clk : std_logic := '0';
    SIGNAL Mclk : std_logic := '0';
    SIGNAL Ready : std_logic := '0';
    SIGNAL IOReady : std_logic := '0';
    SIGNAL ResetIN : std_logic := '0';
    SIGNAL ResetOUT : std_logic := '0';

    constant PERIOD : time := 40 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 1 ns;

    BEGIN
        UUT : Reloj
        PORT MAP (
            Clk => Clk,
            Mclk => Mclk,
            Ready => Ready,
            IOReady => IOReady,
            ResetIN => ResetIN,
            ResetOUT => ResetOUT
        );

        PROCESS    -- clock process for Clk
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                Clk <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                Clk <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  56ns
                WAIT FOR 56 ns;
                ResetIN <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  96ns
                WAIT FOR 40 ns;
                ResetIN <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  976ns
                WAIT FOR 880 ns;
                IOReady <= '1';
                -- -------------------------------------
                WAIT FOR 9064 ns;

            END PROCESS;

    END testbench_arch;

