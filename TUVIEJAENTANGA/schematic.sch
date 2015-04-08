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
        SIGNAL MIO
        SIGNAL WR
        SIGNAL ADl(15:0)
        SIGNAL CHIPs(2:0)
        SIGNAL BHEL
        SIGNAL BHE
        SIGNAL CLK
        SIGNAL ReadyIN
        SIGNAL Reset
        SIGNAL ClkMicro
        SIGNAL ResetMicro
        SIGNAL HighW
        SIGNAL LowW
        SIGNAL RD
        SIGNAL RW
        SIGNAL INTA
        SIGNAL ADComp(0)
        SIGNAL INTR
        SIGNAL IRQ(7:0)
        SIGNAL ReadyMicro
        SIGNAL ADComp(19:0)
        SIGNAL Puertos(15:0)
        BEGIN SIGNAL Puertos(7:0)
        END SIGNAL
        PORT Input ADh(3:0)
        PORT Input Ale
        PORT Input DTR
        PORT Input MIO
        PORT Input WR
        PORT Input ADl(15:0)
        PORT Output CHIPs(2:0)
        PORT Input BHE
        PORT Input CLK
        PORT Input ReadyIN
        PORT Input Reset
        PORT Output ClkMicro
        PORT Output ResetMicro
        PORT Output HighW
        PORT Output LowW
        PORT Input RD
        PORT Input RW
        PORT Input INTA
        PORT Output INTR
        PORT Input IRQ(7:0)
        PORT Output ReadyMicro
        PORT Output ADComp(19:0)
        PORT BiDirectional Puertos(15:0)
        BEGIN BLOCKDEF Latch_De_Direcciones
            TIMESTAMP 2015 4 6 20 31 31
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
            TIMESTAMP 2015 4 6 20 31 32
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF Reg_de_Paginacion
            TIMESTAMP 2015 4 6 20 31 31
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
            TIMESTAMP 2015 4 6 20 31 32
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF ld
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 384 -256 320 -256 
            LINE N 0 -256 64 -256 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF IRQControl
            TIMESTAMP 2015 4 8 14 3 38
            RECTANGLE N 64 -512 320 -56 
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 320 -480 384 -480 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 0 -172 64 -148 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 Latch_De_Direcciones
            PIN ALE Ale
            PIN Dirh(3:0) ADh(3:0)
            PIN Dirl(15:0) ADl(15:0)
            PIN S(19:0) ADComp(19:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 Trans_Datos
            PIN Dtr DTR
            PIN Den BHE
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
        BEGIN BLOCK XLXI_13 ld
            PIN D BHE
            PIN G Ale
            PIN Q BHEL
        END BLOCK
        BEGIN BLOCK XLXI_14 IRQControl
            PIN Reset ResetMicro
            PIN Clk ClkMicro
            PIN IRQA INTA
            PIN RD RD
            PIN RW RW
            PIN IRQR INTR
            PIN IRQ(7:0) IRQ(7:0)
            PIN Dir(19:0) ADComp(19:0)
            PIN Data(7:0) Puertos(7:0)
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
        BEGIN BLOCK XLXI_6 Reloj
            PIN Clk CLK
            PIN IOReady ReadyIN
            PIN ResetIN Reset
            PIN Mclk ClkMicro
            PIN Ready ReadyMicro
            PIN ResetOUT ResetMicro
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH ADh(3:0)
            WIRE 256 992 352 992
            WIRE 352 912 624 912
            WIRE 352 912 352 992
        END BRANCH
        BEGIN BRANCH Ale
            WIRE 176 944 304 944
            WIRE 304 848 304 944
            WIRE 304 848 624 848
        END BRANCH
        BEGIN BRANCH DTR
            WIRE 192 1088 448 1088
            WIRE 448 1088 448 1152
            WIRE 448 1152 688 1152
        END BRANCH
        BEGIN BRANCH MIO
            WIRE 192 832 240 832
            WIRE 240 704 240 832
            WIRE 240 704 1424 704
            WIRE 1424 704 1424 848
            WIRE 1424 848 1600 848
        END BRANCH
        BEGIN BRANCH WR
            WIRE 192 896 272 896
            WIRE 272 736 272 896
            WIRE 272 736 1296 736
            WIRE 1296 736 1296 912
            WIRE 1296 912 1600 912
        END BRANCH
        BEGIN INSTANCE XLXI_3 1600 1072 R0
        END INSTANCE
        BEGIN BRANCH ADl(15:0)
            WIRE 256 1040 400 1040
            WIRE 400 976 400 1040
            WIRE 400 976 544 976
            WIRE 544 976 544 1040
            WIRE 544 1040 1120 1040
            WIRE 1120 1040 1600 1040
            WIRE 1120 1040 1120 1152
            WIRE 544 976 624 976
            WIRE 1072 1152 1120 1152
        END BRANCH
        BEGIN BRANCH CHIPs(2:0)
            WIRE 1984 848 2160 848
        END BRANCH
        IOMARKER 2128 944 ADComp(19:0) R0 28
        IOMARKER 2144 1040 Puertos(15:0) R0 28
        BEGIN BRANCH BHEL
            WIRE 848 1344 1200 1344
            WIRE 1200 1344 1200 1360
            WIRE 1200 1360 1376 1360
            BEGIN DISPLAY 1200 1360 ATTR Name
                ALIGNMENT SOFT-TCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BHE
            WIRE 192 1184 448 1184
            WIRE 448 1184 448 1216
            WIRE 448 1216 448 1344
            WIRE 448 1344 464 1344
            WIRE 448 1216 688 1216
        END BRANCH
        BEGIN BRANCH Ale
            WIRE 432 1472 464 1472
            BEGIN DISPLAY 432 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH CLK
            WIRE 192 1136 352 1136
            WIRE 352 1136 352 1648
            WIRE 352 1648 496 1648
        END BRANCH
        BEGIN BRANCH Reset
            WIRE 208 1280 224 1280
            WIRE 224 1280 224 1776
            WIRE 224 1776 496 1776
        END BRANCH
        BEGIN BRANCH HighW
            WIRE 1632 1392 1872 1392
            WIRE 1872 1392 2112 1392
            WIRE 2112 1136 2224 1136
            WIRE 2112 1136 2112 1392
            BEGIN DISPLAY 1872 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH LowW
            WIRE 1632 1520 1888 1520
            WIRE 1888 1520 2176 1520
            WIRE 2176 1216 2240 1216
            WIRE 2176 1216 2176 1520
            BEGIN DISPLAY 1888 1520 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2160 848 CHIPs(2:0) R0 28
        IOMARKER 2224 1136 HighW R0 28
        IOMARKER 2240 1216 LowW R0 28
        IOMARKER 192 1184 BHE R180 28
        IOMARKER 192 1088 DTR R180 28
        IOMARKER 256 1040 ADl(15:0) R180 28
        IOMARKER 256 992 ADh(3:0) R180 28
        IOMARKER 176 944 Ale R180 28
        IOMARKER 192 896 WR R180 28
        BEGIN INSTANCE XLXI_1 624 1008 R0
        END INSTANCE
        IOMARKER 192 832 MIO R180 28
        BEGIN BRANCH RW
            WIRE 176 2224 512 2224
        END BRANCH
        BEGIN BRANCH WR
            WIRE 1232 1472 1344 1472
            WIRE 1344 1472 1344 1488
            WIRE 1344 1488 1376 1488
            WIRE 1344 1424 1376 1424
            WIRE 1344 1424 1344 1472
            BEGIN DISPLAY 1232 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ADComp(0)
            WIRE 1216 1552 1376 1552
            BEGIN DISPLAY 1216 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INTR
            WIRE 896 1968 912 1968
        END BRANCH
        BEGIN INSTANCE XLXI_2 688 1248 R0
        END INSTANCE
        INSTANCE XLXI_4 1376 1488 R0
        INSTANCE XLXI_5 1376 1616 R0
        BEGIN BRANCH ReadyIN
            WIRE 240 1232 256 1232
            WIRE 256 1232 256 1712
            WIRE 256 1712 496 1712
        END BRANCH
        BEGIN BRANCH ReadyMicro
            WIRE 880 1712 1024 1712
        END BRANCH
        BEGIN BRANCH IRQ(7:0)
            WIRE 192 2288 512 2288
        END BRANCH
        BEGIN BRANCH INTA
            WIRE 192 2096 512 2096
        END BRANCH
        BEGIN BRANCH ClkMicro
            WIRE 448 1840 960 1840
            WIRE 448 1840 448 2032
            WIRE 448 2032 512 2032
            WIRE 880 1648 960 1648
            WIRE 960 1648 960 1840
            WIRE 960 1648 1024 1648
        END BRANCH
        BEGIN BRANCH ResetMicro
            WIRE 480 1856 1008 1856
            WIRE 480 1856 480 1968
            WIRE 480 1968 512 1968
            WIRE 880 1776 1008 1776
            WIRE 1008 1776 1024 1776
            WIRE 1008 1776 1008 1856
        END BRANCH
        BEGIN INSTANCE XLXI_14 512 2448 R0
        END INSTANCE
        IOMARKER 192 2096 INTA R180 28
        IOMARKER 192 2288 IRQ(7:0) R180 28
        IOMARKER 176 2224 RW R180 28
        IOMARKER 912 1968 INTR R0 28
        IOMARKER 192 1136 CLK R180 28
        IOMARKER 240 1232 ReadyIN R180 28
        IOMARKER 208 1280 Reset R180 28
        BEGIN BRANCH RD
            WIRE 192 2160 496 2160
            WIRE 496 2160 512 2160
        END BRANCH
        IOMARKER 192 2160 RD R180 28
        INSTANCE XLXI_13 464 1600 R0
        BEGIN INSTANCE XLXI_6 496 1808 R0
        END INSTANCE
        IOMARKER 1024 1648 ClkMicro R0 28
        IOMARKER 1024 1712 ReadyMicro R0 28
        IOMARKER 1024 1776 ResetMicro R0 28
        BEGIN BRANCH ADComp(19:0)
            WIRE 496 2352 496 2416
            WIRE 496 2416 1792 2416
            WIRE 496 2352 512 2352
            WIRE 1008 848 1248 848
            WIRE 1248 848 1248 976
            WIRE 1248 976 1248 1136
            WIRE 1248 1136 1792 1136
            WIRE 1792 1136 1984 1136
            WIRE 1792 1136 1792 2416
            WIRE 1248 976 1600 976
            WIRE 1984 944 1984 1136
            WIRE 1984 944 2128 944
        END BRANCH
        BEGIN BRANCH Puertos(15:0)
            WIRE 1072 1216 2048 1216
            WIRE 2048 1040 2048 1216
            WIRE 2048 1040 2144 1040
        END BRANCH
        BEGIN BRANCH Puertos(7:0)
            WIRE 896 2352 1072 2352
        END BRANCH
    END SHEET
END SCHEMATIC
