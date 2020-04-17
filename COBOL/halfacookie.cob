IDENTIFICATION DIVISION.
    PROGRAM-ID. HalfACookie.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 INP PIC X(50).
            88 EOF VALUE SPACE.
        01 R PIC 99V9(9).
        01 X PIC 99V9(9).
        01 Y PIC 99V9(9).
        01 H PIC 9(6)V9(12).
        01 AREA1 PIC 9(6)V9(12).
        01 AREA2 PIC 9(6)V9(12).
        
PROCEDURE DIVISION.
    PERFORM FOREVER
        ACCEPT INP
        IF EOF EXIT PERFORM END-IF
        UNSTRING INP DELIMITED BY SPACE INTO R X Y
        COMPUTE H = FUNCTION SQRT(((X ** 2) + (Y ** 2)))
        IF H IS GREATER THAN R
            DISPLAY "miss"
        ELSE
            SUBTRACT H FROM R GIVING H
            COMPUTE AREA1 = ((R ** 2) * FUNCTION ACOS(((R - H) / R)) - (R - H) * 
                FUNCTION SQRT((2 * R * H) - (H ** 2)))
            COMPUTE AREA2 = (FUNCTION PI * (R ** 2)) - AREA1
            DISPLAY AREA2 SPACE AREA1
        END-IF
    END-PERFORM
    STOP RUN.