      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA03.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77  WRK-RESULTADO   PIC S9(05)V99 VALUE ZEROS.
       77  WRK-RESULTADO-ED   PIC ZZ9,99 VALUE ZEROS.
       77  WRK-VALOR01     PIC S9(05)V99 VALUE ZEROS.
       77  WRK-VALOR02     PIC S9(05)V99 VALUE ZEROS.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       DISPLAY "Digite valor 1"
           ACCEPT WRK-VALOR01.
       DISPLAY "Digite valor 2"
           ACCEPT WRK-VALOR02.

       COMPUTE WRK-RESULTADO = WRK-VALOR01 - WRK-VALOR02.
       MOVE WRK-RESULTADO TO WRK-RESULTADO-ED.
       DISPLAY "Resultado:" WRK-RESULTADO-ED
            STOP RUN.
       END PROGRAM PROGRAMA03.
