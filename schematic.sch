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
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_34
        SIGNAL XLXN_35(19:0)
        SIGNAL XLXN_36
        SIGNAL XLXN_37
        SIGNAL XLXN_38
        SIGNAL XLXN_42
        SIGNAL ADComp(0)
        SIGNAL BHEL
        SIGNAL BHE
        SIGNAL XLXN_47
        SIGNAL XLXN_48
        SIGNAL XLXN_49
        SIGNAL XLXN_50
        SIGNAL XLXN_51
        SIGNAL XLXN_52
        SIGNAL XLXN_54
        SIGNAL CLK
        SIGNAL ReadyIN
        SIGNAL Reset
        SIGNAL ClkMicro
        SIGNAL ReadyMicro
        SIGNAL ResetMicro
        SIGNAL HighW
        SIGNAL LowW
        SIGNAL XLXN_63
        SIGNAL XLXN_64
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
            TIMESTAMP 2015 4 1 17 39 2
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
        BEGIN BLOCK XLXI_13 ld
            PIN D BHE
            PIN G Ale
            PIN Q BHEL
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
            WIRE 256 912 656 912
        END BRANCH
        BEGIN BRANCH Ale
            WIRE 176 848 656 848
        END BRANCH
        BEGIN BRANCH DTR
            WIRE 208 1088 576 1088
            WIRE 576 1088 576 1200
            WIRE 576 1200 688 1200
        END BRANCH
        BEGIN BRANCH DEN
            WIRE 192 1136 512 1136
            WIRE 512 1136 512 1264
            WIRE 512 1264 688 1264
        END BRANCH
        BEGIN BRANCH ADComp(19:0)
            WIRE 1040 848 1248 848
            WIRE 1248 848 1248 976
            WIRE 1248 976 1248 1136
            WIRE 1248 1136 1984 1136
            WIRE 1248 976 1600 976
            WIRE 1984 944 1984 1136
            WIRE 1984 944 2128 944
        END BRANCH
        BEGIN BRANCH MIO
            WIRE 192 720 1504 720
            WIRE 1504 720 1504 848
            WIRE 1504 848 1600 848
        END BRANCH
        BEGIN BRANCH WR
            WIRE 192 784 1408 784
            WIRE 1408 784 1408 912
            WIRE 1408 912 1600 912
        END BRANCH
        BEGIN INSTANCE XLXI_3 1600 1072 R0
        END INSTANCE
        BEGIN BRANCH ADl(15:0)
            WIRE 272 976 544 976
            WIRE 544 976 656 976
            WIRE 544 976 544 1040
            WIRE 544 1040 1120 1040
            WIRE 1120 1040 1600 1040
            WIRE 1120 1040 1120 1200
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
        IOMARKER 272 976 ADl(15:0) R180 28
        BEGIN INSTANCE XLXI_2 688 1296 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_1 656 1008 R0
        END INSTANCE
        IOMARKER 2128 944 ADComp(19:0) R0 28
        IOMARKER 2144 1040 Puertos(15:0) R0 28
        BEGIN BRANCH WR
            WIRE 1232 1472 1344 1472
            WIRE 1344 1472 1344 1504
            WIRE 1344 1504 1408 1504
            WIRE 1344 1424 1408 1424
            WIRE 1344 1424 1344 1472
            BEGIN DISPLAY 1232 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ADComp(0)
            WIRE 1216 1568 1216 1568
            WIRE 1216 1568 1408 1568
            BEGIN DISPLAY 1224 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BHEL
            WIRE 880 1360 880 1424
            WIRE 880 1360 1200 1360
            WIRE 1200 1360 1408 1360
            BEGIN DISPLAY 1200 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_13 496 1680 R0
        BEGIN BRANCH BHE
            WIRE 192 1184 416 1184
            WIRE 416 1184 416 1424
            WIRE 416 1424 496 1424
        END BRANCH
        INSTANCE XLXI_4 1408 1488 R0
        INSTANCE XLXI_5 1408 1632 R0
        BEGIN BRANCH Ale
            WIRE 384 1552 496 1552
            BEGIN DISPLAY 384 1552 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 256 912 ADh(3:0) R180 28
        IOMARKER 176 848 Ale R180 28
        IOMARKER 192 784 WR R180 28
        IOMARKER 192 720 MIO R180 28
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
            WIRE 208 1360 256 1360
            WIRE 256 1360 256 1840
            WIRE 256 1840 496 1840
        END BRANCH
        BEGIN BRANCH ClkMicro
            WIRE 880 1712 1104 1712
        END BRANCH
        BEGIN BRANCH ReadyMicro
            WIRE 880 1776 1104 1776
        END BRANCH
        BEGIN BRANCH ResetMicro
            WIRE 880 1840 1088 1840
        END BRANCH
        IOMARKER 1104 1712 ClkMicro R0 28
        IOMARKER 1104 1776 ReadyMicro R0 28
        IOMARKER 1088 1840 ResetMicro R0 28
        BEGIN BRANCH HighW
            WIRE 1664 1392 1872 1392
            WIRE 1872 1392 2112 1392
            WIRE 2112 1136 2112 1392
            WIRE 2112 1136 2224 1136
            BEGIN DISPLAY 1872 1392 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH LowW
            WIRE 1664 1536 1888 1536
            WIRE 1888 1536 2176 1536
            WIRE 2176 1216 2240 1216
            WIRE 2176 1216 2176 1536
            BEGIN DISPLAY 1888 1536 ATTR Name
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
        IOMARKER 208 1088 DTR R180 28
    END SHEET
END SCHEMATIC
