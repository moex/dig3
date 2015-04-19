--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : TopLevelTest.vhw
-- /___/   /\     Timestamp : Sat Apr 18 21:20:19 2015
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: TopLevelTest
--Device: Xilinx
--

library UNISIM;
use UNISIM.Vcomponents.ALL;
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.ALL;

ENTITY TopLevelTest IS
END TopLevelTest;

ARCHITECTURE testbench_arch OF TopLevelTest IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT schematic
        PORT (
            ADh : In std_logic_vector (3 DownTo 0);
            Ale : In std_logic;
            BHE : In std_logic;
            CLK : In std_logic;
            DEN : In std_logic;
            DTR : In std_logic;
            INTA : In std_logic;
            IRQ : In std_logic_vector (7 DownTo 0);
            MIO : In std_logic;
            RD : In std_logic;
            ReadyIN : In std_logic;
            Reset : In std_logic;
            RW : In std_logic;
            WR : In std_logic;
            ADComp : Out std_logic_vector (19 DownTo 0);
            CHIPs : Out std_logic_vector (2 DownTo 0);
            ClkMicro : Out std_logic;
            HighR : Out std_logic;
            HighW : Out std_logic;
            INTR : Out std_logic;
            LowR : Out std_logic;
            LowW : Out std_logic;
            ReadyMicro : Out std_logic;
            ResetMicro : Out std_logic;
            ADl : InOut std_logic_vector (15 DownTo 0);
            Puertos : InOut std_logic_vector (15 DownTo 0)
        );
    END COMPONENT;

    SIGNAL ADh : std_logic_vector (3 DownTo 0) := "0000";
    SIGNAL Ale : std_logic := '0';
    SIGNAL BHE : std_logic := '0';
    SIGNAL CLK : std_logic := '0';
    SIGNAL DEN : std_logic := '0';
    SIGNAL DTR : std_logic := '0';
    SIGNAL INTA : std_logic := '0';
    SIGNAL IRQ : std_logic_vector (7 DownTo 0) := "00000000";
    SIGNAL MIO : std_logic := '0';
    SIGNAL RD : std_logic := '0';
    SIGNAL ReadyIN : std_logic := '0';
    SIGNAL Reset : std_logic := '0';
    SIGNAL RW : std_logic := '0';
    SIGNAL WR : std_logic := '0';
    SIGNAL ADComp : std_logic_vector (19 DownTo 0) := "00000000000000000000";
    SIGNAL CHIPs : std_logic_vector (2 DownTo 0) := "000";
    SIGNAL ClkMicro : std_logic := '0';
    SIGNAL HighR : std_logic := '0';
    SIGNAL HighW : std_logic := '0';
    SIGNAL INTR : std_logic := '0';
    SIGNAL LowR : std_logic := '0';
    SIGNAL LowW : std_logic := '0';
    SIGNAL ReadyMicro : std_logic := '0';
    SIGNAL ResetMicro : std_logic := '0';
    SIGNAL ADl : std_logic_vector (15 DownTo 0) := "ZZZZZZZZZZZZZZZZ";
    SIGNAL Puertos : std_logic_vector (15 DownTo 0) := "ZZZZZZZZZZZZZZZZ";

    constant PERIOD : time := 40000 ps;
    constant DUTY_CYCLE : real := 0.5;
    constant OFFSET : time := 10000 ps;

    BEGIN
        UUT : schematic
        PORT MAP (
            ADh => ADh,
            Ale => Ale,
            BHE => BHE,
            CLK => CLK,
            DEN => DEN,
            DTR => DTR,
            INTA => INTA,
            IRQ => IRQ,
            MIO => MIO,
            RD => RD,
            ReadyIN => ReadyIN,
            Reset => Reset,
            RW => RW,
            WR => WR,
            ADComp => ADComp,
            CHIPs => CHIPs,
            ClkMicro => ClkMicro,
            HighR => HighR,
            HighW => HighW,
            INTR => INTR,
            LowR => LowR,
            LowW => LowW,
            ReadyMicro => ReadyMicro,
            ResetMicro => ResetMicro,
            ADl => ADl,
            Puertos => Puertos
        );

        PROCESS    -- clock process for CLK
        BEGIN
            WAIT for OFFSET;
            CLOCK_LOOP : LOOP
                CLK <= '0';
                WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
                CLK <= '1';
                WAIT FOR (PERIOD * DUTY_CYCLE);
            END LOOP CLOCK_LOOP;
        END PROCESS;

        PROCESS
            BEGIN
                -- -------------  Current Time:  25000ps
                WAIT FOR 25000 ps;
                DEN <= '1';
                DTR <= '1';
                INTA <= '1';
                RD <= '1';
                ReadyIN <= '1';
                WR <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  105000ps
                WAIT FOR 80000 ps;
                Reset <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  265000ps
                WAIT FOR 160000 ps;
                Reset <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  745000ps
                WAIT FOR 480000 ps;
                Ale <= '1';
                ADl <= "0100101010111100";
                -- -------------------------------------
                -- -------------  Current Time:  785000ps
                WAIT FOR 40000 ps;
                DEN <= '0';
                Reset <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  825000ps
                WAIT FOR 40000 ps;
                Ale <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  865000ps
                WAIT FOR 40000 ps;
                Reset <= '0';
                WR <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  905000ps
                WAIT FOR 40000 ps;
                ADl <= "0000000000100000";
                -- -------------------------------------
                -- -------------  Current Time:  1.105e+006ps
                WAIT FOR 200000 ps;
                WR <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1.145e+006ps
                WAIT FOR 40000 ps;
                ADl <= "ZZZZZZZZZZZZZZZZ";
                -- -------------------------------------
                -- -------------  Current Time:  1.185e+006ps
                WAIT FOR 40000 ps;
                DEN <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1.225e+006ps
                WAIT FOR 40000 ps;
                Ale <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1.265e+006ps
                WAIT FOR 40000 ps;
                DEN <= '0';
                ADl <= "0101000100100011";
                -- -------------------------------------
                -- -------------  Current Time:  1.305e+006ps
                WAIT FOR 40000 ps;
                Ale <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1.345e+006ps
                WAIT FOR 40000 ps;
                WR <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1.385e+006ps
                WAIT FOR 40000 ps;
                ADl <= "0000000001000000";
                -- -------------------------------------
                -- -------------  Current Time:  1.505e+006ps
                WAIT FOR 120000 ps;
                IRQ <= "00000011";
                -- -------------------------------------
                -- -------------  Current Time:  1.585e+006ps
                WAIT FOR 80000 ps;
                WR <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1.625e+006ps
                WAIT FOR 40000 ps;
                ADl <= "ZZZZZZZZZZZZZZZZ";
                -- -------------------------------------
                -- -------------  Current Time:  1.665e+006ps
                WAIT FOR 40000 ps;
                DEN <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1.705e+006ps
                WAIT FOR 40000 ps;
                Ale <= '1';
                MIO <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  1.745e+006ps
                WAIT FOR 40000 ps;
                BHE <= '1';
                DEN <= '0';
                ADh <= "0010";
                ADl <= "1111101011111110";
                -- -------------------------------------
                -- -------------  Current Time:  1.785e+006ps
                WAIT FOR 40000 ps;
                Ale <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1.825e+006ps
                WAIT FOR 40000 ps;
                BHE <= '0';
                INTA <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  1.865e+006ps
                WAIT FOR 40000 ps;
                ADl <= "1111111011110000";
                -- -------------------------------------
                -- -------------  Current Time:  1.945e+006ps
                WAIT FOR 80000 ps;
                IRQ <= "00010101";
                -- -------------------------------------
                -- -------------  Current Time:  2.065e+006ps
                WAIT FOR 120000 ps;
                INTA <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2.105e+006ps
                WAIT FOR 40000 ps;
                DEN <= '1';
                ADl <= "ZZZZZZZZZZZZZZZZ";
                -- -------------------------------------
                -- -------------  Current Time:  2.145e+006ps
                WAIT FOR 40000 ps;
                MIO <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2.185e+006ps
                WAIT FOR 40000 ps;
                Ale <= '1';
                -- -------------------------------------
                -- -------------  Current Time:  2.265e+006ps
                WAIT FOR 80000 ps;
                Ale <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2.305e+006ps
                WAIT FOR 40000 ps;
                INTA <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  2.545e+006ps
                WAIT FOR 240000 ps;
                INTA <= '1';
                -- -------------------------------------
                WAIT FOR 495000 ps;

            END PROCESS;

    END testbench_arch;

