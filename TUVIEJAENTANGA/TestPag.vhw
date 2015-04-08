--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2i
--  \   \         Application : ISE
--  /   /         Filename : TestPag.vhw
-- /___/   /\     Timestamp : Wed Apr 08 16:44:38 2015
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: TestPag
--Device: Xilinx
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

ENTITY TestPag IS
END TestPag;

ARCHITECTURE testbench_arch OF TestPag IS
    FILE RESULTS: TEXT OPEN WRITE_MODE IS "results.txt";

    COMPONENT Reg_de_Paginacion
        PORT (
            Direccion : In std_logic_vector (19 DownTo 0);
            Entrada : In std_logic_vector (15 DownTo 0);
            S : Out std_logic_vector (2 DownTo 0);
            IO : In std_logic;
            WR : In std_logic
        );
    END COMPONENT;

    SIGNAL Direccion : std_logic_vector (19 DownTo 0) := "00000001000000000000";
    SIGNAL Entrada : std_logic_vector (15 DownTo 0) := "0000000000000010";
    SIGNAL S : std_logic_vector (2 DownTo 0) := "000";
    SIGNAL IO : std_logic := '1';
    SIGNAL WR : std_logic := '1';

    BEGIN
        UUT : Reg_de_Paginacion
        PORT MAP (
            Direccion => Direccion,
            Entrada => Entrada,
            S => S,
            IO => IO,
            WR => WR
        );

        PROCESS
            BEGIN
                -- -------------  Current Time:  100ns
                WAIT FOR 100 ns;
                IO <= '0';
                WR <= '0';
                -- -------------------------------------
                -- -------------  Current Time:  200ns
                WAIT FOR 100 ns;
                IO <= '1';
                WR <= '1';
                -- -------------------------------------
                WAIT FOR 800 ns;

            END PROCESS;

    END testbench_arch;

