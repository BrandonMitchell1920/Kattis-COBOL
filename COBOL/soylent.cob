IDENTIFICATION DIVISION.
    PROGRAM-ID. Soylent.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 NUM-CASES PIC 9(4).
        01 CALORIES PIC 9(5).
            88 NO-CAL VALUE ZERO.
        01 ANSWER PIC Z9.

PROCEDURE DIVISION.
    ACCEPT NUM-CASES
    PERFORM NUM-CASES TIMES
        ACCEPT CALORIES
        IF NO-CAL
            DISPLAY ZERO
        ELSE
            IF FUNCTION MOD(CALORIES +400) NOT EQUAL ZERO
                COMPUTE ANSWER = CALORIES / +400 + 1
            ELSE
                COMPUTE ANSWER = CALORIES / +400 
            END-IF
            DISPLAY ANSWER
        END-IF
    END-PERFORM
    STOP RUN.