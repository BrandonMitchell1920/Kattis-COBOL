IDENTIFICATION DIVISION.
    PROGRAM-ID. SpeedLimit.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 NUM-CASES PIC S99.
            88 INPUT-OVER VALUE -1.
        01 INP PIC X(5).
        01 SPEED PIC 99.
        01 TIME-IN-SECONDS PIC 99.
        01 STORED-SECONDS PIC 99.
        01 TOTAL PIC 9(5).
        01 FORMATTED-OUTPUT PIC Z(4)9.

PROCEDURE DIVISION.
    PERFORM FOREVER
        ACCEPT NUM-CASES
        IF INPUT-OVER
            EXIT PERFORM
        END-IF
        MOVE ZEROS TO TOTAL, STORED-SECONDS
        PERFORM NUM-CASES TIMES
            ACCEPT INP
            UNSTRING INP DELIMITED BY SPACE INTO SPEED, TIME-IN-SECONDS
            COMPUTE TOTAL = TOTAL + SPEED * (TIME-IN-SECONDS - STORED-SECONDS)
            MOVE TIME-IN-SECONDS TO STORED-SECONDS
        END-PERFORM
        MOVE TOTAL TO FORMATTED-OUTPUT
        DISPLAY FORMATTED-OUTPUT " miles"
    END-PERFORM
    STOP RUN.