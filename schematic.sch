VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL ADh(3:0)
        SIGNAL Ale
        SIGNAL DTR
        SIGNAL DEN
        SIGNAL ADComp(19:0)
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
        SIGNAL ClkMicro
        SIGNAL ReadyMicro
        SIGNAL ResetMicro
        SIGNAL HighW
        SIGNAL LowW
        SIGNAL RD
        SIGNAL IRQ(7:0)
        SIGNAL INTA
        BEGIN SIGNAL Puertos(7:0)
        END SIGNAL
        SIGNAL ADComp(0)
        SIGNAL INTR
        PORT Input ADh(3:0)
        PORT Input Ale
        PORT Input DTR
        PORT Input DEN
        PORT Output ADComp(19:0)
        PORT Input MIO
        PORT Input WR
        PORT Input ADl(15:0)
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
        PORT Input RD
        PORT Input IRQ(7:0)
        PORT Input INTA
        PORT Output INTR
        BEGIN BLOCKDEF Latch_De_Direcciones
            TIMESTAMP 2015 4 1 14 40 53
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
            TIMESTAMP 2015 4 1 14 40 53
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF Reg_de_Paginacion
            TIMESTAMP 2015 4 1 14 40 53
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
            TIMESTAMP 2015 4 1 22 34 44
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF IRQControl
            TIMESTAMP 2015 4 9 0 13 33
            LINE N 64 32 0 32 
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
        BEGIN BLOCK XLXI_1 Latch_De_Direcciones
            PIN ALE Ale
            PIN Dirh(3:0) ADh(3:0)
            PIN Dirl(15:0) ADl(15:0)
            PIN S(19:0) ADComp(19:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 Trans_Datos
            PIN Dtr DTR
            PIN Den DEN
            PIN Datin(15:0) ADl(15:0)
            PIN Datout(15:0) Puertos(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 Reg_de_Paginacion
            PIN IO MIO
            PIN WR WR
            PIN Direccion(19:0) ADComp(19:0)
            PIN Entrada(15:0) ADl(15:0)
            PIN S(2:0) CHIPs(2:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 Reloj
            PIN Clk CLK
            PIN IOReady ReadyIN
            PIN ResetIN Reset
            PIN Mclk ClkMicro
            PIN Ready ReadyMicro
            PIN ResetOUT ResetMicro
        END BLOCK
        BEGIN BLOCK XLXI_14 IRQControl
            PIN Reset ResetMicro
            PIN Clk ClkMicro
            PIN IRQA INTA
            PIN RD RD
            PIN RW WR
            PIN ChS MIO
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
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH ADh(3:0)
            WIRE 160 992 336 992
            WIRE 336 912 336 992
            WIRE 336 912 624 912
        END BRANCH
        BEGIN BRANCH Ale
            WIRE 176 944 320 944
            WIRE 320 848 320 944
            WIRE 320 848 624 848
        END BRANCH
        BEGIN BRANCH DTR
            WIRE 192 1088 672 1088
            WIRE 672 1088 672 1200
            WIRE 672 1200 688 1200
        END BRANCH
        BEGIN BRANCH DEN
            WIRE 192 1136 512 1136
            WIRE 512 1136 512 1264
            WIRE 512 1264 688 1264
        END BRANCH
        BEGIN BRANCH ADComp(19:0)
            WIRE 320 1968 1792 1968
            WIRE 320 1968 320 2560
            WIRE 320 2560 496 2560
            WIRE 1008 848 1248 848
            WIRE 1248 848 1248 976
            WIRE 1248 976 1248 1136
            WIRE 1248 1136 1792 1136
            WIRE 1792 1136 1984 1136
            WIRE 1792 1136 1792 1968
            WIRE 1248 976 1600 976
            WIRE 1984 944 1984 1136
            WIRE 1984 944 2128 944
        END BRANCH
        BEGIN BRANCH MIO
            WIRE 192 832 240 832
            WIRE 240 672 240 832
            WIRE 240 672 1424 672
            WIRE 1424 672 1424 848
            WIRE 1424 848 1600 848
        END BRANCH
        BEGIN BRANCH WR
            WIRE 192 896 272 896
            WIRE 272 896 272 2368
            WIRE 272 2368 496 2368
            WIRE 272 736 272 896
            WIRE 272 736 1296 736
            WIRE 1296 736 1296 912
            WIRE 1296 912 1600 912
        END BRANCH
        BEGIN INSTANCE XLXI_3 1600 1072 R0
        END INSTANCE
        BEGIN BRANCH ADl(15:0)
            WIRE 160 1040 368 1040
            WIRE 368 976 368 1040
            WIRE 368 976 544 976
            WIRE 544 976 544 1040
            WIRE 544 1040 1120 1040
            WIRE 1120 1040 1600 1040
            WIRE 1120 1040 1120 1200
            WIRE 544 976 624 976
            WIRE 1072 1200 1120 1200
        END BRANCH
        BEGIN BRANCH Puertos(15:0)
            WIRE 1072 1264 2064 1264
            WIRE 2064 1040 2064 1264
            WIRE 2064 1040 2144 1040
        END BRANCH
        BEGIN BRANCH CHIPs(2:0)
            WIRE 1984 848 2160 848
        END BRANCH
        BEGIN INSTANCE XLXI_2 688 1296 R0
        END INSTANCE
        IOMARKER 2128 944 ADComp(19:0) R0 28
        IOMARKER 2144 1040 Puertos(15:0) R0 28
        BEGIN BRANCH BHEL
            WIRE 880 1440 1200 1440
            WIRE 1200 1440 1200 1456
            WIRE 1200 1456 1408 1456
            BEGIN DISPLAY 1200 1456 ATTR Name
                ALIGNMENT SOFT-TCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BHE
            WIRE 192 1184 352 1184
            WIRE 352 1184 352 1440
            WIRE 352 1440 496 1440
        END BRANCH
        BEGIN INSTANCE XLXI_6 496 1872 R0
        END INSTANCE
        BEGIN BRANCH CLK
            WIRE 192 1232 336 1232
            WIRE 336 1232 336 1712
            WIRE 336 1712 496 1712
        END BRANCH
        BEGIN BRANCH ReadyIN
            WIRE 240 1296 304 1296
            WIRE 304 1296 304 1776
            WIRE 304 1776 496 1776
        END BRANCH
        BEGIN BRANCH Reset
            WIRE 208 1360 288 1360
            WIRE 288 1360 288 1840
            WIRE 288 1840 496 1840
        END BRANCH
        BEGIN BRANCH ClkMicro
            WIRE 400 1904 960 1904
            WIRE 400 1904 400 2176
            WIRE 400 2176 496 2176
            WIRE 880 1712 960 1712
            WIRE 960 1712 1104 1712
            WIRE 960 1712 960 1904
        END BRANCH
        BEGIN BRANCH ReadyMicro
            WIRE 880 1776 1104 1776
        END BRANCH
        BEGIN BRANCH ResetMicro
            WIRE 464 1936 1008 1936
            WIRE 464 1936 464 2112
            WIRE 464 2112 496 2112
            WIRE 880 1840 1008 1840
            WIRE 1008 1840 1088 1840
            WIRE 1008 1840 1008 1936
        END BRANCH
        IOMARKER 1104 1712 ClkMicro R0 28
        IOMARKER 1104 1776 ReadyMicro R0 28
        IOMARKER 1088 1840 ResetMicro R0 28
        BEGIN BRANCH HighW
            WIRE 1664 1488 1872 1488
            WIRE 1872 1488 2112 1488
            WIRE 2112 1136 2224 1136
            WIRE 2112 1136 2112 1488
            BEGIN DISPLAY 1872 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH LowW
            WIRE 1664 1632 1888 1632
            WIRE 1888 1632 2176 1632
            WIRE 2176 1216 2240 1216
            WIRE 2176 1216 2176 1632
            BEGIN DISPLAY 1888 1632 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2160 848 CHIPs(2:0) R0 28
        IOMARKER 2224 1136 HighW R0 28
        IOMARKER 2240 1216 LowW R0 28
        IOMARKER 240 1296 ReadyIN R180 28
        IOMARKER 208 1360 Reset R180 28
        IOMARKER 192 1232 CLK R180 28
        IOMARKER 192 1184 BHE R180 28
        IOMARKER 192 1136 DEN R180 28
        IOMARKER 192 1088 DTR R180 28
        IOMARKER 192 896 WR R180 28
        BEGIN INSTANCE XLXI_1 624 1008 R0
        END INSTANCE
        IOMARKER 192 832 MIO R180 28
        BEGIN INSTANCE XLXI_14 496 2592 R0
        END INSTANCE
        BEGIN BRANCH RD
            WIRE 192 2304 480 2304
            WIRE 480 2304 496 2304
        END BRANCH
        BEGIN BRANCH IRQ(7:0)
            WIRE 256 2496 480 2496
            WIRE 480 2496 496 2496
        END BRANCH
        BEGIN BRANCH INTA
            WIRE 208 2240 480 2240
            WIRE 480 2240 496 2240
        END BRANCH
        BEGIN BRANCH Puertos(7:0)
            WIRE 880 2560 1040 2560
            BEGIN DISPLAY 1040 2560 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WR
            WIRE 1232 1568 1344 1568
            WIRE 1344 1568 1344 1600
            WIRE 1344 1600 1408 1600
            WIRE 1344 1520 1408 1520
            WIRE 1344 1520 1344 1568
            BEGIN DISPLAY 1232 1568 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ADComp(0)
            WIRE 1216 1664 1216 1664
            WIRE 1216 1664 1408 1664
            BEGIN DISPLAY 1224 1664 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_4 1408 1584 R0
        INSTANCE XLXI_5 1408 1728 R0
        IOMARKER 256 2496 IRQ(7:0) R180 28
        BEGIN BRANCH INTR
            WIRE 880 2112 896 2112
            WIRE 896 2112 1056 2112
        END BRANCH
        IOMARKER 208 2240 INTA R180 28
        IOMARKER 192 2304 RD R180 28
        IOMARKER 160 1040 ADl(15:0) R180 28
        IOMARKER 176 944 Ale R180 28
        IOMARKER 160 992 ADh(3:0) R180 28
        BEGIN BRANCH MIO
            WIRE 240 2624 256 2624
            WIRE 256 2624 496 2624
            BEGIN DISPLAY 240 2624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 1056 2112 INTR R0 28
    END SHEET
END SCHEMATIC
