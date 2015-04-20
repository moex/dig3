VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL XLXN_1
        SIGNAL XLXN_2
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_11
        SIGNAL XLXN_13
        SIGNAL XLXN_14
        SIGNAL XLXN_15
        SIGNAL XLXN_16(19:16)
        SIGNAL XLXN_17(15:0)
        BEGIN BLOCKDEF schematic
            TIMESTAMP 2015 4 19 0 27 14
            RECTANGLE N 64 -896 320 0 
            RECTANGLE N 0 -876 64 -852 
            LINE N 64 -864 0 -864 
            LINE N 64 -800 0 -800 
            LINE N 64 -736 0 -736 
            LINE N 64 -672 0 -672 
            LINE N 64 -608 0 -608 
            LINE N 64 -544 0 -544 
            LINE N 64 -480 0 -480 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -876 384 -852 
            LINE N 320 -864 384 -864 
            RECTANGLE N 320 -812 384 -788 
            LINE N 320 -800 384 -800 
            LINE N 320 -736 384 -736 
            LINE N 320 -672 384 -672 
            LINE N 320 -608 384 -608 
            LINE N 320 -544 384 -544 
            LINE N 320 -480 384 -480 
            LINE N 320 -416 384 -416 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
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
        BEGIN BLOCK XLXI_1 schematic
            PIN ADh(3:0) XLXN_16(19:16)
            PIN Ale XLXN_4
            PIN DTR XLXN_6
            PIN DEN XLXN_7
            PIN MIO XLXN_2
            PIN WR XLXN_5
            PIN BHE XLXN_8
            PIN CLK
            PIN ReadyIN
            PIN Reset
            PIN IRQ(7:0)
            PIN INTA XLXN_9
            PIN RD XLXN_1
            PIN ADl(15:0) XLXN_17(15:0)
            PIN Puertos(15:0)
            PIN ADComp(19:0)
            PIN CHIPs(2:0)
            PIN ClkMicro XLXN_11
            PIN ReadyMicro XLXN_15
            PIN ResetMicro XLXN_14
            PIN HighW
            PIN LowW
            PIN HighR
            PIN LowR
            PIN INTR XLXN_13
        END BLOCK
        BEGIN BLOCK XLXI_2 I80c86
            PIN READY XLXN_15
            PIN WR XLXN_5
            PIN ALE XLXN_4
            PIN MIO XLXN_2
            PIN RD XLXN_1
            PIN CLK XLXN_11
            PIN INTR XLXN_13
            PIN INTA XLXN_9
            PIN DEN XLXN_7
            PIN A(19:16) XLXN_16(19:16)
            PIN AD(15:0) XLXN_17(15:0)
            PIN DTR XLXN_6
            PIN BHE XLXN_8
            PIN RESET XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_3 AM29F040
            PIN WE
            PIN CE
            PIN OE
            PIN A(18:0)
            PIN DQ(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 K6T1008
            PIN OE
            PIN WE
            PIN CS
            PIN A(16:0)
            PIN IO(8:1)
        END BLOCK
        BEGIN BLOCK XLXI_5 K6T1008
            PIN OE
            PIN WE
            PIN CS
            PIN A(16:0)
            PIN IO(8:1)
        END BLOCK
        BEGIN BLOCK XLXI_6 K6T1008
            PIN OE
            PIN WE
            PIN CS
            PIN A(16:0)
            PIN IO(8:1)
        END BLOCK
        BEGIN BLOCK XLXI_7 K6T1008
            PIN OE
            PIN WE
            PIN CS
            PIN A(16:0)
            PIN IO(8:1)
        END BLOCK
        BEGIN BLOCK XLXI_8 AM29F040
            PIN WE
            PIN CE
            PIN OE
            PIN A(18:0)
            PIN DQ(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 AM29F040
            PIN WE
            PIN CE
            PIN OE
            PIN A(18:0)
            PIN DQ(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 AM29F040
            PIN WE
            PIN CE
            PIN OE
            PIN A(18:0)
            PIN DQ(8:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 176 1552 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 2176 1088 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 2000 1952 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 2512 1968 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 2064 1584 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 2544 1584 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 2064 560 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_9 2544 592 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_10 2688 1056 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_1 1184 1648 R0
        END INSTANCE
        BEGIN BRANCH XLXN_1
            WIRE 560 1392 864 1392
            WIRE 864 1392 864 1616
            WIRE 864 1616 1184 1616
        END BRANCH
        BEGIN BRANCH XLXN_2
            WIRE 560 832 864 832
            WIRE 864 832 864 1040
            WIRE 864 1040 1184 1040
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 560 912 848 912
            WIRE 848 848 848 912
            WIRE 848 848 1184 848
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 560 864 832 864
            WIRE 832 864 832 1104
            WIRE 832 1104 1184 1104
        END BRANCH
        BEGIN BRANCH XLXN_6
            WIRE 560 1056 880 1056
            WIRE 880 912 880 1056
            WIRE 880 912 1184 912
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 560 1104 816 1104
            WIRE 816 976 816 1104
            WIRE 816 976 1184 976
        END BRANCH
        BEGIN BRANCH XLXN_8
            WIRE 560 1152 864 1152
            WIRE 864 1152 864 1168
            WIRE 864 1168 1184 1168
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 560 1216 880 1216
            WIRE 880 1216 880 1552
            WIRE 880 1552 1184 1552
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 560 1344 640 1344
            WIRE 640 656 1632 656
            WIRE 1632 656 1632 912
            WIRE 640 656 640 1344
            WIRE 1568 912 1632 912
        END BRANCH
        BEGIN BRANCH XLXN_13
            WIRE 560 1280 576 1280
            WIRE 576 1280 576 1728
            WIRE 576 1728 1648 1728
            WIRE 1568 1360 1648 1360
            WIRE 1648 1360 1648 1728
        END BRANCH
        BEGIN BRANCH XLXN_14
            WIRE 96 1392 176 1392
            WIRE 96 1392 96 1712
            WIRE 96 1712 1632 1712
            WIRE 1568 1040 1632 1040
            WIRE 1632 1040 1632 1712
        END BRANCH
        BEGIN BRANCH XLXN_15
            WIRE 160 608 1616 608
            WIRE 1616 608 1616 976
            WIRE 160 608 160 816
            WIRE 160 816 176 816
            WIRE 1568 976 1616 976
        END BRANCH
        BEGIN BRANCH XLXN_16(19:16)
            WIRE 560 960 816 960
            WIRE 816 784 816 960
            WIRE 816 784 1184 784
        END BRANCH
        BEGIN BRANCH XLXN_17(15:0)
            WIRE 560 1008 624 1008
            WIRE 624 1008 624 1696
            WIRE 624 1696 1616 1696
            WIRE 1568 1424 1616 1424
            WIRE 1616 1424 1616 1696
        END BRANCH
    END SHEET
END SCHEMATIC
