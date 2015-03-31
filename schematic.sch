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
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL ADComp(19:0)
        SIGNAL XLXN_15
        SIGNAL XLXN_16(19:0)
        SIGNAL XLXN_17(19:0)
        SIGNAL XLXN_18(19:0)
        SIGNAL XLXN_19(15:0)
        SIGNAL MIO
        SIGNAL WR
        SIGNAL XLXN_22(19:0)
        SIGNAL XLXN_23(15:0)
        SIGNAL XLXN_24
        SIGNAL XLXN_25
        SIGNAL ADl(15:0)
        SIGNAL Puertos(15:0)
        SIGNAL XLXN_29
        SIGNAL XLXN_30
        SIGNAL XLXN_31
        SIGNAL CHIPs(2:0)
        SIGNAL ADComp(0)
        SIGNAL BHEL
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
        BEGIN BLOCKDEF Latch_De_Direcciones
            TIMESTAMP 2015 3 31 0 34 41
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
            TIMESTAMP 2015 3 31 0 36 50
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF Reg_de_Paginacion
            TIMESTAMP 2015 3 31 0 55 29
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
        BEGIN BLOCK XLXI_4 or2
            PIN I0 WR
            PIN I1 BHEL
            PIN O
        END BLOCK
        BEGIN BLOCK XLXI_5 or2
            PIN I0 ADComp(0)
            PIN I1 WR
            PIN O
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 928 1008 R0
        END INSTANCE
        BEGIN BRANCH ADh(3:0)
            WIRE 752 912 928 912
        END BRANCH
        IOMARKER 752 912 ADh(3:0) R180 28
        BEGIN BRANCH Ale
            WIRE 784 848 928 848
        END BRANCH
        BEGIN BRANCH DTR
            WIRE 816 1216 896 1216
        END BRANCH
        BEGIN BRANCH DEN
            WIRE 816 1280 896 1280
        END BRANCH
        IOMARKER 784 976 ADl(15:0) R180 28
        IOMARKER 784 848 Ale R180 28
        IOMARKER 816 1280 DEN R180 28
        IOMARKER 816 1216 DTR R180 28
        BEGIN INSTANCE XLXI_2 896 1312 R0
        END INSTANCE
        BEGIN BRANCH ADComp(19:0)
            WIRE 1312 848 1328 848
            WIRE 1328 848 1328 976
            WIRE 1328 976 1456 976
            WIRE 1456 976 1600 976
            WIRE 1456 976 1456 1200
            WIRE 1456 1200 1680 1200
        END BRANCH
        BEGIN BRANCH MIO
            WIRE 1552 848 1584 848
            WIRE 1584 848 1600 848
        END BRANCH
        BEGIN BRANCH WR
            WIRE 1552 912 1600 912
        END BRANCH
        IOMARKER 1552 912 WR R180 28
        BEGIN INSTANCE XLXI_3 1600 1072 R0
        END INSTANCE
        IOMARKER 1552 848 MIO R180 28
        BEGIN BRANCH ADl(15:0)
            WIRE 784 976 848 976
            WIRE 848 976 928 976
            WIRE 848 976 848 1088
            WIRE 848 1088 1344 1088
            WIRE 1344 1088 1344 1216
            WIRE 1280 1216 1344 1216
            WIRE 1344 1040 1344 1088
            WIRE 1344 1040 1536 1040
            WIRE 1536 1040 1600 1040
        END BRANCH
        BEGIN BRANCH Puertos(15:0)
            WIRE 1280 1280 1296 1280
            WIRE 1296 1280 1696 1280
        END BRANCH
        IOMARKER 1680 1200 ADComp(19:0) R0 28
        IOMARKER 1696 1280 Puertos(15:0) R0 28
        BEGIN BRANCH CHIPs(2:0)
            WIRE 1984 848 2144 848
        END BRANCH
        IOMARKER 2144 848 CHIPs(2:0) R0 28
        INSTANCE XLXI_4 1344 1488 R0
        INSTANCE XLXI_5 1344 1632 R0
        BEGIN BRANCH WR
            WIRE 992 1472 1008 1472
            WIRE 1008 1472 1328 1472
            WIRE 1328 1472 1328 1504
            WIRE 1328 1504 1344 1504
            WIRE 1328 1424 1344 1424
            WIRE 1328 1424 1328 1472
            BEGIN DISPLAY 1007 1472 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ADComp(0)
            WIRE 976 1568 992 1568
            WIRE 992 1568 1344 1568
            BEGIN DISPLAY 1000 1568 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH BHEL
            WIRE 944 1360 1232 1360
            WIRE 1232 1360 1344 1360
            BEGIN DISPLAY 944 1360 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
            BEGIN DISPLAY 1226 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
