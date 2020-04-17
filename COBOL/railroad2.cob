IDENTIFICATION DIVISION.
    PROGRAM-ID. RailRoad.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 INP PIC X(9).
        01 X PIC 9(4).
        01 Y PIC 9(4).

PROCEDURE DIVISION.
    ACCEPT INP
    UNSTRING INP DELIMITED BY SPACE INTO X, Y
    COMPUTE X = X * 4 + Y * 3
    DIVIDE X BY 2 GIVING X REMAINDER Y
    IF Y IS EQUAL TO ZERO
        DISPLAY "possible"
    ELSE
        DISPLAY "impossible"
    END-IF
    STOP RUN.