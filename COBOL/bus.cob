IDENTIFICATION DIVISION.
    PROGRAM-ID. Bus.
    AUTHOR. Brandon Mitchell.
    
DATA DIVISION.  
    WORKING-STORAGE SECTION.
        01 casesToExecute PIC 9(4).
        01 inputValue PIC 9(10).
        01 outputValue PIC Z(9)9.
    
PROCEDURE DIVISION.
    ACCEPT casesToExecute
    PERFORM casesToExecute TIMES
        ACCEPT inputValue
        COMPUTE outputValue = 2 ** inputValue - 1
        DISPLAY outputValue
    END-PERFORM
    STOP RUN.