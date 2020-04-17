IDENTIFICATION DIVISION.
    PROGRAM-ID. NumberFun.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 CASES PIC 9(5).
        01 INP PIC X(17).
        01 A PIC 9(5).
        01 B PIC 9(5).
        01 C PIC 9(5).

PROCEDURE DIVISION.
    ACCEPT CASES
    PERFORM CASES TIMES
        ACCEPT INP
        UNSTRING INP DELIMITED BY SPACE INTO A B C
        IF C = A + B OR
               A - B OR
               B - A OR
               A * B OR
               A / B OR
               B / A 
            DISPLAY "Possible"
        ELSE
            DISPLAY "Impossible"
        END-IF
    END-PERFORM
    STOP RUN.