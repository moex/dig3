--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : ISE
--  /   /         Filename : TestClock_selfcheck.vhw
-- /___/   /\     Timestamp : Wed Apr 01 20:05:21 2015
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: TestClock_selfcheck_beh_0
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY TestClock_selfcheck_beh_0 IS
END TestClock_selfcheck_beh_0;

ARCHITECTURE testbench_arch OF TestClock_selfcheck_beh_0 IS
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

    SHARED VARIABLE TX_ERROR : INTEGER := 0;
    SHARED VARIABLE TX_OUT : LINE;

    constant PERIOD : time := 40 ns;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 3 ns;

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
            PROCEDURE CHECK_Mclk(
                next_Mclk : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (Mclk /= next_Mclk) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns Mclk="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, Mclk);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_Mclk);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_Ready(
                next_Ready : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (Ready /= next_Ready) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns Ready="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, Ready);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_Ready);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            PROCEDURE CHECK_ResetOUT(
                next_ResetOUT : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (ResetOUT /= next_ResetOUT) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns ResetOUT="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, ResetOUT);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_ResetOUT);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
            BEGIN
                -- -------------  Current Time:  60ns
                WAIT FOR 60 ns;
                IOReady <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  66ns
                WAIT FOR 6 ns;
                CHECK_Ready('1', 66);
                -- -------------------------------------
                -- -------------  Current Time:  500ns
                WAIT FOR 434 ns;
                ResetIN <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  506ns
                WAIT FOR 6 ns;
                CHECK_ResetOUT('1', 506);
                -- -------------------------------------
                -- -------------  Current Time:  540ns
                WAIT FOR 34 ns;
                ResetIN <= '0';
                -- -------------------------------------
                WAIT FOR 99500 ns;

                IF (TX_ERROR = 0) THEN
                    STD.TEXTIO.write(TX_OUT, string'("No errors or warnings"));
                    ASSERT (FALSE) REPORT
                      "Simulation successful (not a failure).  No problems detected."
                      SEVERITY FAILURE;
                ELSE
                    STD.TEXTIO.write(TX_OUT, TX_ERROR);
                    STD.TEXTIO.write(TX_OUT,
                        string'(" errors found in simulation"));
                    ASSERT (FALSE) REPORT "Errors found during simulation"
                         SEVERITY FAILURE;
                END IF;
            END PROCESS;

    END testbench_arch;

