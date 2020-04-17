IDENTIFICATION DIVISION.
    PROGRAM-ID. QualityAdjustedLifeYear.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 loop PIC 999.
        01 inp PIC x(10).
        01 q PIC 9V9.
        01 y PIC 999V9.
        01 out PIC 9(5)V9(4) VALUE ZEROS.

PROCEDURE DIVISION.
    ACCEPT loop
    PERFORM loop TIMES
        ACCEPT inp
        UNSTRING inp DELIMITED BY SPACE INTO q, y
        COMPUTE out = out + q * y
    END-PERFORM
    DISPLAY out
    STOP RUN.