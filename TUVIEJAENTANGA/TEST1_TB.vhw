--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : TEST1_TB.vhw
-- /___/   /\     Timestamp : Mon Apr 06 22:42:38 2015
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: TEST1_TB
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY TEST1_TB IS
END TEST1_TB;

ARCHITECTURE testbench_arch OF TEST1_TB IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT IRQControl
        PORT (
            Reset : In std_logic;
            IRQ : In std_logic_vector (7 DownTo 0);
            Clk : In std_logic;
            IRQR : Out std_logic;
            IRQA : In std_logic;
            Data : InOut std_logic_vector (7 DownTo 0);
            RD : In std_logic;
            RW : In std_logic;
            Dir : In std_logic_vector (19 DownTo 0)
        );
    END COMPONENT;

    SIGNAL Reset : std_logic := '0';
    SIGNAL IRQ : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL Clk : std_logic := '0';
    SIGNAL IRQR : std_logic := '0';
    SIGNAL IRQA : std_logic := '0';
    SIGNAL Data : std_logic_vector (7 DownTo 0) := "ZZZZZZZZ";
    SIGNAL RD : std_logic := '0';
    SIGNAL RW : std_logic := '0';
    SIGNAL Dir : std_logic_vector (19 DownTo 0) := "00000000000000000000";

    constant PERIOD : time := 80 ns;
    constant DUTY_CYCLE : real := 0.25;
    constant OFFSET : time := 10 ns;

    BEGIN
        UUT : IRQControl
        PORT MAP (
            Reset => Reset,
            IRQ => IRQ,
            Clk => Clk,
            IRQR => IRQR,
            IRQA => IRQA,
            Data => Data,
            RD => RD,
            RW => RW,
            Dir => Dir
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
                -- -------------  Current Time:  10ns
                WAIT FOR 10 ns;
                IRQA <= '1';
                RD <= '1';
                RW <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  149ns
                WAIT FOR 139 ns;
                Reset <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  469ns
                WAIT FOR 320 ns;
                Reset <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  709ns
                WAIT FOR 240 ns;
                Dir <= "00000100111111110000";
                -- -------------------------------------
                -- -------------  Current Time:  789ns
                WAIT FOR 80 ns;
                RW <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  869ns
                WAIT FOR 80 ns;
                Data <= "11111111";
                -- -------------------------------------
                -- -------------  Current Time:  1029ns
                WAIT FOR 160 ns;
                RW <= '1';
                Data <= "ZZZZZZZZ";
                -- -------------------------------------
                -- -------------  Current Time:  1109ns
                WAIT FOR 80 ns;
                IRQ <= "00000001";
                -- -------------------------------------
                -- -------------  Current Time:  1269ns
                WAIT FOR 160 ns;
                IRQA <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1509ns
                WAIT FOR 240 ns;
                IRQA <= '1';
                IRQ <= "00000000";
                -- -------------------------------------
                -- -------------  Current Time:  1589ns
                WAIT FOR 80 ns;
                IRQA <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1829ns
                WAIT FOR 240 ns;
                IRQA <= '1';
                -- -------------------------------------
                WAIT FOR 8251 ns;

            END PROCESS;

    END testbench_arch;

