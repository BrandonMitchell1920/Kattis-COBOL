IDENTIFICATION DIVISION.
    PROGRAM-ID. TakeTwoStones.
    AUTHOR. Brandon Mitchell.

DATA DIVISION.
    WORKING-STORAGE SECTION.
        01 stones PIC 9(8).
        01 remain PIC 9.

PROCEDURE DIVISION.
    ACCEPT stones.
    DIVIDE stones BY 2 GIVING stones REMAINDER remain.
    IF remain = ZERO
        DISPLAY "Bob"
    ELSE
        DISPLAY "Alice"
    END-IF
    STOP RUN.