IDENTIFICATION DIVISION.
    PROGRAM-ID. PizzaCrust.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 INP PIC X(7).
        01 R PIC 999.
        01 C PIC 999.
        01 PERCENT PIC 9(4)V9(9).
        
PROCEDURE DIVISION.
    ACCEPT INP
    UNSTRING INP DELIMITED BY SPACE INTO R, C
    COMPUTE PERCENT = (((R - C) ** +2) / (R ** +2)) * +100
    DISPLAY PERCENT
    STOP RUN.