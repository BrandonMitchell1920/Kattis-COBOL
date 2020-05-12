IDENTIFICATION DIVISION.
    PROGRAM-ID. TripleTexting.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 INP PIC A(99).
        01 A PIC A(33).
        01 B PIC A(33).
        01 C PIC A(33).
        01 LEN PIC 99.

PROCEDURE DIVISION.
    ACCEPT INP
    INSPECT INP TALLYING LEN FOR TRAILING SPACE
    SUBTRACT LEN FROM +99 GIVING LEN
    MOVE INP(+1:(LEN / +3)) TO A
    MOVE INP((LEN / +3 + +1):(LEN / +3)) TO B
    MOVE INP((LEN / +3 * 2 + +1):LEN) TO C
    IF A IS EQUAL TO B
        DISPLAY A
    ELSE
        DISPLAY C
    END-IF
    STOP RUN.