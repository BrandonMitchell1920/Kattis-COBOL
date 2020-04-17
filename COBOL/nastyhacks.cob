IDENTIFICATION DIVISION.
    PROGRAM-ID. NastyHacks.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 INP PIC X(50).
        01 N PIC 999.
        01 R PIC S9(9).
        01 E PIC S9(9).
        01 C PIC 9(9).

PROCEDURE DIVISION.
    ACCEPT N
    PERFORM N TIMES
        ACCEPT INP
        UNSTRING INP DELIMITED BY SPACE INTO R, E, C
        SUBTRACT R FROM E
        IF E IS GREATER THAN C
            DISPLAY "advertise"
        END-IF
        IF E IS EQUAL TO C
            DISPLAY "does not matter"
        END-IF
        IF E IS LESS THAN C
            DISPLAY "do not advertise"
        END-IF
    END-PERFORM
    STOP RUN.