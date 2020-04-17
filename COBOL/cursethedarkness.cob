IDENTIFICATION DIVISION.
    PROGRAM-ID. CurseTheDarkness.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 CASES PIC 99.
        01 INP PIC X(50).
        01 BOOK-X PIC S9(4)V9(7).
        01 BOOK-Y PIC S9(4)V9(7).
        01 NUM-OF-CANDLES PIC 9(4).
        01 CANDLE-X PIC S9(4)V9(7).
        01 CANDLE-Y PIC S9(4)V9(7).
        01 CANDLES-IN-RANGE PIC 9(4) VALUE ZEROS.
        01 DISTANCE USAGE COMP-2.
        
PROCEDURE DIVISION.
    ACCEPT CASES
    PERFORM CASES TIMES
        ACCEPT INP
        UNSTRING INP DELIMITED BY SPACE INTO BOOK-X, BOOK-Y
        INITIALIZE CANDLES-IN-RANGE
        ACCEPT NUM-OF-CANDLES
        PERFORM NUM-OF-CANDLES TIMES
            ACCEPT INP
            UNSTRING INP DELIMITED BY SPACE INTO CANDLE-X, CANDLE-Y
            COMPUTE DISTANCE = ((BOOK-X - CANDLE-X) ** 2 + 
                (BOOK-Y - CANDLE-Y) ** 2) ** (1 / 2)
            IF DISTANCE IS LESS THAN +8.0
                ADD 1 TO CANDLES-IN-RANGE
            END-IF
        END-PERFORM
        IF CANDLES-IN-RANGE IS NOT ZERO
            DISPLAY "light a candle"
        ELSE
            DISPLAY "curse the darkness"
        END-IF
    END-PERFORM
    STOP RUN.