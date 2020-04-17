IDENTIFICATION DIVISION.
    PROGRAM-ID. HelpAPhDCandidateOut.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 LOOP-NUM PIC 9(4).
        01 INP PIC X(9).
        01 NUM1 PIC 9(4).
        01 NUM2 PIC 9(4).
        01 ANSWER PIC ZZZ9.

PROCEDURE DIVISION.
    ACCEPT LOOP-NUM
    PERFORM PARSE-INPUT LOOP-NUM TIMES
    STOP RUN.
    
PARSE-INPUT.
    ACCEPT INP
    IF INP(1:4) EQUALS "P=NP"
        DISPLAY "skipped"
    ELSE
        UNSTRING INP DELIMITED BY "+" INTO NUM1, NUM2
        ADD NUM1 TO NUM2 GIVING ANSWER
        DISPLAY ANSWER
    END-IF.