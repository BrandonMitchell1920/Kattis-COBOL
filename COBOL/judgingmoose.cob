IDENTIFICATION DIVISION.
    PROGRAM-ID. JudgingMoose.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 INP PIC X(5).
        01 NUM1 PIC 99.
        01 NUM2 PIC 99.
        01 ANS PIC 99.
        01 SPECIAL-CASE PIC 9.

PROCEDURE DIVISION.
    ACCEPT INP
    UNSTRING INP DELIMITED BY SPACE INTO NUM1, NUM2
    IF NUM1 IS EQUAL TO ZERO AND NUM2 IS EQUAL TO ZERO
        DISPLAY "Not a moose"
    END-IF
    IF NUM1 IS EQUAL TO NUM2 AND NUM1 IS NOT EQUAL TO ZERO
        MULTIPLY NUM1 BY 2 GIVING ANS
        IF ANS IS LESS THAN 10
            MOVE ANS TO SPECIAL-CASE
            DISPLAY "Even" SPACE SPECIAL-CASE
        ELSE
            DISPLAY "Even" SPACE ANS
        END-IF
    END-IF
    IF NUM1 IS GREATER THAN NUM2
        MULTIPLY NUM1 BY 2 GIVING ANS
        IF ANS IS LESS THAN 10
            MOVE ANS TO SPECIAL-CASE
            DISPLAY "Odd" SPACE SPECIAL-CASE
        ELSE
            DISPLAY "Odd" SPACE ANS
        END-IF
    END-IF
    IF NUM1 IS LESS THAN NUM2
        MULTIPLY NUM2 BY 2 GIVING ANS
        IF ANS IS LESS THAN 10
            MOVE ANS TO SPECIAL-CASE
            DISPLAY "Odd" SPACE SPECIAL-CASE
        ELSE
            DISPLAY "Odd" SPACE ANS
        END-IF
    END-IF
    STOP RUN.