IDENTIFICATION DIVISION.
    PROGRAM-ID. SavingForRetirement.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 INP PIC X(30).
        01 AGE-B PIC 9(5).
        01 RETIRE-B PIC 9(5).
        01 MONEY-B PIC 9(5).
        01 AGE-A PIC 9(5).
        01 MONEY-A PIC 9(5).
        01 SAVINGS-B PIC 9(5).
        01 SAVINGS-A PIC 9(5) VALUE ZERO.
        01 ANSWER PIC Z(4)9.

PROCEDURE DIVISION.
    ACCEPT INP
    UNSTRING INP DELIMITED BY SPACE INTO 
        AGE-B, RETIRE-B, MONEY-B, AGE-A, MONEY-A
    COMPUTE SAVINGS-B = (RETIRE-B - AGE-B) * MONEY-B
    PERFORM UNTIL SAVINGS-A IS GREATER THAN SAVINGS-B
        ADD MONEY-A TO SAVINGS-A
        ADD 1 TO AGE-A
    END-PERFORM
    MOVE AGE-A TO ANSWER
    DISPLAY ANSWER
    STOP RUN.