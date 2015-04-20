VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_4(19:16)
        SIGNAL AD(15:0)
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_11(19:0)
        SIGNAL XLXN_13
        SIGNAL WR
        SIGNAL XLXN_16
        SIGNAL XLXN_17
        SIGNAL IRQ(7:0)
        SIGNAL Clk
        SIGNAL ResetIN
        SIGNAL XLXN_25
        SIGNAL XLXN_27
        SIGNAL XLXN_28
        SIGNAL RD
        SIGNAL Ad(0)
        PORT Input IRQ(7:0)
        PORT Input Clk
        PORT Input ResetIN
        BEGIN BLOCKDEF I80c86
            TIMESTAMP 2015 4 20 13 41 43
            LINE N 64 -736 0 -736 
            RECTANGLE N 64 -768 320 -104 
            LINE N 320 -688 384 -688 
            LINE N 320 -640 384 -640 
            LINE N 320 -720 384 -720 
            LINE N 320 -160 384 -160 
            LINE N 320 -336 384 -336 
            LINE N 320 -272 384 -272 
            LINE N 320 -208 384 -208 
            LINE N 320 -448 384 -448 
            RECTANGLE N 320 -604 384 -580 
            LINE N 320 -592 384 -592 
            RECTANGLE N 320 -556 384 -532 
            LINE N 320 -544 384 -544 
            LINE N 320 -496 384 -496 
            LINE N 320 -400 384 -400 
            LINE N 64 -160 0 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF Latch_De_Direcciones
            TIMESTAMP 2015 4 16 22 38 29
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF Trans_Datos
            TIMESTAMP 2015 4 16 22 38 29
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF LatchBHE
            TIMESTAMP 2015 4 16 22 38 29
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF Reloj
            TIMESTAMP 2015 4 16 22 38 29
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF IRQControl
            TIMESTAMP 2015 4 16 22 38 29
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -480 384 -480 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -512 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF Reg_de_Paginacion
            TIMESTAMP 2015 4 16 22 38 29
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF AM29F040
            TIMESTAMP 2015 4 20 13 41 43
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF K6T1008
            TIMESTAMP 2015 4 20 13 41 43
            RECTANGLE N 64 -256 320 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 I80c86
            PIN READY XLXN_28
            PIN WR WR
            PIN ALE XLXN_9
            PIN MIO XLXN_1
            PIN RD RD
            PIN CLK XLXN_27
            PIN INTR XLXN_17
            PIN INTA XLXN_16
            PIN DEN XLXN_7
            PIN A(19:16) XLXN_4(19:16)
            PIN AD(15:0) AD(15:0)
            PIN DTR XLXN_6
            PIN BHE XLXN_8
            PIN RESET XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_2 Latch_De_Direcciones
            PIN ALE XLXN_9
            PIN Dirh(3:0) XLXN_4(19:16)
            PIN Dirl(15:0) AD(15:0)
            PIN S(19:0) XLXN_11(19:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 Trans_Datos
            PIN Dtr XLXN_6
            PIN Den XLXN_7
            PIN Datin(15:0) AD(15:0)
            PIN Datout(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 LatchBHE
            PIN BHE XLXN_8
            PIN Ale XLXN_9
            PIN BHEL XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_5 Reloj
            PIN Clk Clk
            PIN IOReady
            PIN ResetIN ResetIN
            PIN Mclk XLXN_27
            PIN Ready XLXN_28
            PIN ResetOUT XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_6 IRQControl
            PIN Reset XLXN_25
            PIN Clk Clk
            PIN IRQA XLXN_16
            PIN RD RD
            PIN RW WR
            PIN IRQ(7:0) IRQ(7:0)
            PIN Dir(19:0)
            PIN Data(7:0)
            PIN IRQR XLXN_17
        END BLOCK
        BEGIN BLOCK XLXI_7 Reg_de_Paginacion
            PIN IO XLXN_1
            PIN WR WR
            PIN Direccion(19:0) XLXN_11(19:0)
            PIN Entrada(15:0) AD(15:0)
            PIN S(2:0)
        END BLOCK
        BEGIN BLOCK XLXI_12 or2
            PIN I0 RD
            PIN I1 XLXN_13
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_13 or2
            PIN I0 Ad(0)
            PIN I1 RD
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_8 or2
            PIN I0 WR
            PIN I1 XLXN_13
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_9 or2
            PIN I0 Ad(0)
            PIN I1 WR
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_18 AM29F040
            PIN WE
            PIN CE
            PIN OE
            PIN A(18:0)
            PIN DQ(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_19 AM29F040
            PIN WE
            PIN CE
            PIN OE
            PIN A(18:0)
            PIN DQ(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_20 AM29F040
            PIN WE
            PIN CE
            PIN OE
            PIN A(18:0)
            PIN DQ(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_21 AM29F040
            PIN WE
            PIN CE
            PIN OE
            PIN A(18:0)
            PIN DQ(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_22 K6T1008
            PIN OE
            PIN WE
            PIN CS
            PIN A(16:0)
            PIN IO(8:1)
        END BLOCK
        BEGIN BLOCK XLXI_23 K6T1008
            PIN OE
            PIN WE
            PIN CS
            PIN A(16:0)
            PIN IO(8:1)
        END BLOCK
        BEGIN BLOCK XLXI_24 K6T1008
            PIN OE
            PIN WE
            PIN CS
            PIN A(16:0)
            PIN IO(8:1)
        END BLOCK
        BEGIN BLOCK XLXI_25 K6T1008
            PIN OE
            PIN WE
            PIN CS
            PIN A(16:0)
            PIN IO(8:1)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN INSTANCE XLXI_4 1104 1600 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1136 2704 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 2208 976 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_1 240 1520 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 624 800 832 800
            WIRE 832 656 832 800
            WIRE 832 656 1680 656
            WIRE 1680 656 1680 752
            WIRE 1680 752 2208 752
        END BRANCH
        BEGIN BRANCH WR
            WIRE 624 832 896 832
            WIRE 896 720 896 832
            WIRE 896 720 1648 720
            WIRE 1648 720 1648 816
            WIRE 1648 816 2208 816
        END BRANCH
        BEGIN INSTANCE XLXI_2 1104 1040 R0
        END INSTANCE
        BEGIN BRANCH XLXN_4(19:16)
            WIRE 624 928 864 928
            WIRE 864 928 864 944
            WIRE 864 944 1104 944
        END BRANCH
        BEGIN BRANCH AD(15:0)
            WIRE 624 976 864 976
            WIRE 864 976 864 1008
            WIRE 864 1008 1024 1008
            WIRE 1024 1008 1104 1008
            WIRE 1024 1008 1024 1104
            WIRE 1024 1104 1552 1104
            WIRE 1552 1104 1552 1280
            WIRE 1488 1280 1552 1280
            WIRE 1552 944 2208 944
            WIRE 1552 944 1552 1104
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 624 1024 864 1024
            WIRE 864 1024 864 1280
            WIRE 864 1280 1104 1280
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 624 1120 800 1120
            WIRE 800 1120 800 1504
            WIRE 800 1504 1104 1504
        END BRANCH
        BEGIN INSTANCE XLXI_5 1104 1904 R0
        END INSTANCE
        BEGIN BRANCH XLXN_9
            WIRE 624 880 976 880
            WIRE 976 880 1104 880
            WIRE 976 880 976 1568
            WIRE 976 1568 1104 1568
        END BRANCH
        BEGIN INSTANCE XLXI_3 1104 1376 R0
        END INSTANCE
        BEGIN BRANCH XLXN_7
            WIRE 624 1072 832 1072
            WIRE 832 1072 832 1344
            WIRE 832 1344 1104 1344
        END BRANCH
        BEGIN BRANCH XLXN_11(19:0)
            WIRE 1488 880 2208 880
        END BRANCH
        INSTANCE XLXI_12 1904 2080 R0
        INSTANCE XLXI_13 1904 2240 R0
        BEGIN BRANCH XLXN_16
            WIRE 624 1184 784 1184
            WIRE 784 1184 784 2352
            WIRE 784 2352 1136 2352
        END BRANCH
        BEGIN BRANCH XLXN_17
            WIRE 624 1248 688 1248
            WIRE 688 1248 688 2048
            WIRE 688 2048 1584 2048
            WIRE 1584 2048 1584 2224
            WIRE 1520 2224 1584 2224
        END BRANCH
        BEGIN BRANCH IRQ(7:0)
            WIRE 512 2608 1136 2608
        END BRANCH
        IOMARKER 512 2608 IRQ(7:0) R180 28
        INSTANCE XLXI_8 1904 1552 R0
        INSTANCE XLXI_9 1904 1712 R0
        BEGIN BRANCH WR
            WIRE 1824 1536 1888 1536
            WIRE 1888 1536 1888 1584
            WIRE 1888 1584 1904 1584
            WIRE 1888 1488 1904 1488
            WIRE 1888 1488 1888 1536
            BEGIN DISPLAY 1824 1536 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 1488 1504 1696 1504
            WIRE 1696 1504 1696 1952
            WIRE 1696 1952 1904 1952
            WIRE 1696 1424 1904 1424
            WIRE 1696 1424 1696 1504
        END BRANCH
        BEGIN BRANCH Clk
            WIRE 976 1744 1008 1744
            WIRE 1008 1744 1104 1744
            WIRE 1008 1744 1008 2288
            WIRE 1008 2288 1136 2288
        END BRANCH
        IOMARKER 976 1744 Clk R180 28
        BEGIN BRANCH ResetIN
            WIRE 976 1872 1104 1872
        END BRANCH
        IOMARKER 976 1872 ResetIN R180 28
        BEGIN BRANCH XLXN_25
            WIRE 176 1360 240 1360
            WIRE 176 1360 176 1952
            WIRE 176 1952 1120 1952
            WIRE 1120 1952 1536 1952
            WIRE 1120 1952 1120 2224
            WIRE 1120 2224 1136 2224
            WIRE 1488 1872 1536 1872
            WIRE 1536 1872 1536 1952
        END BRANCH
        BEGIN INSTANCE XLXI_18 3408 752 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_22 3408 1904 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_24 3392 2432 R0
        END INSTANCE
        BEGIN BRANCH XLXN_27
            WIRE 624 1312 672 1312
            WIRE 672 1312 672 1440
            WIRE 672 1440 1552 1440
            WIRE 1552 1440 1552 1744
            WIRE 1488 1744 1552 1744
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 224 784 240 784
            WIRE 224 784 224 1424
            WIRE 224 1424 1536 1424
            WIRE 1536 1424 1536 1808
            WIRE 1488 1808 1536 1808
        END BRANCH
        BEGIN BRANCH RD
            WIRE 1840 2064 1888 2064
            WIRE 1888 2064 1888 2112
            WIRE 1888 2112 1904 2112
            WIRE 1888 2016 1904 2016
            WIRE 1888 2016 1888 2064
            BEGIN DISPLAY 1840 2064 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RD
            WIRE 624 1360 816 1360
            WIRE 816 1360 816 2416
            WIRE 816 2416 1136 2416
        END BRANCH
        BEGIN BRANCH WR
            WIRE 1056 2480 1136 2480
            BEGIN DISPLAY 1056 2480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Ad(0)
            WIRE 1840 1648 1904 1648
            BEGIN DISPLAY 1840 1648 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Ad(0)
            WIRE 1840 2176 1856 2176
            WIRE 1856 2176 1904 2176
            BEGIN DISPLAY 1857 2176 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_19 3424 1344 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_20 3888 864 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_21 3872 1472 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_23 3824 2016 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_25 3824 2560 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
