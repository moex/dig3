--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : TEST1_TB_selfcheck.vhw
-- /___/   /\     Timestamp : Sat Apr 18 19:00:21 2015
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: TEST1_TB_selfcheck
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY TEST1_TB_selfcheck IS
END TEST1_TB_selfcheck;

ARCHITECTURE testbench_arch OF TEST1_TB_selfcheck IS
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
    SIGNAL IRQR : std_logic := '1';
    SIGNAL IRQA : std_logic := '0';
    SIGNAL Data : std_logic_vector (7 DownTo 0) := "ZZZZZZZZ";
    SIGNAL RD : std_logic := '0';
    SIGNAL RW : std_logic := '0';
    SIGNAL Dir : std_logic_vector (19 DownTo 0) := "00000000000000000000";

    SHARED VARIABLE TX_ERROR : INTEGER := 0;
    SHARED VARIABLE TX_OUT : LINE;

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
            PROCEDURE CHECK_IRQR(
                next_IRQR : std_logic;
                TX_TIME : INTEGER
            ) IS
                VARIABLE TX_STR : String(1 to 4096);
                VARIABLE TX_LOC : LINE;
                BEGIN
                IF (IRQR /= next_IRQR) THEN
                    STD.TEXTIO.write(TX_LOC, string'("Error at time="));
                    STD.TEXTIO.write(TX_LOC, TX_TIME);
                    STD.TEXTIO.write(TX_LOC, string'("ns IRQR="));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, IRQR);
                    STD.TEXTIO.write(TX_LOC, string'(", Expected = "));
                    IEEE.STD_LOGIC_TEXTIO.write(TX_LOC, next_IRQR);
                    STD.TEXTIO.write(TX_LOC, string'(" "));
                    TX_STR(TX_LOC.all'range) := TX_LOC.all;
                    STD.TEXTIO.Deallocate(TX_LOC);
                    ASSERT (FALSE) REPORT TX_STR SEVERITY ERROR;
                    TX_ERROR := TX_ERROR + 1;
                END IF;
            END;
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
                -- -------------  Current Time:  151ns
                WAIT FOR 2 ns;
                CHECK_IRQR('0', 151);
                -- -------------------------------------
                -- -------------  Current Time:  469ns
                WAIT FOR 318 ns;
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
                IRQ <= "00000011";
                -- -------------------------------------
                -- -------------  Current Time:  1111ns
                WAIT FOR 2 ns;
                CHECK_IRQR('1', 1111);
                -- -------------------------------------
                -- -------------  Current Time:  1349ns
                WAIT FOR 238 ns;
                IRQA <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1431ns
                WAIT FOR 82 ns;
                CHECK_IRQR('0', 1431);
                -- -------------------------------------
                -- -------------  Current Time:  1509ns
                WAIT FOR 78 ns;
                IRQ <= "00000000";
                -- -------------------------------------
                -- -------------  Current Time:  1589ns
                WAIT FOR 80 ns;
                IRQA <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1749ns
                WAIT FOR 160 ns;
                IRQA <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1909ns
                WAIT FOR 160 ns;
                IRQA <= '1';
                -- -------------------------------------
                WAIT FOR 8171 ns;

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

