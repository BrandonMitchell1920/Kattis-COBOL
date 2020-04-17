IDENTIFICATION DIVISION.
    PROGRAM-ID. StuckInATimeLoop.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 repeat PIC 999.
        01 incre PIC 999 VALUE ZERO.
        01 forma PIC ZZ9.
        01 word PIC X(11) VALUE "Abracadabra".
    
PROCEDURE DIVISION.
    ACCEPT repeat
    PERFORM repeat TIMES
        ADD 1 TO incre
        MOVE incre TO forma
        DISPLAY forma SPACE word
    END-PERFORM
    STOP RUN.