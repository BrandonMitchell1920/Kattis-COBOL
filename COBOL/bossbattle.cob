IDENTIFICATION DIVISION.
    PROGRAM-ID. BossBattle.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 PILLARS PIC 999.
        01 ANSWER PIC ZZ9.

PROCEDURE DIVISION.
    ACCEPT PILLARS
    IF PILLARS IS LESS THAN 4
        DISPLAY 1
    ELSE
        SUBTRACT 2 FROM PILLARS
        MOVE PILLARS TO ANSWER
        DISPLAY ANSWER
    END-IF
    STOP RUN.