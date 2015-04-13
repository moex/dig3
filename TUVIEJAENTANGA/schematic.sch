VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL ADh(3:0)
        SIGNAL XLXN_106(3:0)
        SIGNAL Ale
        SIGNAL DTR
        SIGNAL DEN
        SIGNAL ADComp(19:0)
        SIGNAL XLXN_111(19:0)
        SIGNAL MIO
        SIGNAL WR
        SIGNAL ADl(15:0)
        SIGNAL Puertos(15:0)
        SIGNAL CHIPs(2:0)
        SIGNAL BHEL
        SIGNAL BHE
        SIGNAL CLK
        SIGNAL ReadyIN
        SIGNAL Reset
        SIGNAL XLXN_123
        SIGNAL ClkMicro
        SIGNAL ReadyMicro
        SIGNAL XLXN_126
        SIGNAL ResetMicro
        SIGNAL HighW
        SIGNAL LowW
        SIGNAL RW
        SIGNAL IRQ(7:0)
        SIGNAL INTA
        SIGNAL Puertos(7:0)
        SIGNAL ADComp(0)
        SIGNAL RD
        SIGNAL HighR
        SIGNAL XLXN_138
        SIGNAL LowR
        SIGNAL INTR
        SIGNAL XLXN_141
        SIGNAL XLXN_143
        SIGNAL XLXN_144
        SIGNAL XLXN_145
        SIGNAL XLXN_146
        SIGNAL XLXN_147
        SIGNAL XLXN_148
        SIGNAL XLXN_149
        SIGNAL XLXN_150
        SIGNAL XLXN_151
        SIGNAL XLXN_152
        SIGNAL XLXN_153
        SIGNAL XLXN_154
        SIGNAL XLXN_155
        SIGNAL XLXN_156
        SIGNAL XLXN_157
        SIGNAL XLXN_158
        SIGNAL XLXN_161
        PORT Input ADh(3:0)
        PORT Input Ale
        PORT Input DTR
        PORT Input DEN
        PORT Output ADComp(19:0)
        PORT Input MIO
        PORT Input WR
        PORT BiDirectional ADl(15:0)
        PORT BiDirectional Puertos(15:0)
        PORT Output CHIPs(2:0)
        PORT Input BHE
        PORT Input CLK
        PORT Input ReadyIN
        PORT Input Reset
        PORT Output ClkMicro
        PORT Output ReadyMicro
        PORT Output ResetMicro
        PORT Output HighW
        PORT Output LowW
        PORT Input RW
        PORT Input IRQ(7:0)
        PORT Input INTA
        PORT Input RD
        PORT Output HighR
        PORT Output LowR
        PORT Output INTR
        BEGIN BLOCKDEF Latch_De_Direcciones
            TIMESTAMP 2015 4 13 20 44 44
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
            TIMESTAMP 2015 4 13 20 44 44
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF Reg_de_Paginacion
            TIMESTAMP 2015 4 13 20 44 44
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
        BEGIN BLOCKDEF Reloj
            TIMESTAMP 2015 4 13 20 44 44
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF IRQControl
            TIMESTAMP 2015 4 13 23 22 41
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
        BEGIN BLOCKDEF LatchBHE
            TIMESTAMP 2015 4 13 22 18 43
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCK XLXI_3 Reg_de_Paginacion
            PIN IO MIO
            PIN WR WR
            PIN Direccion(19:0) ADComp(19:0)
            PIN Entrada(15:0) ADl(15:0)
            PIN S(2:0) CHIPs(2:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 Trans_Datos
            PIN Dtr DTR
            PIN Den DEN
            PIN Datin(15:0) ADl(15:0)
            PIN Datout(15:0) Puertos(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 Reloj
            PIN Clk CLK
            PIN IOReady ReadyIN
            PIN ResetIN Reset
            PIN Mclk ClkMicro
            PIN Ready ReadyMicro
            PIN ResetOUT ResetMicro
        END BLOCK
        BEGIN BLOCK XLXI_1 Latch_De_Direcciones
            PIN ALE Ale
            PIN Dirh(3:0) ADh(3:0)
            PIN Dirl(15:0) ADl(15:0)
            PIN S(19:0) ADComp(19:0)
        END BLOCK
        BEGIN BLOCK XLXI_14 IRQControl
            PIN Reset ResetMicro
            PIN Clk ClkMicro
            PIN IRQA INTA
            PIN RD RD
            PIN RW RW
            PIN IRQ(7:0) IRQ(7:0)
            PIN Dir(19:0) ADComp(19:0)
            PIN Data(7:0) Puertos(7:0)
            PIN IRQR INTR
        END BLOCK
        BEGIN BLOCK XLXI_4 or2
            PIN I0 WR
            PIN I1 BHEL
            PIN O HighW
        END BLOCK
        BEGIN BLOCK XLXI_5 or2
            PIN I0 ADComp(0)
            PIN I1 WR
            PIN O LowW
        END BLOCK
        BEGIN BLOCK XLXI_15 LatchBHE
            PIN BHE BHE
            PIN Ale Ale
            PIN BHEL BHEL
        END BLOCK
        BEGIN BLOCK XLXI_16 or2
            PIN I0 RD
            PIN I1 BHEL
            PIN O HighR
        END BLOCK
        BEGIN BLOCK XLXI_17 or2
            PIN I0 ADComp(0)
            PIN I1 RD
            PIN O LowR
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH ADh(3:0)
            WIRE 416 544 560 544
            WIRE 560 464 1056 464
            WIRE 560 464 560 544
        END BRANCH
        BEGIN BRANCH Ale
            WIRE 336 496 496 496
            WIRE 496 400 496 496
            WIRE 496 400 1056 400
        END BRANCH
        BEGIN BRANCH DTR
            WIRE 352 640 1104 640
            WIRE 1104 640 1104 752
            WIRE 1104 752 1120 752
        END BRANCH
        BEGIN BRANCH DEN
            WIRE 352 688 1040 688
            WIRE 1040 688 1040 816
            WIRE 1040 816 1120 816
        END BRANCH
        BEGIN BRANCH ADComp(19:0)
            WIRE 864 2112 864 2256
            WIRE 864 2256 2416 2256
            WIRE 864 2112 928 2112
            WIRE 1440 400 1552 400
            WIRE 1552 400 1552 528
            WIRE 1552 528 1680 528
            WIRE 1680 528 1680 688
            WIRE 1680 688 2416 688
            WIRE 2416 688 2416 2256
            WIRE 1680 528 2032 528
            WIRE 2416 496 2416 688
            WIRE 2416 496 2560 496
        END BRANCH
        BEGIN BRANCH MIO
            WIRE 352 384 416 384
            WIRE 416 256 1696 256
            WIRE 1696 256 1696 400
            WIRE 1696 400 2032 400
            WIRE 416 256 416 384
        END BRANCH
        BEGIN BRANCH WR
            WIRE 352 448 464 448
            WIRE 464 288 464 448
            WIRE 464 288 1632 288
            WIRE 1632 288 1632 464
            WIRE 1632 464 2032 464
        END BRANCH
        BEGIN INSTANCE XLXI_3 2032 624 R0
        END INSTANCE
        BEGIN BRANCH ADl(15:0)
            WIRE 416 592 688 592
            WIRE 688 528 688 592
            WIRE 688 528 976 528
            WIRE 976 528 976 592
            WIRE 976 592 1552 592
            WIRE 1552 592 2032 592
            WIRE 1552 592 1552 752
            WIRE 976 528 1056 528
            WIRE 1504 752 1552 752
        END BRANCH
        BEGIN BRANCH Puertos(15:0)
            WIRE 1504 816 2160 816
            WIRE 2160 816 2496 816
            WIRE 2496 592 2496 816
            WIRE 2496 592 2576 592
        END BRANCH
        BEGIN BRANCH CHIPs(2:0)
            WIRE 2416 400 2592 400
        END BRANCH
        BEGIN INSTANCE XLXI_2 1120 848 R0
        END INSTANCE
        BEGIN BRANCH BHEL
            WIRE 1360 1008 1632 1008
            WIRE 1632 1008 1792 1008
            WIRE 1792 1008 1840 1008
            WIRE 1792 1008 1792 1488
            WIRE 1792 1488 1840 1488
            BEGIN DISPLAY 1632 1008 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BHE
            WIRE 352 736 960 736
            WIRE 960 736 960 1008
            WIRE 960 1008 976 1008
        END BRANCH
        BEGIN BRANCH Ale
            WIRE 880 1072 976 1072
            BEGIN DISPLAY 880 1072 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_6 928 1424 R0
        END INSTANCE
        BEGIN BRANCH CLK
            WIRE 352 784 800 784
            WIRE 800 784 800 1264
            WIRE 800 1264 928 1264
        END BRANCH
        BEGIN BRANCH ReadyIN
            WIRE 400 848 736 848
            WIRE 736 848 736 1328
            WIRE 736 1328 928 1328
        END BRANCH
        BEGIN BRANCH Reset
            WIRE 368 912 640 912
            WIRE 640 912 640 1392
            WIRE 640 1392 928 1392
        END BRANCH
        BEGIN BRANCH ClkMicro
            WIRE 832 1472 832 1728
            WIRE 832 1728 928 1728
            WIRE 832 1472 1392 1472
            WIRE 1312 1264 1392 1264
            WIRE 1392 1264 1392 1472
            WIRE 1392 1264 2688 1264
        END BRANCH
        BEGIN BRANCH ReadyMicro
            WIRE 1312 1328 1328 1328
            WIRE 1328 1328 2688 1328
        END BRANCH
        BEGIN BRANCH ResetMicro
            WIRE 896 1536 1440 1536
            WIRE 896 1536 896 1664
            WIRE 896 1664 928 1664
            WIRE 1312 1392 1440 1392
            WIRE 1440 1392 1440 1536
            WIRE 1440 1392 2672 1392
        END BRANCH
        BEGIN BRANCH HighW
            WIRE 2096 1040 2224 1040
            WIRE 2224 1040 2528 1040
            WIRE 2528 688 2528 1040
            WIRE 2528 688 2656 688
            BEGIN DISPLAY 2224 1040 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH LowW
            WIRE 2096 1184 2224 1184
            WIRE 2224 1184 2560 1184
            WIRE 2560 768 2560 1184
            WIRE 2560 768 2672 768
            BEGIN DISPLAY 2224 1184 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_1 1056 560 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_14 928 2144 R0
        END INSTANCE
        BEGIN BRANCH RW
            WIRE 368 1200 496 1200
            WIRE 496 1200 496 1920
            WIRE 496 1920 928 1920
        END BRANCH
        BEGIN BRANCH IRQ(7:0)
            WIRE 416 1280 464 1280
            WIRE 464 1280 464 2048
            WIRE 464 2048 928 2048
        END BRANCH
        BEGIN BRANCH INTA
            WIRE 368 1024 592 1024
            WIRE 592 1024 592 1792
            WIRE 592 1792 928 1792
        END BRANCH
        BEGIN BRANCH Puertos(7:0)
            WIRE 1312 2112 1472 2112
            WIRE 1472 2112 2160 2112
            WIRE 2160 912 2160 2112
        END BRANCH
        BEGIN BRANCH WR
            WIRE 1664 1104 1840 1104
            WIRE 1840 1104 1840 1152
            WIRE 1840 1072 1840 1104
            BEGIN DISPLAY 1664 1104 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ADComp(0)
            WIRE 1648 1216 1744 1216
            WIRE 1744 1216 1840 1216
            WIRE 1744 1216 1744 1696
            WIRE 1744 1696 1840 1696
            BEGIN DISPLAY 1648 1216 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_4 1840 1136 R0
        INSTANCE XLXI_5 1840 1280 R0
        BEGIN BRANCH RD
            WIRE 352 1104 544 1104
            WIRE 544 1104 544 1856
            WIRE 544 1856 928 1856
        END BRANCH
        BEGIN BRANCH HighR
            WIRE 2096 1520 2592 1520
            WIRE 2592 832 2592 1520
            WIRE 2592 832 2672 832
        END BRANCH
        BEGIN BRANCH LowR
            WIRE 2096 1664 2624 1664
            WIRE 2624 896 2624 1664
            WIRE 2624 896 2688 896
        END BRANCH
        BEGIN INSTANCE XLXI_15 976 1104 R0
        END INSTANCE
        BEGIN BRANCH INTR
            WIRE 1312 1664 1424 1664
        END BRANCH
        IOMARKER 2560 496 ADComp(19:0) R0 28
        IOMARKER 2576 592 Puertos(15:0) R0 28
        IOMARKER 2592 400 CHIPs(2:0) R0 28
        IOMARKER 2656 688 HighW R0 28
        IOMARKER 2672 768 LowW R0 28
        IOMARKER 1424 1664 INTR R0 28
        IOMARKER 2672 832 HighR R0 28
        IOMARKER 2688 896 LowR R0 28
        IOMARKER 400 848 ReadyIN R180 28
        IOMARKER 368 912 Reset R180 28
        IOMARKER 352 784 CLK R180 28
        IOMARKER 352 736 BHE R180 28
        IOMARKER 352 688 DEN R180 28
        IOMARKER 352 640 DTR R180 28
        IOMARKER 416 544 ADh(3:0) R180 28
        IOMARKER 336 496 Ale R180 28
        IOMARKER 352 448 WR R180 28
        IOMARKER 352 384 MIO R180 28
        IOMARKER 368 1024 INTA R180 28
        IOMARKER 352 1104 RD R180 28
        IOMARKER 368 1200 RW R180 28
        IOMARKER 416 1280 IRQ(7:0) R180 28
        INSTANCE XLXI_17 1840 1760 R0
        INSTANCE XLXI_16 1840 1616 R0
        BEGIN BRANCH RD
            WIRE 1600 1600 1824 1600
            WIRE 1824 1600 1824 1632
            WIRE 1824 1632 1840 1632
            WIRE 1824 1552 1840 1552
            WIRE 1824 1552 1824 1600
            BEGIN DISPLAY 1600 1600 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 2688 1264 ClkMicro R0 28
        IOMARKER 2688 1328 ReadyMicro R0 28
        IOMARKER 2672 1392 ResetMicro R0 28
        IOMARKER 416 592 ADl(15:0) R180 28
        BUSTAP 2160 816 2160 912
    END SHEET
END SCHEMATIC
