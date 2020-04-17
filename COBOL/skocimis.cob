IDENTIFICATION DIVISION.
    PROGRAM-ID. SimonSays.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 INP PIC X(11).
        01 X PIC 999.
        01 Y PIC 999.
        01 Z PIC 999.
        01 ANSWER PIC ZZ9.

PROCEDURE DIVISION.
    ACCEPT INP
    UNSTRING INP DELIMITED BY SPACE INTO X, Y, Z
    SUBTRACT Y, 1 FROM Z
    SUBTRACT X, 1 FROM Y
    IF Y IS GREATER THAN Z
        MOVE Y TO ANSWER
    ELSE
        MOVE Z TO ANSWER
    END-IF
    DISPLAY ANSWER
    STOP RUN.