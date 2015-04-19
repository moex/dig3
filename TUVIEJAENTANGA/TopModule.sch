VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3e"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
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
        BEGIN BLOCK XLXI_1 schematic
            PIN ADh(3:0)
            PIN Ale
            PIN DTR
            PIN DEN
            PIN MIO
            PIN WR
            PIN BHE
            PIN CLK
            PIN ReadyIN
            PIN Reset
            PIN IRQ(7:0)
            PIN INTA
            PIN RD
            PIN ADl(15:0)
            PIN Puertos(15:0)
            PIN ADComp(19:0)
            PIN CHIPs(2:0)
            PIN ClkMicro
            PIN ReadyMicro
            PIN ResetMicro
            PIN HighW
            PIN LowW
            PIN HighR
            PIN LowR
            PIN INTR
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1408 1712 R0
        END INSTANCE
    END SHEET
END SCHEMATIC
