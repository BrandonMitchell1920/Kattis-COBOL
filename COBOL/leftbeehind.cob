IDENTIFICATION DIVISION.
    PROGRAM-ID. LeftBeehind.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 INP PIC X(9).
        01 SWEET PIC 9(4).
        01 SOUR PIC 9(4).

PROCEDURE DIVISION.
    PERFORM FOREVER
        ACCEPT INP
        UNSTRING INP DELIMITED BY SPACE INTO SWEET, SOUR
        IF SWEET EQUALS SOUR
            IF SWEET EQUALS ZERO  
                EXIT PERFORM
            ELSE
                DISPLAY "Undecided."
            END-IF
        ELSE
            IF FUNCTION SUM(SWEET SOUR) EQUALS 13
                DISPLAY "Never speak again."
            ELSE
                IF SWEET IS GREATER THAN SOUR
                    DISPLAY "To the convention."
                ELSE
                    DISPLAY "Left beehind."
                END-IF
            END-IF
        END-IF
    END-PERFORM
    STOP RUN.