IDENTIFICATION DIVISION.
    PROGRAM-ID. Pet.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 INP PIC X(9).
        01 A PIC 9.
        01 B PIC 9.
        01 C PIC 9.
        01 D PIC 9.
        01 LOOP-TOTAL PIC 99.
        01 LARGEST-TOTAL PIC 99 VALUE ZEROS.
            88 SINGLE-DIGIT VALUE 0 THRU 9.
        01 CURRENT-PERSON PIC 9.
        01 LARGEST-PERSON PIC 9.
        01 ANSWER PIC 9.

PROCEDURE DIVISION.
    PERFORM VARYING CURRENT-PERSON FROM 1 BY 1 UNTIL CURRENT-PERSON EQUALS 6
        ACCEPT INP
        UNSTRING INP DELIMITED BY SPACE INTO A, B, C, D
        MOVE FUNCTION SUM(A B C D) TO LOOP-TOTAL
        IF LOOP-TOTAL IS GREATER THAN LARGEST-TOTAL
            MOVE LOOP-TOTAL TO LARGEST-TOTAL
            MOVE CURRENT-PERSON TO LARGEST-PERSON
        END-IF
    END-PERFORM
    IF SINGLE-DIGIT
        MOVE LARGEST-TOTAL TO ANSWER
        DISPLAY LARGEST-PERSON SPACE ANSWER
    ELSE
        DISPLAY LARGEST-PERSON SPACE LARGEST-TOTAL
    END-IF
    STOP RUN.