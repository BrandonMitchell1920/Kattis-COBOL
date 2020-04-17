IDENTIFICATION DIVISION.
    PROGRAM-ID. QuadrantSelction.
    AUTHOR. Brandon Mitchell.

DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 xCoord PIC S9(5).
        01 yCoord PIC S9(5).

PROCEDURE DIVISION.
    ACCEPT xCoord.
    ACCEPT yCoord.
    IF xCoord GREATER THAN ZERO
        IF yCoord GREATER THAN ZERO
            DISPLAY 1
        ELSE
            DISPLAY 4
        END-IF
    ELSE
        IF yCoord GREATER THAN ZERO
            DISPLAY 2
        ELSE
            DISPLAY 3
        END-IF
    END-IF
    STOP RUN.